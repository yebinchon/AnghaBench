; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_meson-ir.c_meson_ir_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_meson-ir.c_meson_ir_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_ir = type { i32, i32, i64 }
%struct.ir_raw_event = type { i32, i32 }

@IR_DEC_REG1 = common dso_local global i64 0, align 8
@REG1_TIME_IV_MASK = common dso_local global i32 0, align 4
@MESON_TRATE = common dso_local global i32 0, align 4
@IR_DEC_STATUS = common dso_local global i64 0, align 8
@STATUS_IR_DEC_IN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meson_ir_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_ir_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.meson_ir*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.meson_ir*
  store %struct.meson_ir* %10, %struct.meson_ir** %5, align 8
  %11 = bitcast %struct.ir_raw_event* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %13 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %16 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IR_DEC_REG1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl_relaxed(i64 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* @REG1_TIME_IV_MASK, align 4
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @FIELD_GET(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MESON_TRATE, align 4
  %26 = mul nsw i32 %24, %25
  %27 = call i32 @US_TO_NS(i32 %26)
  %28 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %8, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %30 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IR_DEC_STATUS, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @readl_relaxed(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @STATUS_IR_DEC_IN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %44 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ir_raw_event_store_with_timeout(i32 %45, %struct.ir_raw_event* %8)
  %47 = load %struct.meson_ir*, %struct.meson_ir** %5, align 8
  %48 = getelementptr inbounds %struct.meson_ir, %struct.meson_ir* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock(i32* %48)
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @readl_relaxed(i64) #2

declare dso_local i32 @FIELD_GET(i32, i32) #2

declare dso_local i32 @US_TO_NS(i32) #2

declare dso_local i32 @ir_raw_event_store_with_timeout(i32, %struct.ir_raw_event*) #2

declare dso_local i32 @spin_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

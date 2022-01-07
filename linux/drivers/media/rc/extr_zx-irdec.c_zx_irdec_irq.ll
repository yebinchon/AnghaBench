; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_zx-irdec.c_zx_irdec_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_zx-irdec.c_zx_irdec_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zx_irdec = type { i32, i64 }

@ZX_IR_INTSTCLR = common dso_local global i64 0, align 8
@ZX_IR_CNUM = common dso_local global i64 0, align 8
@ZX_NECRPT = common dso_local global i32 0, align 4
@ZX_IR_CODE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zx_irdec_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zx_irdec_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.zx_irdec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.zx_irdec*
  store %struct.zx_irdec* %14, %struct.zx_irdec** %5, align 8
  %15 = load %struct.zx_irdec*, %struct.zx_irdec** %5, align 8
  %16 = getelementptr inbounds %struct.zx_irdec, %struct.zx_irdec* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ZX_IR_INTSTCLR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 1, i64 %19)
  %21 = load %struct.zx_irdec*, %struct.zx_irdec** %5, align 8
  %22 = getelementptr inbounds %struct.zx_irdec, %struct.zx_irdec* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ZX_IR_CNUM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load i32, i32* @ZX_NECRPT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.zx_irdec*, %struct.zx_irdec** %5, align 8
  %32 = getelementptr inbounds %struct.zx_irdec, %struct.zx_irdec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @rc_repeat(i32 %33)
  br label %64

35:                                               ; preds = %2
  %36 = load %struct.zx_irdec*, %struct.zx_irdec** %5, align 8
  %37 = getelementptr inbounds %struct.zx_irdec, %struct.zx_irdec* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ZX_IR_CODE, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = ashr i32 %42, 24
  %44 = and i32 %43, 255
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 255
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 8
  %50 = and i32 %49, 255
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, 255
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @ir_nec_bytes_to_scancode(i32 %53, i32 %54, i32 %55, i32 %56, i32* %12)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.zx_irdec*, %struct.zx_irdec** %5, align 8
  %59 = getelementptr inbounds %struct.zx_irdec, %struct.zx_irdec* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %11, align 4
  %63 = call i32 @rc_keydown(i32 %60, i32 %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %35, %30
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @rc_repeat(i32) #1

declare dso_local i32 @ir_nec_bytes_to_scancode(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rc_keydown(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

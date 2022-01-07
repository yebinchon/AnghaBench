; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_symbol_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_symbol_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_symbol_timing = type { %struct.img_ir_timing_range, %struct.TYPE_2__ }
%struct.img_ir_timing_range = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IMG_IR_PD_MAX_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_PD_MIN_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_W_MAX_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_W_MIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_ir_symbol_timing*, i32, i64, i32, i32)* @img_ir_symbol_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_symbol_timing(%struct.img_ir_symbol_timing* %0, i32 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.img_ir_symbol_timing*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.img_ir_timing_range, align 4
  %12 = alloca %struct.img_ir_timing_range, align 4
  store %struct.img_ir_symbol_timing* %0, %struct.img_ir_symbol_timing** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %6, align 8
  %14 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %6, align 8
  %18 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  %22 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %12, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %6, align 8
  %24 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %6, align 8
  %28 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %26, %30
  %32 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %12, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @img_ir_timing_range_convert(%struct.img_ir_timing_range* %12, %struct.img_ir_timing_range* %12, i32 %33, i64 %34, i32 %35)
  %37 = load %struct.img_ir_symbol_timing*, %struct.img_ir_symbol_timing** %6, align 8
  %38 = getelementptr inbounds %struct.img_ir_symbol_timing, %struct.img_ir_symbol_timing* %37, i32 0, i32 0
  %39 = load i32, i32* %7, align 4
  %40 = load i64, i64* %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @img_ir_timing_range_convert(%struct.img_ir_timing_range* %11, %struct.img_ir_timing_range* %38, i32 %39, i64 %40, i32 %41)
  %43 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %12, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @IMG_IR_PD_MAX_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %12, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @IMG_IR_PD_MIN_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %46, %50
  %52 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IMG_IR_W_MAX_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = or i32 %51, %55
  %57 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %11, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IMG_IR_W_MIN_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %56, %60
  ret i32 %61
}

declare dso_local i32 @img_ir_timing_range_convert(%struct.img_ir_timing_range*, %struct.img_ir_timing_range*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

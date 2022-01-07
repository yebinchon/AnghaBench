; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_set_max_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_set_max_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { i32 }

@VPDMA_MAX_SIZE1 = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE2 = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE3 = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE_WIDTH_MASK = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE_WIDTH_SHFT = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE_HEIGHT_MASK = common dso_local global i32 0, align 4
@VPDMA_MAX_SIZE_HEIGHT_SHFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_set_max_size(%struct.vpdma_data* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.vpdma_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.vpdma_data* %0, %struct.vpdma_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @VPDMA_MAX_SIZE1, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %22

12:                                               ; preds = %4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @VPDMA_MAX_SIZE2, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @VPDMA_MAX_SIZE3, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @VPDMA_MAX_SIZE1, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %20, %16, %12, %4
  %23 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i64, i64* %7, align 8
  %26 = sub nsw i64 %25, 1
  %27 = load i32, i32* @VPDMA_MAX_SIZE_WIDTH_MASK, align 4
  %28 = load i32, i32* @VPDMA_MAX_SIZE_WIDTH_SHFT, align 4
  %29 = call i32 @write_field_reg(%struct.vpdma_data* %23, i32 %24, i64 %26, i32 %27, i32 %28)
  %30 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i64, i64* %8, align 8
  %33 = sub nsw i64 %32, 1
  %34 = load i32, i32* @VPDMA_MAX_SIZE_HEIGHT_MASK, align 4
  %35 = load i32, i32* @VPDMA_MAX_SIZE_HEIGHT_SHFT, align 4
  %36 = call i32 @write_field_reg(%struct.vpdma_data* %30, i32 %31, i64 %33, i32 %34, i32 %35)
  ret void
}

declare dso_local i32 @write_field_reg(%struct.vpdma_data*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

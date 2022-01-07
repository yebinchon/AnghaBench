; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_get_list_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_get_list_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { i32 }

@VPDMA_INT_LIST0_MASK = common dso_local global i64 0, align 8
@VPDMA_INTX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpdma_get_list_mask(%struct.vpdma_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vpdma_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.vpdma_data* %0, %struct.vpdma_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* @VPDMA_INT_LIST0_MASK, align 8
  %7 = load i32, i32* @VPDMA_INTX_OFFSET, align 4
  %8 = load i32, i32* %4, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %6, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.vpdma_data*, %struct.vpdma_data** %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @read_reg(%struct.vpdma_data* %12, i64 %13)
  ret i32 %14
}

declare dso_local i32 @read_reg(%struct.vpdma_data*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

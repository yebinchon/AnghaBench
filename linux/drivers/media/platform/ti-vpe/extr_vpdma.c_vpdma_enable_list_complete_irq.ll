; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_enable_list_complete_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_enable_list_complete_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { i32 }

@VPDMA_INT_LIST0_MASK = common dso_local global i32 0, align 4
@VPDMA_INTX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_enable_list_complete_irq(%struct.vpdma_data* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vpdma_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vpdma_data* %0, %struct.vpdma_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* @VPDMA_INT_LIST0_MASK, align 4
  %12 = load i32, i32* @VPDMA_INTX_OFFSET, align 4
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 %12, %13
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @read_reg(%struct.vpdma_data* %16, i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 2
  %24 = shl i32 1, %23
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %10, align 4
  br label %34

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = mul nsw i32 %28, 2
  %30 = shl i32 1, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %27, %21
  %35 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @write_reg(%struct.vpdma_data* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @read_reg(%struct.vpdma_data*, i32) #1

declare dso_local i32 @write_reg(%struct.vpdma_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

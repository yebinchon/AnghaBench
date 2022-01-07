; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_dma_alloc_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-desc.c_xgbe_dma_alloc_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.device*, i64, i32*, i32)* @xgbe_dma_alloc_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xgbe_dma_alloc_node(%struct.device* %0, i64 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call i32 @dev_to_node(%struct.device* %11)
  store i32 %12, i32* %10, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @set_dev_node(%struct.device* %13, i32 %14)
  %16 = load %struct.device*, %struct.device** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @dma_alloc_coherent(%struct.device* %16, i64 %17, i32* %18, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load %struct.device*, %struct.device** %5, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @set_dev_node(%struct.device* %21, i32 %22)
  %24 = load i8*, i8** %9, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %4
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load i64, i64* %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @dma_alloc_coherent(%struct.device* %27, i64 %28, i32* %29, i32 %30)
  store i8* %31, i8** %9, align 8
  br label %32

32:                                               ; preds = %26, %4
  %33 = load i8*, i8** %9, align 8
  ret i8* %33
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

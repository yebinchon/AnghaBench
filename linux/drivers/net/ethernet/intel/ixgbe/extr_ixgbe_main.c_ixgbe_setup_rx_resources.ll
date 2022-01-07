; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32 }
%struct.ixgbe_ring = type { i32, i32, i32*, i32, i32, i32, i64, i64, i8*, i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for the Rx descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_rx_resources(%struct.ixgbe_adapter* %0, %struct.ixgbe_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbe_adapter*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %4, align 8
  store %struct.ixgbe_ring* %1, %struct.ixgbe_ring** %5, align 8
  %10 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %11 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %10, i32 0, i32 11
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call i32 @dev_to_node(%struct.device* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %17 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %22, i32 0, i32 10
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp ne %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %28 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %27, i32 0, i32 10
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %8, align 4
  %35 = call i32* @vmalloc_node(i32 %33, i32 %34)
  %36 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %37 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %9, align 4
  %44 = call i32* @vmalloc(i32 %43)
  %45 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %46 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %45, i32 0, i32 2
  store i32* %44, i32** %46, align 8
  br label %47

47:                                               ; preds = %42, %32
  %48 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %49 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %127

53:                                               ; preds = %47
  %54 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %55 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %61 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %63 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ALIGN(i32 %64, i32 4096)
  %66 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %67 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load %struct.device*, %struct.device** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @set_dev_node(%struct.device* %68, i32 %69)
  %71 = load %struct.device*, %struct.device** %6, align 8
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %73 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %76 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %75, i32 0, i32 9
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dma_alloc_coherent(%struct.device* %71, i32 %74, i32* %76, i32 %77)
  %79 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %80 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %79, i32 0, i32 8
  store i8* %78, i8** %80, align 8
  %81 = load %struct.device*, %struct.device** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @set_dev_node(%struct.device* %81, i32 %82)
  %84 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %85 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %84, i32 0, i32 8
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %99, label %88

88:                                               ; preds = %53
  %89 = load %struct.device*, %struct.device** %6, align 8
  %90 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %91 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %94 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %93, i32 0, i32 9
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @dma_alloc_coherent(%struct.device* %89, i32 %92, i32* %94, i32 %95)
  %97 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %98 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %97, i32 0, i32 8
  store i8* %96, i8** %98, align 8
  br label %99

99:                                               ; preds = %88, %53
  %100 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %101 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %100, i32 0, i32 8
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  br label %127

105:                                              ; preds = %99
  %106 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %107 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %106, i32 0, i32 7
  store i64 0, i64* %107, align 8
  %108 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %109 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %108, i32 0, i32 6
  store i64 0, i64* %109, align 8
  %110 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %111 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %110, i32 0, i32 5
  %112 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %113 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %116 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i64 @xdp_rxq_info_reg(i32* %111, i32 %114, i32 %117)
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %105
  br label %127

121:                                              ; preds = %105
  %122 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %4, align 8
  %123 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %126 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 8
  store i32 0, i32* %3, align 4
  br label %138

127:                                              ; preds = %120, %104, %52
  %128 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %129 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @vfree(i32* %130)
  %132 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %133 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %132, i32 0, i32 2
  store i32* null, i32** %133, align 8
  %134 = load %struct.device*, %struct.device** %6, align 8
  %135 = call i32 @dev_err(%struct.device* %134, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %127, %121
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32* @vmalloc_node(i32, i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i64 @xdp_rxq_info_reg(i32*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

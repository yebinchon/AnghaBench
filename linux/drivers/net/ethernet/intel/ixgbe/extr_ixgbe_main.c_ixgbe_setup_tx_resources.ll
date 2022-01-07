; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_ring = type { i32, i32, i32*, i64, i64, i8*, i32, %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@NUMA_NO_NODE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for the Tx descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_tx_resources(%struct.ixgbe_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %3, align 8
  %8 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %9 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %8, i32 0, i32 8
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call i32 @dev_to_node(%struct.device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @NUMA_NO_NODE, align 4
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 4, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %20, i32 0, i32 7
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %25, i32 0, i32 7
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %24, %1
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32* @vmalloc_node(i32 %31, i32 %32)
  %34 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %35 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %34, i32 0, i32 2
  store i32* %33, i32** %35, align 8
  %36 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %37 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %30
  %41 = load i32, i32* %7, align 4
  %42 = call i32* @vmalloc(i32 %41)
  %43 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %43, i32 0, i32 2
  store i32* %42, i32** %44, align 8
  br label %45

45:                                               ; preds = %40, %30
  %46 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  br label %108

51:                                               ; preds = %45
  %52 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %53 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = trunc i64 %56 to i32
  %58 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %59 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %61 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ALIGN(i32 %62, i32 4096)
  %64 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.device*, %struct.device** %4, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @set_dev_node(%struct.device* %66, i32 %67)
  %69 = load %struct.device*, %struct.device** %4, align 8
  %70 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %71 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %73, i32 0, i32 6
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call i8* @dma_alloc_coherent(%struct.device* %69, i32 %72, i32* %74, i32 %75)
  %77 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %78 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %77, i32 0, i32 5
  store i8* %76, i8** %78, align 8
  %79 = load %struct.device*, %struct.device** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @set_dev_node(%struct.device* %79, i32 %80)
  %82 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %82, i32 0, i32 5
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %97, label %86

86:                                               ; preds = %51
  %87 = load %struct.device*, %struct.device** %4, align 8
  %88 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %89 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %92 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %91, i32 0, i32 6
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @dma_alloc_coherent(%struct.device* %87, i32 %90, i32* %92, i32 %93)
  %95 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %86, %51
  %98 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %98, i32 0, i32 5
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %103, label %102

102:                                              ; preds = %97
  br label %108

103:                                              ; preds = %97
  %104 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %105 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %107 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %106, i32 0, i32 3
  store i64 0, i64* %107, align 8
  store i32 0, i32* %2, align 4
  br label %119

108:                                              ; preds = %102, %50
  %109 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %110 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %109, i32 0, i32 2
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @vfree(i32* %111)
  %113 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %3, align 8
  %114 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %113, i32 0, i32 2
  store i32* null, i32** %114, align 8
  %115 = load %struct.device*, %struct.device** %4, align 8
  %116 = call i32 @dev_err(%struct.device* %115, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %108, %103
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @dev_to_node(%struct.device*) #1

declare dso_local i32* @vmalloc_node(i32, i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @set_dev_node(%struct.device*, i32) #1

declare dso_local i8* @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

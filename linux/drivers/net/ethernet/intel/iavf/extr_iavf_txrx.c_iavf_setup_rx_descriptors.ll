; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_setup_rx_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_txrx.c_iavf_setup_rx_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iavf_ring = type { i32, i32, i32*, i64, i64, i64, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unable to allocate memory for the Rx descriptor ring, size=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iavf_setup_rx_descriptors(%struct.iavf_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iavf_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.iavf_ring* %0, %struct.iavf_ring** %3, align 8
  %6 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %7 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %6, i32 0, i32 9
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %10 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @WARN_ON(i32* %11)
  %13 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %14 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = mul i64 4, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32* @kzalloc(i32 %19, i32 %20)
  %22 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %23 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %22, i32 0, i32 2
  store i32* %21, i32** %23, align 8
  %24 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %25 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %1
  br label %74

29:                                               ; preds = %1
  %30 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %31 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %30, i32 0, i32 8
  %32 = call i32 @u64_stats_init(i32* %31)
  %33 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %34 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %40 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %42 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ALIGN(i32 %43, i32 4096)
  %45 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %46 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %49 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %52 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %51, i32 0, i32 7
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @dma_alloc_coherent(%struct.device* %47, i32 %50, i32* %52, i32 %53)
  %55 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %56 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 8
  %57 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %58 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %29
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %64 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_info(%struct.device* %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %74

67:                                               ; preds = %29
  %68 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %69 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %68, i32 0, i32 5
  store i64 0, i64* %69, align 8
  %70 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %71 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %70, i32 0, i32 4
  store i64 0, i64* %71, align 8
  %72 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %73 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %72, i32 0, i32 3
  store i64 0, i64* %73, align 8
  store i32 0, i32* %2, align 4
  br label %83

74:                                               ; preds = %61, %28
  %75 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %76 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @kfree(i32* %77)
  %79 = load %struct.iavf_ring*, %struct.iavf_ring** %3, align 8
  %80 = getelementptr inbounds %struct.iavf_ring, %struct.iavf_ring* %79, i32 0, i32 2
  store i32* null, i32** %80, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

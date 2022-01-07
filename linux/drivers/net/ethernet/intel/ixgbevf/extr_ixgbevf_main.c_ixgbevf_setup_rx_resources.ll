; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i32 }
%struct.ixgbevf_ring = type { i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for the Rx descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_setup_rx_resources(%struct.ixgbevf_adapter* %0, %struct.ixgbevf_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca %struct.ixgbevf_ring*, align 8
  %6 = alloca i32, align 4
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %4, align 8
  store %struct.ixgbevf_ring* %1, %struct.ixgbevf_ring** %5, align 8
  %7 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %8 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32* @vmalloc(i32 %13)
  %15 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %15, i32 0, i32 3
  store i32* %14, i32** %16, align 8
  %17 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %18 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %17, i32 0, i32 3
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %75

22:                                               ; preds = %2
  %23 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %24 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %23, i32 0, i32 9
  %25 = call i32 @u64_stats_init(i32* %24)
  %26 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ALIGN(i32 %36, i32 4096)
  %38 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %39 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %46, i32 0, i32 8
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @dma_alloc_coherent(i32 %42, i32 %45, i32* %47, i32 %48)
  %50 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %51 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %50, i32 0, i32 7
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %22
  br label %75

57:                                               ; preds = %22
  %58 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %58, i32 0, i32 6
  %60 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %64 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @xdp_rxq_info_reg(i32* %59, i32 %62, i32 %65)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %75

69:                                               ; preds = %57
  %70 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %74 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %3, align 4
  br label %88

75:                                               ; preds = %68, %56, %21
  %76 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %77 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @vfree(i32* %78)
  %80 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %81 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %80, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %5, align 8
  %83 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_err(i32 %84, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ENOMEM, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %75, %69
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i64 @xdp_rxq_info_reg(i32*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

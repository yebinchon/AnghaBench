; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_ring = type { i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.ixgbevf_adapter = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbevf_setup_tx_resources(%struct.ixgbevf_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbevf_ring*, align 8
  %4 = alloca %struct.ixgbevf_adapter*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %3, align 8
  %6 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %6, i32 0, i32 7
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.ixgbevf_adapter* @netdev_priv(i32 %8)
  store %struct.ixgbevf_adapter* %9, %struct.ixgbevf_adapter** %4, align 8
  %10 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @vmalloc(i32 %16)
  %18 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %21 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %61

25:                                               ; preds = %1
  %26 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %26, i32 0, i32 6
  %28 = call i32 @u64_stats_init(i32* %27)
  %29 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %36 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ALIGN(i32 %39, i32 4096)
  %41 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %44 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %47 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %50 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %49, i32 0, i32 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @dma_alloc_coherent(i32 %45, i32 %48, i32* %50, i32 %51)
  %53 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %54 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %25
  br label %61

60:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %73

61:                                               ; preds = %59, %24
  %62 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @vfree(i32* %64)
  %66 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %3, align 8
  %67 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %4, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %68, i32 0, i32 0
  %70 = call i32 @hw_dbg(i32* %69, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %61, %60
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(i32) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @hw_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_ring = type { i32, i32, i32*, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fm10k_setup_rx_resources(%struct.fm10k_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.fm10k_ring* %0, %struct.fm10k_ring** %3, align 8
  %6 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %7 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %6, i32 0, i32 6
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @vzalloc(i32 %15)
  %17 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %18 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %17, i32 0, i32 2
  store i32* %16, i32** %18, align 8
  %19 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %20 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %26 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %25, i32 0, i32 5
  %27 = call i32 @u64_stats_init(i32* %26)
  %28 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %29 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %35 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %37 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ALIGN(i32 %38, i32 4096)
  %40 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %41 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %44 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %47 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %46, i32 0, i32 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @dma_alloc_coherent(%struct.device* %42, i32 %45, i32* %47, i32 %48)
  %50 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %51 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %53 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %24
  br label %58

57:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %67

58:                                               ; preds = %56, %23
  %59 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %60 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @vfree(i32* %61)
  %63 = load %struct.fm10k_ring*, %struct.fm10k_ring** %3, align 8
  %64 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %58, %57
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @u64_stats_init(i32*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

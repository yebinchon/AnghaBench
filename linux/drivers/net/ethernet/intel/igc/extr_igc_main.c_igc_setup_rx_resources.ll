; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_rx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_rx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i32, i32, i32*, i64, i64, i64, i32, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Unable to allocate memory for the receive descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_setup_rx_resources(%struct.igc_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igc_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igc_ring* %0, %struct.igc_ring** %3, align 8
  %7 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %8 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %7, i32 0, i32 8
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %11 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32* @vzalloc(i32 %16)
  %18 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %19 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %18, i32 0, i32 2
  store i32* %17, i32** %19, align 8
  %20 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %21 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  br label %61

25:                                               ; preds = %1
  store i32 4, i32* %6, align 4
  %26 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %27 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %32 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %34 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ALIGN(i32 %35, i32 4096)
  %37 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %38 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device*, %struct.device** %4, align 8
  %40 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %41 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %44 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %43, i32 0, i32 7
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @dma_alloc_coherent(%struct.device* %39, i32 %42, i32* %44, i32 %45)
  %47 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %48 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %50 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %25
  br label %61

54:                                               ; preds = %25
  %55 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %56 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %58 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %60 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %59, i32 0, i32 3
  store i64 0, i64* %60, align 8
  store i32 0, i32* %2, align 4
  br label %72

61:                                               ; preds = %53, %24
  %62 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %63 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @vfree(i32* %64)
  %66 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %67 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %66, i32 0, i32 2
  store i32* null, i32** %67, align 8
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %61, %54
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_setup_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_ring = type { i32, i32, i32, i64, i64, i32, i32, %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Unable to allocate memory for the transmit descriptor ring\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igc_setup_tx_resources(%struct.igc_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igc_ring*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.igc_ring* %0, %struct.igc_ring** %3, align 8
  %6 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %7 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %6, i32 0, i32 7
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %10 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = mul i64 4, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @vzalloc(i32 %15)
  %17 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %18 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 8
  %19 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %20 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %59

24:                                               ; preds = %1
  %25 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %26 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = trunc i64 %29 to i32
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
  %44 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %43, i32 0, i32 6
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i32 @dma_alloc_coherent(%struct.device* %39, i32 %42, i32* %44, i32 %45)
  %47 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %48 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %47, i32 0, i32 5
  store i32 %46, i32* %48, align 8
  %49 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %50 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %24
  br label %59

54:                                               ; preds = %24
  %55 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %56 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %55, i32 0, i32 4
  store i64 0, i64* %56, align 8
  %57 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %58 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %57, i32 0, i32 3
  store i64 0, i64* %58, align 8
  store i32 0, i32* %2, align 4
  br label %68

59:                                               ; preds = %53, %23
  %60 = load %struct.igc_ring*, %struct.igc_ring** %3, align 8
  %61 = getelementptr inbounds %struct.igc_ring, %struct.igc_ring* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @vfree(i32 %62)
  %64 = load %struct.device*, %struct.device** %4, align 8
  %65 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %54
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @vzalloc(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

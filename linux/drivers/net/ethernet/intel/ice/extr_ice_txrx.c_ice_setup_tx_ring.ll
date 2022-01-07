; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_setup_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_txrx.c_ice_setup_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_ring = type { i32, i32*, %struct.TYPE_2__, i64, i64, i32, i32, i32, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Unable to allocate memory for the Tx descriptor ring, size=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_setup_tx_ring(%struct.ice_ring* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_ring*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.ice_ring* %0, %struct.ice_ring** %3, align 8
  %5 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %6 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %5, i32 0, i32 8
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %85

13:                                               ; preds = %1
  %14 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %15 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @WARN_ON(i32* %16)
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 4, %22
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32* @devm_kzalloc(%struct.device* %18, i32 %24, i32 %25)
  %27 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %28 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %30 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %13
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %85

36:                                               ; preds = %13
  %37 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %38 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @ALIGN(i32 %42, i32 %43)
  %45 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %46 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 8
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %49 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %52 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %51, i32 0, i32 7
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @dmam_alloc_coherent(%struct.device* %47, i32 %50, i32* %52, i32 %53)
  %55 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %56 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %55, i32 0, i32 6
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %58 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %36
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %64 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %65)
  br label %75

67:                                               ; preds = %36
  %68 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %69 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %71 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %70, i32 0, i32 3
  store i64 0, i64* %71, align 8
  %72 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %73 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %85

75:                                               ; preds = %61
  %76 = load %struct.device*, %struct.device** %4, align 8
  %77 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %78 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @devm_kfree(%struct.device* %76, i32* %79)
  %81 = load %struct.ice_ring*, %struct.ice_ring** %3, align 8
  %82 = getelementptr inbounds %struct.ice_ring, %struct.ice_ring* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %75, %67, %33, %10
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local i32 @WARN_ON(i32*) #1

declare dso_local i32* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dmam_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @devm_kfree(%struct.device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

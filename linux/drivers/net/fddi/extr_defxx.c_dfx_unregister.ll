; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@DFX_MMIO = common dso_local global i64 0, align 8
@PI_CMD_REQ_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_CMD_RSP_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_RCV_DATA_K_SIZE_MAX = common dso_local global i32 0, align 4
@PI_ALIGN_K_DESC_BLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @dfx_unregister to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dfx_unregister(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i64], align 16
  %9 = alloca [3 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %11 = load %struct.device*, %struct.device** %2, align 8
  %12 = call %struct.net_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.net_device* %12, %struct.net_device** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %13)
  store %struct.TYPE_5__* %14, %struct.TYPE_5__** %4, align 8
  %15 = load %struct.device*, %struct.device** %2, align 8
  %16 = call i32 @dev_is_pci(%struct.device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.device*, %struct.device** %2, align 8
  %18 = call i32 @DFX_BUS_TC(%struct.device* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* @DFX_MMIO, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br label %24

24:                                               ; preds = %21, %1
  %25 = phi i1 [ true, %1 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %7, align 4
  %27 = bitcast [3 x i64]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %27, i8 0, i64 24, i1 false)
  %28 = bitcast [3 x i64]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %28, i8 0, i64 24, i1 false)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @unregister_netdev(%struct.net_device* %29)
  %31 = load i32, i32* @PI_CMD_REQ_K_SIZE_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 4, %32
  %34 = load i32, i32* @PI_CMD_RSP_K_SIZE_MAX, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PI_RCV_DATA_K_SIZE_MAX, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = add i64 %36, %42
  %44 = add i64 %43, 4
  %45 = load i32, i32* @PI_ALIGN_K_DESC_BLK, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = add i64 %44, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %10, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %24
  %55 = load %struct.device*, %struct.device** %2, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dma_free_coherent(%struct.device* %55, i32 %56, i64 %59, i32 %62)
  br label %64

64:                                               ; preds = %54, %24
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @dfx_bus_uninit(%struct.net_device* %65)
  %67 = load %struct.device*, %struct.device** %2, align 8
  %68 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %69 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %70 = call i32 @dfx_get_bars(%struct.device* %67, i64* %68, i64* %69)
  %71 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %72 = load i64, i64* %71, align 16
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 2
  %76 = load i64, i64* %75, align 16
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 2
  %78 = load i64, i64* %77, align 16
  %79 = call i32 @release_region(i64 %76, i64 %78)
  br label %80

80:                                               ; preds = %74, %64
  %81 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 1
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @release_region(i64 %86, i64 %88)
  br label %90

90:                                               ; preds = %84, %80
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @iounmap(i32 %97)
  %99 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %100 = load i64, i64* %99, align 16
  %101 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %102 = load i64, i64* %101, align 16
  %103 = call i32 @release_mem_region(i64 %100, i64 %102)
  br label %110

104:                                              ; preds = %90
  %105 = getelementptr inbounds [3 x i64], [3 x i64]* %8, i64 0, i64 0
  %106 = load i64, i64* %105, align 16
  %107 = getelementptr inbounds [3 x i64], [3 x i64]* %9, i64 0, i64 0
  %108 = load i64, i64* %107, align 16
  %109 = call i32 @release_region(i64 %106, i64 %108)
  br label %110

110:                                              ; preds = %104, %93
  %111 = load i32, i32* %5, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.device*, %struct.device** %2, align 8
  %115 = call i32 @to_pci_dev(%struct.device* %114)
  %116 = call i32 @pci_disable_device(i32 %115)
  br label %117

117:                                              ; preds = %113, %110
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = call i32 @free_netdev(%struct.net_device* %118)
  ret void
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @DFX_BUS_TC(%struct.device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i64, i32) #1

declare dso_local i32 @dfx_bus_uninit(%struct.net_device*) #1

declare dso_local i32 @dfx_get_bars(%struct.device*, i64*, i64*) #1

declare dso_local i32 @release_region(i64, i64) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @release_mem_region(i64, i64) #1

declare dso_local i32 @pci_disable_device(i32) #1

declare dso_local i32 @to_pci_dev(%struct.device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

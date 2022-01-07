; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_desired_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_get_desired_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iommu_table = type { i32 }

@IBMVNIC_IO_ENTITLEMENT_DEFAULT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vio_dev*)* @ibmvnic_get_desired_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmvnic_get_desired_dma(%struct.vio_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ibmvnic_adapter*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %9 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %10 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %9, i32 0, i32 0
  %11 = call %struct.net_device* @dev_get_drvdata(i32* %10)
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  store i64 0, i64* %7, align 8
  %12 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %13 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %12, i32 0, i32 0
  %14 = call %struct.iommu_table* @get_iommu_table_base(i32* %13)
  store %struct.iommu_table* %14, %struct.iommu_table** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = icmp ne %struct.net_device* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @IBMVNIC_IO_ENTITLEMENT_DEFAULT, align 4
  %19 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %20 = call i64 @IOMMU_PAGE_ALIGN(i32 %18, %struct.iommu_table* %19)
  store i64 %20, i64* %2, align 8
  br label %86

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %22)
  store %struct.ibmvnic_adapter* %23, %struct.ibmvnic_adapter** %5, align 8
  %24 = load i64, i64* @PAGE_SIZE, align 8
  %25 = load i64, i64* %7, align 8
  %26 = add i64 %25, %24
  store i64 %26, i64* %7, align 8
  %27 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %28 = call i64 @IOMMU_PAGE_ALIGN(i32 4, %struct.iommu_table* %27)
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, %28
  store i64 %30, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %46, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = icmp slt i32 %32, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %31
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = mul i64 4, %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %31

49:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %50

50:                                               ; preds = %81, %49
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %52, i32 0, i32 3
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = icmp slt i32 %51, %57
  br i1 %58, label %59, label %84

59:                                               ; preds = %50
  %60 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %61 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %77 = call i64 @IOMMU_PAGE_ALIGN(i32 %75, %struct.iommu_table* %76)
  %78 = mul i64 %67, %77
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, %78
  store i64 %80, i64* %7, align 8
  br label %81

81:                                               ; preds = %59
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %50

84:                                               ; preds = %50
  %85 = load i64, i64* %7, align 8
  store i64 %85, i64* %2, align 8
  br label %86

86:                                               ; preds = %84, %17
  %87 = load i64, i64* %2, align 8
  ret i64 %87
}

declare dso_local %struct.net_device* @dev_get_drvdata(i32*) #1

declare dso_local %struct.iommu_table* @get_iommu_table_base(i32*) #1

declare dso_local i64 @IOMMU_PAGE_ALIGN(i32, %struct.iommu_table*) #1

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

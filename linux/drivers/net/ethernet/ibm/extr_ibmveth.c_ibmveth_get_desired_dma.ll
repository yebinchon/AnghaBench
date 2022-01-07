; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_get_desired_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_get_desired_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64 }
%struct.iommu_table = type { i32 }

@IBMVETH_IO_ENTITLEMENT_DEFAULT = common dso_local global i32 0, align 4
@IBMVETH_BUFF_LIST_SIZE = common dso_local global i64 0, align 8
@IBMVETH_FILT_LIST_SIZE = common dso_local global i64 0, align 8
@IBMVETH_NUM_BUFF_POOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vio_dev*)* @ibmveth_get_desired_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ibmveth_get_desired_dma(%struct.vio_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.vio_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vio_dev* %0, %struct.vio_dev** %3, align 8
  %10 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %11 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %10, i32 0, i32 0
  %12 = call %struct.net_device* @dev_get_drvdata(i32* %11)
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  store i32 1, i32* %9, align 4
  %13 = load %struct.vio_dev*, %struct.vio_dev** %3, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 0
  %15 = call %struct.iommu_table* @get_iommu_table_base(i32* %14)
  store %struct.iommu_table* %15, %struct.iommu_table** %6, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = icmp eq %struct.net_device* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @IBMVETH_IO_ENTITLEMENT_DEFAULT, align 4
  %20 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %21 = call i64 @IOMMU_PAGE_ALIGN(i32 %19, %struct.iommu_table* %20)
  store i64 %21, i64* %2, align 8
  br label %97

22:                                               ; preds = %1
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %23)
  store %struct.ibmveth_adapter* %24, %struct.ibmveth_adapter** %5, align 8
  %25 = load i64, i64* @IBMVETH_BUFF_LIST_SIZE, align 8
  %26 = load i64, i64* @IBMVETH_FILT_LIST_SIZE, align 8
  %27 = add i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.net_device*, %struct.net_device** %4, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %32 = call i64 @IOMMU_PAGE_ALIGN(i32 %30, %struct.iommu_table* %31)
  %33 = load i64, i64* %7, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %84, %22
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @IBMVETH_NUM_BUFF_POOLS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %87

39:                                               ; preds = %35
  %40 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %41 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %39
  %50 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %51 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %67 = call i64 @IOMMU_PAGE_ALIGN(i32 %65, %struct.iommu_table* %66)
  %68 = mul i64 %57, %67
  %69 = load i64, i64* %7, align 8
  %70 = add i64 %69, %68
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %49, %39
  %72 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %73 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %72, i32 0, i32 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = add i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %9, align 4
  br label %84

84:                                               ; preds = %71
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %8, align 4
  br label %35

87:                                               ; preds = %35
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = mul i64 %89, 4
  %91 = trunc i64 %90 to i32
  %92 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %93 = call i64 @IOMMU_PAGE_ALIGN(i32 %91, %struct.iommu_table* %92)
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %7, align 8
  %96 = load i64, i64* %7, align 8
  store i64 %96, i64* %2, align 8
  br label %97

97:                                               ; preds = %87, %18
  %98 = load i64, i64* %2, align 8
  ret i64 %98
}

declare dso_local %struct.net_device* @dev_get_drvdata(i32*) #1

declare dso_local %struct.iommu_table* @get_iommu_table_base(i32*) #1

declare dso_local i64 @IOMMU_PAGE_ALIGN(i32, %struct.iommu_table*) #1

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

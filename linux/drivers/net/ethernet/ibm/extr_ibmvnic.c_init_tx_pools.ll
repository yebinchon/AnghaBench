; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_tx_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_tx_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32, i32*, i64, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i64 0, align 8
@IBMVNIC_TSO_BUFS = common dso_local global i32 0, align 4
@IBMVNIC_TSO_BUF_SZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @init_tx_pools to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_tx_pools(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ibmvnic_adapter* %9, %struct.ibmvnic_adapter** %4, align 8
  %10 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %10, i32 0, i32 5
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kcalloc(i32 %16, i32 4, i32 %17)
  %19 = bitcast i8* %18 to i32*
  %20 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %20, i32 0, i32 4
  store i32* %19, i32** %21, align 8
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %92

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 4, i32 %29)
  %31 = bitcast i8* %30 to i32*
  %32 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %32, i32 0, i32 1
  store i32* %31, i32** %33, align 8
  %34 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %92

39:                                               ; preds = %27
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %88, %39
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @VLAN_HLEN, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @init_one_tx_pool(%struct.net_device* %48, i32* %54, i32 %57, i64 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %47
  %67 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %68 = call i32 @release_tx_pools(%struct.ibmvnic_adapter* %67)
  %69 = load i32, i32* %7, align 4
  store i32 %69, i32* %2, align 4
  br label %92

70:                                               ; preds = %47
  %71 = load %struct.net_device*, %struct.net_device** %3, align 8
  %72 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* @IBMVNIC_TSO_BUFS, align 4
  %79 = load i64, i64* @IBMVNIC_TSO_BUF_SZ, align 8
  %80 = call i32 @init_one_tx_pool(%struct.net_device* %71, i32* %77, i32 %78, i64 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %70
  %84 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %85 = call i32 @release_tx_pools(%struct.ibmvnic_adapter* %84)
  %86 = load i32, i32* %7, align 4
  store i32 %86, i32* %2, align 4
  br label %92

87:                                               ; preds = %70
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %6, align 4
  br label %43

91:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %91, %83, %66, %38, %26
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @init_one_tx_pool(%struct.net_device*, i32*, i32, i64) #1

declare dso_local i32 @release_tx_pools(%struct.ibmvnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

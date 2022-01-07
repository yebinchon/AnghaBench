; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_set_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmveth.c_ibmveth_set_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ibmveth_adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IBMVETH_ILLAN_LRG_SR_ENABLED = common dso_local global i64 0, align 8
@H_SUCCESS = common dso_local global i64 0, align 8
@IBMVETH_ILLAN_LRG_SND_SUPPORT = common dso_local global i64 0, align 8
@old_large_send = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to change tso settings. %d rc=%ld\0A\00", align 1
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"TSO feature requires all partitions to have updated driver\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ibmveth_set_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmveth_set_tso(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ibmveth_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call %struct.ibmveth_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ibmveth_adapter* %15, %struct.ibmveth_adapter** %5, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  store i32 1, i32* %13, align 4
  %20 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %21 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %20, i32 0, i32 0
  store i32 1, i32* %21, align 8
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = call i32 @ibmveth_close(%struct.net_device* %22)
  %24 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  br label %26

26:                                               ; preds = %19, %2
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i64, i64* @IBMVETH_ILLAN_LRG_SR_ENABLED, align 8
  store i64 %30, i64* %6, align 8
  br label %33

31:                                               ; preds = %26
  %32 = load i64, i64* @IBMVETH_ILLAN_LRG_SR_ENABLED, align 8
  store i64 %32, i64* %7, align 8
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %35 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @h_illan_attributes(i32 %38, i64 0, i64 0, i64* %8)
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @H_SUCCESS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %33
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @IBMVETH_ILLAN_LRG_SND_SUPPORT, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %98

48:                                               ; preds = %43
  %49 = load i32, i32* @old_large_send, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %98, label %51

51:                                               ; preds = %48
  %52 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %53 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %7, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i64 @h_illan_attributes(i32 %56, i64 %57, i64 %58, i64* %8)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = load i64, i64* @H_SUCCESS, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %90

63:                                               ; preds = %51
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i64, i64* %10, align 8
  %67 = call i32 @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %66)
  %68 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %68, i32 0, i32 3
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i64 @h_illan_attributes(i32 %72, i64 %73, i64 %74, i64* %8)
  %76 = load i32, i32* %4, align 4
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %87

78:                                               ; preds = %63
  %79 = load i32, i32* @NETIF_F_TSO, align 4
  %80 = load i32, i32* @NETIF_F_TSO6, align 4
  %81 = or i32 %79, %80
  %82 = xor i32 %81, -1
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %78, %63
  %88 = load i32, i32* @EIO, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %11, align 4
  br label %97

90:                                               ; preds = %51
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* %4, align 4
  %95 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %96 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %97

97:                                               ; preds = %90, %87
  br label %114

98:                                               ; preds = %48, %43, %33
  %99 = load i32, i32* %4, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %110

101:                                              ; preds = %98
  %102 = load i32, i32* @NETIF_F_TSO6, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.net_device*, %struct.net_device** %3, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.net_device*, %struct.net_device** %3, align 8
  %109 = call i32 @netdev_info(%struct.net_device* %108, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %110

110:                                              ; preds = %101, %98
  %111 = load i32, i32* %4, align 4
  %112 = load %struct.ibmveth_adapter*, %struct.ibmveth_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.ibmveth_adapter, %struct.ibmveth_adapter* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 8
  br label %114

114:                                              ; preds = %110, %97
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.net_device*, %struct.net_device** %3, align 8
  %119 = call i32 @ibmveth_open(%struct.net_device* %118)
  store i32 %119, i32* %12, align 4
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i32, i32* %11, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %120
  %124 = load i32, i32* %11, align 4
  br label %127

125:                                              ; preds = %120
  %126 = load i32, i32* %12, align 4
  br label %127

127:                                              ; preds = %125, %123
  %128 = phi i32 [ %124, %123 ], [ %126, %125 ]
  ret i32 %128
}

declare dso_local %struct.ibmveth_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ibmveth_close(%struct.net_device*) #1

declare dso_local i64 @h_illan_attributes(i32, i64, i64, i64*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @ibmveth_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

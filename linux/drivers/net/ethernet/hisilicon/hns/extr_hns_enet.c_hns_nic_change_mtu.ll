; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_enet.c_hns_nic_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hns_nic_priv = type { i64, %struct.hnae_handle* }
%struct.hnae_handle = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hnae_handle*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@AE_VERSION_1 = common dso_local global i64 0, align 8
@BD_SIZE_2048_MAX_MTU = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"clear the fetched desc fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"set mtu fail, return value %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"hns net open fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @hns_nic_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_nic_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hns_nic_priv*, align 8
  %7 = alloca %struct.hnae_handle*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.hns_nic_priv* %11, %struct.hns_nic_priv** %6, align 8
  %12 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %13 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %12, i32 0, i32 1
  %14 = load %struct.hnae_handle*, %struct.hnae_handle** %13, align 8
  store %struct.hnae_handle* %14, %struct.hnae_handle** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 68
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %113

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %113

29:                                               ; preds = %22
  %30 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %31 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %35, align 8
  %37 = icmp ne i32 (%struct.hnae_handle*, i32)* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @ENOTSUPP, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %113

41:                                               ; preds = %29
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.net_device*, %struct.net_device** %4, align 8
  %46 = call i32 @hns_nic_net_stop(%struct.net_device* %45)
  %47 = call i32 @msleep(i32 100)
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %6, align 8
  %50 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AE_VERSION_1, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @BD_SIZE_2048_MAX_MTU, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @BD_SIZE_2048_MAX_MTU, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %60
  %65 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %66 = call i32 @hnae_reinit_all_ring_desc(%struct.hnae_handle* %65)
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = call i32 @hns_nic_clear_all_rx_fetch(%struct.net_device* %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %70 = call i32 @hnae_reinit_all_ring_page_off(%struct.hnae_handle* %69)
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %98

76:                                               ; preds = %64
  br label %77

77:                                               ; preds = %76, %60, %54, %48
  %78 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %79 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load i32 (%struct.hnae_handle*, i32)*, i32 (%struct.hnae_handle*, i32)** %83, align 8
  %85 = load %struct.hnae_handle*, %struct.hnae_handle** %7, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 %84(%struct.hnae_handle* %85, i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %77
  %91 = load %struct.net_device*, %struct.net_device** %4, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %92)
  br label %98

94:                                               ; preds = %77
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.net_device*, %struct.net_device** %4, align 8
  %97 = getelementptr inbounds %struct.net_device, %struct.net_device* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %94, %90, %73
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = call i64 @hns_nic_net_open(%struct.net_device* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %9, align 4
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %98
  %112 = load i32, i32* %9, align 4
  store i32 %112, i32* %3, align 4
  br label %113

113:                                              ; preds = %111, %38, %28, %19
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @hns_nic_net_stop(%struct.net_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hnae_reinit_all_ring_desc(%struct.hnae_handle*) #1

declare dso_local i32 @hns_nic_clear_all_rx_fetch(%struct.net_device*) #1

declare dso_local i32 @hnae_reinit_all_ring_page_off(%struct.hnae_handle*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @hns_nic_net_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

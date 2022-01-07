; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i64, i64, i64, i64 }
%struct.bnx2x = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"set-channels command parameters: rx = %d, tx = %d, other = %d, combined = %d\0A\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"VFs are enabled, can not set channels\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"No change in active parameters\0A\00", align 1
@UNLOAD_NORMAL = common dso_local global i32 0, align 4
@LOAD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @bnx2x_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %10 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 (i32, i8*, ...) @DP(i32 %9, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i64 %18, i64 %21)
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @pci_num_vf(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %30 = call i32 (i32, i8*, ...) @DP(i32 %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EPERM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %101

33:                                               ; preds = %2
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %33
  %39 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %38
  %44 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %43
  %49 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %58 = call i64 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x* %57)
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %53, %48, %43, %38, %33
  %61 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %62 = call i32 (i32, i8*, ...) @DP(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %101

65:                                               ; preds = %53
  %66 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %70 = call i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %69)
  %71 = icmp eq i64 %68, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %74 = call i32 (i32, i8*, ...) @DP(i32 %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %101

75:                                               ; preds = %65
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i32 @netif_running(%struct.net_device* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i64 @unlikely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %85 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @bnx2x_change_num_queues(%struct.bnx2x* %84, i64 %87)
  store i32 0, i32* %3, align 4
  br label %101

89:                                               ; preds = %75
  %90 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %91 = load i32, i32* @UNLOAD_NORMAL, align 4
  %92 = call i32 @bnx2x_nic_unload(%struct.bnx2x* %90, i32 %91, i32 1)
  %93 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %94 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @bnx2x_change_num_queues(%struct.bnx2x* %93, i64 %96)
  %98 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %99 = load i32, i32* @LOAD_NORMAL, align 4
  %100 = call i32 @bnx2x_nic_load(%struct.bnx2x* %98, i32 %99)
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %89, %83, %72, %60, %28
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @pci_num_vf(i32) #1

declare dso_local i64 @BNX2X_MAX_RSS_COUNT(%struct.bnx2x*) #1

declare dso_local i64 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @bnx2x_change_num_queues(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_nic_unload(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_nic_load(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64 }
%struct.bnx2x = type { i64, i64, i64, i64, i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [70 x i8] c"set ring params command parameters: rx_pending = %d, tx_pending = %d\0A\00", align 1
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"VFs are enabled, can not change ring parameters\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@BNX2X_RECOVERY_DONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Handling parity error recovery. Try again later\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MAX_RX_AVAIL = common dso_local global i64 0, align 8
@MIN_RX_SIZE_NONTPA = common dso_local global i64 0, align 8
@MIN_RX_SIZE_TPA = common dso_local global i64 0, align 8
@MAX_TX_AVAIL = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Command parameters not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @bnx2x_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.bnx2x*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %7)
  store %struct.bnx2x* %8, %struct.bnx2x** %6, align 8
  %9 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (i32, i8*, ...) @DP(i32 %9, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @pci_num_vf(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %24 = call i32 (i32, i8*, ...) @DP(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EPERM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %97

27:                                               ; preds = %2
  %28 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %29 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BNX2X_RECOVERY_DONE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  %34 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %35 = call i32 (i32, i8*, ...) @DP(i32 %34, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %97

38:                                               ; preds = %27
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MAX_RX_AVAIL, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %79, label %44

44:                                               ; preds = %38
  %45 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i64, i64* @MIN_RX_SIZE_NONTPA, align 8
  br label %56

54:                                               ; preds = %44
  %55 = load i64, i64* @MIN_RX_SIZE_TPA, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = icmp slt i64 %47, %57
  br i1 %58, label %79, label %59

59:                                               ; preds = %56
  %60 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %64 = call i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %59
  br label %69

67:                                               ; preds = %59
  %68 = load i64, i64* @MAX_TX_AVAIL, align 8
  br label %69

69:                                               ; preds = %67, %66
  %70 = phi i64 [ 0, %66 ], [ %68, %67 ]
  %71 = icmp sgt i64 %62, %70
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %77 = add nsw i64 %76, 4
  %78 = icmp sle i64 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %72, %69, %56, %38
  %80 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %81 = call i32 (i32, i8*, ...) @DP(i32 %80, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %97

84:                                               ; preds = %72
  %85 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %86 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %89 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %88, i32 0, i32 1
  store i64 %87, i64* %89, align 8
  %90 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %94 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %93, i32 0, i32 2
  store i64 %92, i64* %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 @bnx2x_reload_if_running(%struct.net_device* %95)
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %84, %79, %33, %22
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i64 @pci_num_vf(i32) #1

declare dso_local i64 @IS_MF_STORAGE_ONLY(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_reload_if_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

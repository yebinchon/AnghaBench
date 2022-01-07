; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_ptp.c_lan743x_ptp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.lan743x_adapter = type { i32, i32* }
%struct.hwtstamp_config = type { i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"SIOCSHWTSTAMP, ifr == NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"ignoring hwtstamp_config.flags == 0x%08X, expected 0\0A\00", align 1
@LAN743X_MAX_TX_CHANNELS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"  tx_type = %d, UNKNOWN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lan743x_ptp_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan743x_adapter*, align 8
  %9 = alloca %struct.hwtstamp_config, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.lan743x_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.lan743x_adapter* %13, %struct.lan743x_adapter** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %15 = icmp ne %struct.ifreq* %14, null
  br i1 %15, label %25, label %16

16:                                               ; preds = %3
  %17 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %18 = load i32, i32* @drv, align 4
  %19 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %20 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netif_err(%struct.lan743x_adapter* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %27 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @copy_from_user(%struct.hwtstamp_config* %9, i32 %28, i32 8)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %135

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %40 = load i32, i32* @drv, align 4
  %41 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @netif_warn(%struct.lan743x_adapter* %39, i32 %40, i32 %43, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %38, %34
  %48 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %107 [
    i32 130, label %50
    i32 129, label %69
    i32 128, label %88
  ]

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %63, %50
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @LAN743X_MAX_TX_CHANNELS, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %57 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = call i32 @lan743x_tx_set_timestamping_mode(i32* %61, i32 0, i32 0)
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %51

66:                                               ; preds = %51
  %67 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %68 = call i32 @lan743x_ptp_set_sync_ts_insert(%struct.lan743x_adapter* %67, i32 0)
  br label %118

69:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %82, %69
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @LAN743X_MAX_TX_CHANNELS, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %76 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @lan743x_tx_set_timestamping_mode(i32* %80, i32 1, i32 0)
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %11, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %11, align 4
  br label %70

85:                                               ; preds = %70
  %86 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %87 = call i32 @lan743x_ptp_set_sync_ts_insert(%struct.lan743x_adapter* %86, i32 0)
  br label %118

88:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %101, %88
  %90 = load i32, i32* %11, align 4
  %91 = load i32, i32* @LAN743X_MAX_TX_CHANNELS, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %95 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = call i32 @lan743x_tx_set_timestamping_mode(i32* %99, i32 1, i32 1)
  br label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %11, align 4
  br label %89

104:                                              ; preds = %89
  %105 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %106 = call i32 @lan743x_ptp_set_sync_ts_insert(%struct.lan743x_adapter* %105, i32 1)
  br label %118

107:                                              ; preds = %47
  %108 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %109 = load i32, i32* @drv, align 4
  %110 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %8, align 8
  %111 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @netif_warn(%struct.lan743x_adapter* %108, i32 %109, i32 %112, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %107, %104, %85, %66
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %118
  %122 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %123 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @copy_to_user(i32 %124, %struct.hwtstamp_config* %9, i32 8)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load i32, i32* @EFAULT, align 4
  %129 = sub nsw i32 0, %128
  br label %131

130:                                              ; preds = %121
  br label %131

131:                                              ; preds = %130, %127
  %132 = phi i32 [ %129, %127 ], [ 0, %130 ]
  store i32 %132, i32* %4, align 4
  br label %135

133:                                              ; preds = %118
  %134 = load i32, i32* %10, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %131, %31, %16
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.lan743x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.lan743x_adapter*, i32, i32, i8*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @netif_warn(%struct.lan743x_adapter*, i32, i32, i8*, i32) #1

declare dso_local i32 @lan743x_tx_set_timestamping_mode(i32*, i32, i32) #1

declare dso_local i32 @lan743x_ptp_set_sync_ts_insert(%struct.lan743x_adapter*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

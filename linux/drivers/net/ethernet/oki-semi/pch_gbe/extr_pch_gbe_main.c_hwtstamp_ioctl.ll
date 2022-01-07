; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_hwtstamp_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_hwtstamp_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.hwtstamp_config = type { i64, i32, i64 }
%struct.pch_gbe_adapter = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i64 0, align 8
@HWTSTAMP_TX_ON = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@SLAVE_MODE = common dso_local global i32 0, align 4
@CAP_MODE0 = common dso_local global i32 0, align 4
@MASTER_MODE = common dso_local global i32 0, align 4
@V2_MODE = common dso_local global i32 0, align 4
@CAP_MODE2 = common dso_local global i32 0, align 4
@PTP_L4_MULTICAST_SA = common dso_local global i32 0, align 4
@PTP_L2_MULTICAST_SA = common dso_local global i32 0, align 4
@TX_SNAPSHOT_LOCKED = common dso_local global i32 0, align 4
@RX_SNAPSHOT_LOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @hwtstamp_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hwtstamp_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hwtstamp_config, align 8
  %9 = alloca %struct.pch_gbe_adapter*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca [20 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.pch_gbe_adapter* %13, %struct.pch_gbe_adapter** %9, align 8
  %14 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %15 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @copy_from_user(%struct.hwtstamp_config* %8, i32 %16, i32 24)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EFAULT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %122

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %122

29:                                               ; preds = %22
  %30 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %31 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %30, i32 0, i32 2
  %32 = load %struct.pci_dev*, %struct.pci_dev** %31, align 8
  store %struct.pci_dev* %32, %struct.pci_dev** %10, align 8
  %33 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @HWTSTAMP_TX_OFF, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @HWTSTAMP_TX_ON, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %122

45:                                               ; preds = %37, %29
  %46 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  switch i32 %47, label %95 [
    i32 132, label %48
    i32 130, label %51
    i32 131, label %59
    i32 128, label %67
    i32 129, label %81
  ]

48:                                               ; preds = %45
  %49 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %50 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %98

51:                                               ; preds = %45
  %52 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  %54 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %55 = load i32, i32* @SLAVE_MODE, align 4
  %56 = load i32, i32* @CAP_MODE0, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @pch_ch_control_write(%struct.pci_dev* %54, i32 %57)
  br label %98

59:                                               ; preds = %45
  %60 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %61 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %63 = load i32, i32* @MASTER_MODE, align 4
  %64 = load i32, i32* @CAP_MODE0, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @pch_ch_control_write(%struct.pci_dev* %62, i32 %65)
  br label %98

67:                                               ; preds = %45
  %68 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %69 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %71 = load i32, i32* @V2_MODE, align 4
  %72 = load i32, i32* @CAP_MODE2, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @pch_ch_control_write(%struct.pci_dev* %70, i32 %73)
  %75 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %76 = load i32, i32* @PTP_L4_MULTICAST_SA, align 4
  %77 = call i32 @strcpy(i32* %75, i32 %76)
  %78 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %79 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %80 = call i32 @pch_set_station_address(i32* %78, %struct.pci_dev* %79)
  br label %98

81:                                               ; preds = %45
  %82 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %85 = load i32, i32* @V2_MODE, align 4
  %86 = load i32, i32* @CAP_MODE2, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @pch_ch_control_write(%struct.pci_dev* %84, i32 %87)
  %89 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %90 = load i32, i32* @PTP_L2_MULTICAST_SA, align 4
  %91 = call i32 @strcpy(i32* %89, i32 %90)
  %92 = getelementptr inbounds [20 x i32], [20 x i32]* %11, i64 0, i64 0
  %93 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %94 = call i32 @pch_set_station_address(i32* %92, %struct.pci_dev* %93)
  br label %98

95:                                               ; preds = %45
  %96 = load i32, i32* @ERANGE, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %122

98:                                               ; preds = %81, %67, %59, %51, %48
  %99 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %8, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @HWTSTAMP_TX_ON, align 8
  %102 = icmp eq i64 %100, %101
  %103 = zext i1 %102 to i32
  %104 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %9, align 8
  %105 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %107 = load i32, i32* @TX_SNAPSHOT_LOCKED, align 4
  %108 = load i32, i32* @RX_SNAPSHOT_LOCKED, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @pch_ch_event_write(%struct.pci_dev* %106, i32 %109)
  %111 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %112 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @copy_to_user(i32 %113, %struct.hwtstamp_config* %8, i32 24)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %98
  %117 = load i32, i32* @EFAULT, align 4
  %118 = sub nsw i32 0, %117
  br label %120

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %95, %42, %26, %19
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.pch_gbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @pch_ch_control_write(%struct.pci_dev*, i32) #1

declare dso_local i32 @strcpy(i32*, i32) #1

declare dso_local i32 @pch_set_station_address(i32*, %struct.pci_dev*) #1

declare dso_local i32 @pch_ch_event_write(%struct.pci_dev*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

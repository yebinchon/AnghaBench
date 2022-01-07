; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_set_ts_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_set_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.igb_adapter = type { i32 }
%struct.hwtstamp_config = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_ptp_set_ts_config(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ifreq*, align 8
  %6 = alloca %struct.igb_adapter*, align 8
  %7 = alloca %struct.hwtstamp_config, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ifreq* %1, %struct.ifreq** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.igb_adapter* %10, %struct.igb_adapter** %6, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @copy_from_user(%struct.hwtstamp_config* %7, i32 %13, i32 4)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EFAULT, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %2
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %21 = call i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter* %20, %struct.hwtstamp_config* %7)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %19
  %27 = load %struct.igb_adapter*, %struct.igb_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %27, i32 0, i32 0
  %29 = call i32 @memcpy(i32* %28, %struct.hwtstamp_config* %7, i32 4)
  %30 = load %struct.ifreq*, %struct.ifreq** %5, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @copy_to_user(i32 %32, %struct.hwtstamp_config* %7, i32 4)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  br label %39

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %35
  %40 = phi i32 [ %37, %35 ], [ 0, %38 ]
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %24, %16
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i32 @igb_ptp_set_timestamp_mode(%struct.igb_adapter*, %struct.hwtstamp_config*) #1

declare dso_local i32 @memcpy(i32*, %struct.hwtstamp_config*, i32) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

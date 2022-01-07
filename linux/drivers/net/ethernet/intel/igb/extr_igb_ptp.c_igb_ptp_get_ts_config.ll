; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_get_ts_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ptp.c_igb_ptp_get_ts_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.igb_adapter = type { %struct.hwtstamp_config }
%struct.hwtstamp_config = type { i32 }

@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_ptp_get_ts_config(%struct.net_device* %0, %struct.ifreq* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ifreq*, align 8
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca %struct.hwtstamp_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ifreq* %1, %struct.ifreq** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igb_adapter* %8, %struct.igb_adapter** %5, align 8
  %9 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %9, i32 0, i32 0
  store %struct.hwtstamp_config* %10, %struct.hwtstamp_config** %6, align 8
  %11 = load %struct.ifreq*, %struct.ifreq** %4, align 8
  %12 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hwtstamp_config*, %struct.hwtstamp_config** %6, align 8
  %15 = call i64 @copy_to_user(i32 %13, %struct.hwtstamp_config* %14, i32 4)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EFAULT, align 4
  %19 = sub nsw i32 0, %18
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  ret i32 %22
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

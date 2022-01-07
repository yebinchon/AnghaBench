; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_wait_phy_db_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_fw.c_iwl_wait_phy_db_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_notif_wait_data = type { i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_phy_db = type { i32 }

@CALIB_RES_NOTIF_PHY_DB = common dso_local global i64 0, align 8
@INIT_COMPLETE_NOTIF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_notif_wait_data*, %struct.iwl_rx_packet*, i8*)* @iwl_wait_phy_db_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_wait_phy_db_entry(%struct.iwl_notif_wait_data* %0, %struct.iwl_rx_packet* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_notif_wait_data*, align 8
  %6 = alloca %struct.iwl_rx_packet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.iwl_phy_db*, align 8
  store %struct.iwl_notif_wait_data* %0, %struct.iwl_notif_wait_data** %5, align 8
  store %struct.iwl_rx_packet* %1, %struct.iwl_rx_packet** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.iwl_phy_db*
  store %struct.iwl_phy_db* %10, %struct.iwl_phy_db** %8, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @CALIB_RES_NOTIF_PHY_DB, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %19 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @INIT_COMPLETE_NOTIF, align 8
  %23 = icmp ne i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @WARN_ON(i32 %24)
  store i32 1, i32* %4, align 4
  br label %31

26:                                               ; preds = %3
  %27 = load %struct.iwl_phy_db*, %struct.iwl_phy_db** %8, align 8
  %28 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %6, align 8
  %29 = call i32 @iwl_phy_db_set_section(%struct.iwl_phy_db* %27, %struct.iwl_rx_packet* %28)
  %30 = call i32 @WARN_ON(i32 %29)
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %26, %17
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iwl_phy_db_set_section(%struct.iwl_phy_db*, %struct.iwl_rx_packet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

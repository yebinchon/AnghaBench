; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32 }

@HNS_XGMAC_NO_LF_RF_INSERT = common dso_local global i32 0, align 4
@MAC_COMM_MODE_TX = common dso_local global i32 0, align 4
@MAC_COMM_MODE_RX = common dso_local global i32 0, align 4
@MAC_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"error mac mode:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hns_xgmac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_enable(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_driver*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.mac_driver*
  store %struct.mac_driver* %7, %struct.mac_driver** %5, align 8
  %8 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %9 = load i32, i32* @HNS_XGMAC_NO_LF_RF_INSERT, align 4
  %10 = call i32 @hns_xgmac_lf_rf_insert(%struct.mac_driver* %8, i32 %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MAC_COMM_MODE_TX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %16 = call i32 @hns_xgmac_tx_enable(%struct.mac_driver* %15, i32 1)
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAC_COMM_MODE_RX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %23 = call i32 @hns_xgmac_rx_enable(%struct.mac_driver* %22, i32 1)
  br label %40

24:                                               ; preds = %17
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %30 = call i32 @hns_xgmac_tx_enable(%struct.mac_driver* %29, i32 1)
  %31 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %32 = call i32 @hns_xgmac_rx_enable(%struct.mac_driver* %31, i32 1)
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %35 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %33, %28
  br label %40

40:                                               ; preds = %39, %21
  br label %41

41:                                               ; preds = %40, %14
  ret void
}

declare dso_local i32 @hns_xgmac_lf_rf_insert(%struct.mac_driver*, i32) #1

declare dso_local i32 @hns_xgmac_tx_enable(%struct.mac_driver*, i32) #1

declare dso_local i32 @hns_xgmac_rx_enable(%struct.mac_driver*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

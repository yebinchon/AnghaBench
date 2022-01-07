; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_fix_mac_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_fix_mac_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32, i64, i64, %struct.dsaf_device* }
%struct.dsaf_device = type { i32 }

@HNAE_PORT_SERVICE = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@DSAF_PORT_RATE_10000 = common dso_local global i32 0, align 4
@DSAF_PORT_RATE_1000 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_dsaf_fix_mac_mode(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca %struct.hns_mac_cb*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %2, align 8
  %6 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %7 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %6, i32 0, i32 3
  %8 = load %struct.dsaf_device*, %struct.dsaf_device** %7, align 8
  store %struct.dsaf_device* %8, %struct.dsaf_device** %4, align 8
  %9 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %10 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %13 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HNAE_PORT_SERVICE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %33

18:                                               ; preds = %1
  %19 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %20 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* @DSAF_PORT_RATE_10000, align 4
  store i32 %25, i32* %3, align 4
  br label %28

26:                                               ; preds = %18
  %27 = load i32, i32* @DSAF_PORT_RATE_1000, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @hns_dsaf_port_work_rate_cfg(%struct.dsaf_device* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %17
  ret void
}

declare dso_local i32 @hns_dsaf_port_work_rate_cfg(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

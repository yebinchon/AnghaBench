; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_set_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i64, i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i32)* }

@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"enabling autoneg is not allowed!\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_mac_set_autoneg(%struct.hns_mac_cb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %8 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %7)
  store %struct.mac_driver* %8, %struct.mac_driver** %6, align 8
  %9 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %10 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %14
  %18 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %19 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %37

24:                                               ; preds = %14, %2
  %25 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %26 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %26, align 8
  %28 = icmp ne i32 (%struct.mac_driver*, i32)* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %31 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %30, i32 0, i32 0
  %32 = load i32 (%struct.mac_driver*, i32)*, i32 (%struct.mac_driver*, i32)** %31, align 8
  %33 = load %struct.mac_driver*, %struct.mac_driver** %6, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 %32(%struct.mac_driver* %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %24
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i64*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_mac_get_autoneg(%struct.hns_mac_cb* %0, i64* %1) #0 {
  %3 = alloca %struct.hns_mac_cb*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %7 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %6)
  store %struct.mac_driver* %7, %struct.mac_driver** %5, align 8
  %8 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %9 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %8, i32 0, i32 0
  %10 = load i32 (%struct.mac_driver*, i64*)*, i32 (%struct.mac_driver*, i64*)** %9, align 8
  %11 = icmp ne i32 (%struct.mac_driver*, i64*)* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %14 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %13, i32 0, i32 0
  %15 = load i32 (%struct.mac_driver*, i64*)*, i32 (%struct.mac_driver*, i64*)** %14, align 8
  %16 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %17 = load i64*, i64** %4, align 8
  %18 = call i32 %15(%struct.mac_driver* %16, i64* %17)
  br label %21

19:                                               ; preds = %2
  %20 = load i64*, i64** %4, align 8
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %19, %12
  ret void
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

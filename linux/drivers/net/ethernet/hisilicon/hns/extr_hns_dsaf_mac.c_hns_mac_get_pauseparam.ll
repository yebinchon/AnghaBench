; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_get_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32 }
%struct.mac_driver = type { i32 (%struct.mac_driver*, i64*, i64*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_mac_get_pauseparam(%struct.hns_mac_cb* %0, i64* %1, i64* %2) #0 {
  %4 = alloca %struct.hns_mac_cb*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %9 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %8)
  store %struct.mac_driver* %9, %struct.mac_driver** %7, align 8
  %10 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %11 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %10, i32 0, i32 0
  %12 = load i32 (%struct.mac_driver*, i64*, i64*)*, i32 (%struct.mac_driver*, i64*, i64*)** %11, align 8
  %13 = icmp ne i32 (%struct.mac_driver*, i64*, i64*)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %16 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %15, i32 0, i32 0
  %17 = load i32 (%struct.mac_driver*, i64*, i64*)*, i32 (%struct.mac_driver*, i64*, i64*)** %16, align 8
  %18 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = call i32 %17(%struct.mac_driver* %18, i64* %19, i64* %20)
  br label %25

22:                                               ; preds = %3
  %23 = load i64*, i64** %5, align 8
  store i64 0, i64* %23, align 8
  %24 = load i64*, i64** %6, align 8
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %22, %14
  ret void
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

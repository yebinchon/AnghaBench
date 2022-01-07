; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mac_driver = type { i64, i32, i32 (i32, i32)* }

@MAC_EN_FLAG_V = common dso_local global i64 0, align 8
@MAC_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_mac_start(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca %struct.hns_mac_cb*, align 8
  %3 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %2, align 8
  %4 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %5 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %4)
  store %struct.mac_driver* %5, %struct.mac_driver** %3, align 8
  %6 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %7 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAC_EN_FLAG_V, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %13 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %18 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %17, i32 0, i32 2
  %19 = load i32 (i32, i32)*, i32 (i32, i32)** %18, align 8
  %20 = icmp ne i32 (i32, i32)* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %23 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %22, i32 0, i32 2
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %26 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %30 = call i32 %24(i32 %28, i32 %29)
  %31 = load i64, i64* @MAC_EN_FLAG_V, align 8
  %32 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %33 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %11, %21, %16
  ret void
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

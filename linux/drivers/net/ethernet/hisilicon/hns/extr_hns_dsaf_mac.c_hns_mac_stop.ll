; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { %struct.TYPE_6__*, i64, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hns_mac_cb*)* }
%struct.TYPE_4__ = type { i32 }
%struct.mac_driver = type { i64, i64, i32 (i32, i32)* }

@MAC_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_mac_stop(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca %struct.hns_mac_cb*, align 8
  %3 = alloca %struct.mac_driver*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %2, align 8
  %4 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %5 = call %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb* %4)
  store %struct.mac_driver* %5, %struct.mac_driver** %3, align 8
  %6 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %7 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %12 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  store i64 %14, i64* %12, align 8
  %15 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %16 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %10
  br label %50

20:                                               ; preds = %10
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %23 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %22, i32 0, i32 2
  %24 = load i32 (i32, i32)*, i32 (i32, i32)** %23, align 8
  %25 = icmp ne i32 (i32, i32)* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %28 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %27, i32 0, i32 2
  %29 = load i32 (i32, i32)*, i32 (i32, i32)** %28, align 8
  %30 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %31 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %35 = call i32 %29(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %21
  %37 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %38 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %40 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %42 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %41, i32 0, i32 0
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32 (%struct.hns_mac_cb*)*, i32 (%struct.hns_mac_cb*)** %46, align 8
  %48 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %49 = call i32 %47(%struct.hns_mac_cb* %48)
  br label %50

50:                                               ; preds = %36, %19
  ret void
}

declare dso_local %struct.mac_driver* @hns_mac_get_drv(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

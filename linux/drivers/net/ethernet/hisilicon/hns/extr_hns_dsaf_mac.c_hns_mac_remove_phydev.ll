; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_remove_phydev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_remove_phydev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_mac_cb = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hns_mac_cb*)* @hns_mac_remove_phydev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_mac_remove_phydev(%struct.hns_mac_cb* %0) #0 {
  %2 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hns_mac_cb* %0, %struct.hns_mac_cb** %2, align 8
  %3 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %4 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = call i32 @to_acpi_device_node(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %10 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %8, %1
  br label %25

14:                                               ; preds = %8
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %16 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @phy_device_remove(i32* %17)
  %19 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %20 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @phy_device_free(i32* %21)
  %23 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %2, align 8
  %24 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  br label %25

25:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @to_acpi_device_node(i32) #1

declare dso_local i32 @phy_device_remove(i32*) #1

declare dso_local i32 @phy_device_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

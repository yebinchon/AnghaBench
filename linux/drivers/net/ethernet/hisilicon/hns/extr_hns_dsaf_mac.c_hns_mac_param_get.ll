; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_param_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_mac.c_hns_mac_param_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_params = type { i32, i32, i32, i32, i32 }
%struct.hns_mac_cb = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mac_params*, %struct.hns_mac_cb*)* @hns_mac_param_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_mac_param_get(%struct.mac_params* %0, %struct.hns_mac_cb* %1) #0 {
  %3 = alloca %struct.mac_params*, align 8
  %4 = alloca %struct.hns_mac_cb*, align 8
  store %struct.mac_params* %0, %struct.mac_params** %3, align 8
  store %struct.hns_mac_cb* %1, %struct.hns_mac_cb** %4, align 8
  %5 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %6 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.mac_params*, %struct.mac_params** %3, align 8
  %9 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 4
  %10 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %11 = call i32 @hns_get_enet_interface(%struct.hns_mac_cb* %10)
  %12 = load %struct.mac_params*, %struct.mac_params** %3, align 8
  %13 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.mac_params*, %struct.mac_params** %3, align 8
  %15 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %18 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ether_addr_copy(i32 %16, i32 %22)
  %24 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %25 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mac_params*, %struct.mac_params** %3, align 8
  %28 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %4, align 8
  %30 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mac_params*, %struct.mac_params** %3, align 8
  %33 = getelementptr inbounds %struct.mac_params, %struct.mac_params* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @hns_get_enet_interface(%struct.hns_mac_cb*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

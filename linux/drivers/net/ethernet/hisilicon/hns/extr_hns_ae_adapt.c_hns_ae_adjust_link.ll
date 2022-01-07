; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hns_mac_cb = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_COMM_MODE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*, i32, i32)* @hns_ae_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_adjust_link(%struct.hnae_handle* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hnae_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %9 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %8)
  store %struct.hns_mac_cb* %9, %struct.hns_mac_cb** %7, align 8
  %10 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %11 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %39 [
    i32 129, label %15
    i32 128, label %20
  ]

15:                                               ; preds = %3
  %16 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @hns_mac_adjust_link(%struct.hns_mac_cb* %16, i32 %17, i32 %18)
  br label %40

20:                                               ; preds = %3
  %21 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %22 = load i32, i32* @MAC_COMM_MODE_RX, align 4
  %23 = call i32 @hns_mac_disable(%struct.hns_mac_cb* %21, i32 %22)
  %24 = load %struct.hnae_handle*, %struct.hnae_handle** %4, align 8
  %25 = call i32 @hns_ae_wait_flow_down(%struct.hnae_handle* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %29 = load i32, i32* @MAC_COMM_MODE_RX, align 4
  %30 = call i32 @hns_mac_enable(%struct.hns_mac_cb* %28, i32 %29)
  br label %40

31:                                               ; preds = %20
  %32 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @hns_mac_adjust_link(%struct.hns_mac_cb* %32, i32 %33, i32 %34)
  %36 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %7, align 8
  %37 = load i32, i32* @MAC_COMM_MODE_RX, align 4
  %38 = call i32 @hns_mac_enable(%struct.hns_mac_cb* %36, i32 %37)
  br label %40

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %39, %31, %27, %15
  ret void
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_adjust_link(%struct.hns_mac_cb*, i32, i32) #1

declare dso_local i32 @hns_mac_disable(%struct.hns_mac_cb*, i32) #1

declare dso_local i32 @hns_ae_wait_flow_down(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_enable(%struct.hns_mac_cb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

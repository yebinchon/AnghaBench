; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32, i32 }
%struct.hns_mac_cb = type { i32 }

@RCB_INT_FLAG_TX = common dso_local global i32 0, align 4
@RCB_INT_FLAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*)* @hns_ae_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_stop(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %4 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %5 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %4)
  store %struct.hns_mac_cb* %5, %struct.hns_mac_cb** %3, align 8
  %6 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %7 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %10 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RCB_INT_FLAG_TX, align 4
  %13 = call i32 @hns_rcb_wait_fbd_clean(i32 %8, i32 %11, i32 %12)
  %14 = call i32 @msleep(i32 20)
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %16 = call i32 @hns_mac_stop(%struct.hns_mac_cb* %15)
  %17 = call i32 @usleep_range(i32 10000, i32 20000)
  %18 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %19 = call i32 @hns_ae_ring_enable_all(%struct.hnae_handle* %18, i32 0)
  %20 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %21 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %24 = getelementptr inbounds %struct.hnae_handle, %struct.hnae_handle* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RCB_INT_FLAG_RX, align 4
  %27 = call i32 @hns_rcb_wait_fbd_clean(i32 %22, i32 %25, i32 %26)
  %28 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %29 = call i32 @hns_mac_vm_config_bc_en(%struct.hns_mac_cb* %28, i32 0, i32 0)
  ret void
}

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_rcb_wait_fbd_clean(i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hns_mac_stop(%struct.hns_mac_cb*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hns_ae_ring_enable_all(%struct.hnae_handle*, i32) #1

declare dso_local i32 @hns_mac_vm_config_bc_en(%struct.hns_mac_cb*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

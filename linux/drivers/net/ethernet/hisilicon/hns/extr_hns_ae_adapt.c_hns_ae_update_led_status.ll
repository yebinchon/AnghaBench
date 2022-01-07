; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_update_led_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_update_led_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hns_mac_cb = type { i64 }

@HNAE_MEDIA_TYPE_FIBER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*)* @hns_ae_update_led_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_update_led_status(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca %struct.hns_mac_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %4 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %5 = call i32 @assert(%struct.hnae_handle* %4)
  %6 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %7 = call %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle* %6)
  store %struct.hns_mac_cb* %7, %struct.hns_mac_cb** %3, align 8
  %8 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %9 = getelementptr inbounds %struct.hns_mac_cb, %struct.hns_mac_cb* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HNAE_MEDIA_TYPE_FIBER, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.hns_mac_cb*, %struct.hns_mac_cb** %3, align 8
  %16 = call i32 @hns_set_led_opt(%struct.hns_mac_cb* %15)
  br label %17

17:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @assert(%struct.hnae_handle*) #1

declare dso_local %struct.hns_mac_cb* @hns_get_mac_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_set_led_opt(%struct.hns_mac_cb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

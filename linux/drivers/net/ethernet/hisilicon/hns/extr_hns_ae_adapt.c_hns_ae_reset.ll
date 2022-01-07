; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_ae_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae_handle = type { i32 }
%struct.hnae_vf_cb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae_handle*)* @hns_ae_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_ae_reset(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %4 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %5 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %4)
  store %struct.hnae_vf_cb* %5, %struct.hnae_vf_cb** %3, align 8
  %6 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %3, align 8
  %7 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %3, align 8
  %15 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @hns_mac_reset(%struct.TYPE_2__* %16)
  %18 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %3, align 8
  %19 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @hns_ppe_reset_common(i32 %20, i32 0)
  br label %22

22:                                               ; preds = %13, %1
  ret void
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

declare dso_local i32 @hns_mac_reset(%struct.TYPE_2__*) #1

declare dso_local i32 @hns_ppe_reset_common(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

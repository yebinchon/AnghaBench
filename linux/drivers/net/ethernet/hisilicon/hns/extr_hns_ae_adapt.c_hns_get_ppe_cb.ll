; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_get_ppe_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ae_adapt.c_hns_get_ppe_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_ppe_cb = type { i32 }
%struct.hnae_handle = type { i32 }
%struct.ppe_common_cb = type { %struct.hns_ppe_cb* }
%struct.hnae_vf_cb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ppe_common_cb** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hns_ppe_cb* (%struct.hnae_handle*)* @hns_get_ppe_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hns_ppe_cb* @hns_get_ppe_cb(%struct.hnae_handle* %0) #0 {
  %2 = alloca %struct.hnae_handle*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppe_common_cb*, align 8
  %5 = alloca %struct.hnae_vf_cb*, align 8
  store %struct.hnae_handle* %0, %struct.hnae_handle** %2, align 8
  %6 = load %struct.hnae_handle*, %struct.hnae_handle** %2, align 8
  %7 = call %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle* %6)
  store %struct.hnae_vf_cb* %7, %struct.hnae_vf_cb** %5, align 8
  %8 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %5, align 8
  %9 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ppe_common_cb**, %struct.ppe_common_cb*** %11, align 8
  %13 = getelementptr inbounds %struct.ppe_common_cb*, %struct.ppe_common_cb** %12, i64 0
  %14 = load %struct.ppe_common_cb*, %struct.ppe_common_cb** %13, align 8
  store %struct.ppe_common_cb* %14, %struct.ppe_common_cb** %4, align 8
  %15 = load %struct.hnae_vf_cb*, %struct.hnae_vf_cb** %5, align 8
  %16 = getelementptr inbounds %struct.hnae_vf_cb, %struct.hnae_vf_cb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %3, align 4
  %18 = load %struct.ppe_common_cb*, %struct.ppe_common_cb** %4, align 8
  %19 = getelementptr inbounds %struct.ppe_common_cb, %struct.ppe_common_cb* %18, i32 0, i32 0
  %20 = load %struct.hns_ppe_cb*, %struct.hns_ppe_cb** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hns_ppe_cb, %struct.hns_ppe_cb* %20, i64 %22
  ret %struct.hns_ppe_cb* %23
}

declare dso_local %struct.hnae_vf_cb* @hns_ae_get_vf_cb(%struct.hnae_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

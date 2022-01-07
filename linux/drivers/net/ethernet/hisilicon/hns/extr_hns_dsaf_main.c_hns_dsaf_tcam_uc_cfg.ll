; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_uc_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_uc_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i32 }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_ucast_cfg*)* @hns_dsaf_tcam_uc_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tcam_uc_cfg(%struct.dsaf_device* %0, i32 %1, %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_ucast_cfg* %3) #0 {
  %5 = alloca %struct.dsaf_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsaf_tbl_tcam_data*, align 8
  %8 = alloca %struct.dsaf_tbl_tcam_ucast_cfg*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_data** %7, align 8
  store %struct.dsaf_tbl_tcam_ucast_cfg* %3, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %9 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %10 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_bh(i32* %10)
  %12 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device* %12, i32 %13)
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %16 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %7, align 8
  %17 = call i32 @hns_dsaf_tbl_tcam_data_cfg(%struct.dsaf_device* %15, %struct.dsaf_tbl_tcam_data* %16)
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %19 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %20 = call i32 @hns_dsaf_tbl_tcam_ucast_cfg(%struct.dsaf_device* %18, %struct.dsaf_tbl_tcam_ucast_cfg* %19)
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %22 = call i32 @hns_dsaf_tbl_tcam_data_ucast_pul(%struct.dsaf_device* %21)
  %23 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %24 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock_bh(i32* %24)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_data_cfg(%struct.dsaf_device*, %struct.dsaf_tbl_tcam_data*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_ucast_cfg(%struct.dsaf_device*, %struct.dsaf_tbl_tcam_ucast_cfg*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_data_ucast_pul(%struct.dsaf_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

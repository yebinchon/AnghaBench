; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_uc_cfg_vague.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_uc_cfg_vague.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i32, i32 }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_ucast_cfg*)* @hns_dsaf_tcam_uc_cfg_vague to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tcam_uc_cfg_vague(%struct.dsaf_device* %0, i32 %1, %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_data* %3, %struct.dsaf_tbl_tcam_ucast_cfg* %4) #0 {
  %6 = alloca %struct.dsaf_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dsaf_tbl_tcam_data*, align 8
  %9 = alloca %struct.dsaf_tbl_tcam_data*, align 8
  %10 = alloca %struct.dsaf_tbl_tcam_ucast_cfg*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_data** %8, align 8
  store %struct.dsaf_tbl_tcam_data* %3, %struct.dsaf_tbl_tcam_data** %9, align 8
  store %struct.dsaf_tbl_tcam_ucast_cfg* %4, %struct.dsaf_tbl_tcam_ucast_cfg** %10, align 8
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %12 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device* %14, i32 %15)
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %18 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %8, align 8
  %19 = call i32 @hns_dsaf_tbl_tcam_data_cfg(%struct.dsaf_device* %17, %struct.dsaf_tbl_tcam_data* %18)
  %20 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %21 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %10, align 8
  %22 = call i32 @hns_dsaf_tbl_tcam_ucast_cfg(%struct.dsaf_device* %20, %struct.dsaf_tbl_tcam_ucast_cfg* %21)
  %23 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %24 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %9, align 8
  %25 = call i32 @hns_dsaf_tbl_tcam_match_cfg(%struct.dsaf_device* %23, %struct.dsaf_tbl_tcam_data* %24)
  %26 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %27 = call i32 @hns_dsaf_tbl_tcam_data_ucast_pul(%struct.dsaf_device* %26)
  %28 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %9, align 8
  %29 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 4
  %30 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %9, align 8
  %31 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %30, i32 0, i32 1
  store i32 -1, i32* %31, align 4
  %32 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %33 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %9, align 8
  %34 = call i32 @hns_dsaf_tbl_tcam_match_cfg(%struct.dsaf_device* %32, %struct.dsaf_tbl_tcam_data* %33)
  %35 = load %struct.dsaf_device*, %struct.dsaf_device** %6, align 8
  %36 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock_bh(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_data_cfg(%struct.dsaf_device*, %struct.dsaf_tbl_tcam_data*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_ucast_cfg(%struct.dsaf_device*, %struct.dsaf_tbl_tcam_ucast_cfg*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_match_cfg(%struct.dsaf_device*, %struct.dsaf_tbl_tcam_data*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_data_ucast_pul(%struct.dsaf_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

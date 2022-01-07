; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_mc_invld.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_mc_invld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_TBL_TCAM_MCAST_CFG_0_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_MCAST_CFG_1_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_MCAST_CFG_2_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_MCAST_CFG_3_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_MCAST_CFG_4_0_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i32)* @hns_dsaf_tcam_mc_invld to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tcam_mc_invld(%struct.dsaf_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %6 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device* %8, i32 %9)
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %12 = load i32, i32* @DSAF_TBL_TCAM_MCAST_CFG_0_0_REG, align 4
  %13 = call i32 @dsaf_write_dev(%struct.dsaf_device* %11, i32 %12, i32 0)
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %15 = load i32, i32* @DSAF_TBL_TCAM_MCAST_CFG_1_0_REG, align 4
  %16 = call i32 @dsaf_write_dev(%struct.dsaf_device* %14, i32 %15, i32 0)
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %18 = load i32, i32* @DSAF_TBL_TCAM_MCAST_CFG_2_0_REG, align 4
  %19 = call i32 @dsaf_write_dev(%struct.dsaf_device* %17, i32 %18, i32 0)
  %20 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %21 = load i32, i32* @DSAF_TBL_TCAM_MCAST_CFG_3_0_REG, align 4
  %22 = call i32 @dsaf_write_dev(%struct.dsaf_device* %20, i32 %21, i32 0)
  %23 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %24 = load i32, i32* @DSAF_TBL_TCAM_MCAST_CFG_4_0_REG, align 4
  %25 = call i32 @dsaf_write_dev(%struct.dsaf_device* %23, i32 %24, i32 0)
  %26 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %27 = call i32 @hns_dsaf_tbl_tcam_mcast_pul(%struct.dsaf_device* %26)
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %29 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_bh(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i32, i32) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_mcast_pul(%struct.dsaf_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

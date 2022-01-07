; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_uc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_uc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i8*, i8* }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i8*, i32, i8*, i8*, i8* }

@DSAF_TBL_TCAM_RDATA_HIGH_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RDATA_LOW_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA0_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA4_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_MCAST_CFG4_ITEM_VLD_S = common dso_local global i32 0, align 4
@DSAF_TBL_MCAST_CFG4_OLD_EN_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_OUT_PORT_M = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_OUT_PORT_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_DVC_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i8*, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_ucast_cfg*)* @hns_dsaf_tcam_uc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tcam_uc_get(%struct.dsaf_device* %0, i8* %1, %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_ucast_cfg* %3) #0 {
  %5 = alloca %struct.dsaf_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsaf_tbl_tcam_data*, align 8
  %8 = alloca %struct.dsaf_tbl_tcam_ucast_cfg*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_data** %7, align 8
  store %struct.dsaf_tbl_tcam_ucast_cfg* %3, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %11 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %12 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %11, i32 0, i32 0
  %13 = call i32 @spin_lock_bh(i32* %12)
  %14 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device* %14, i8* %15)
  %17 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %18 = call i32 @hns_dsaf_tbl_tcam_load_pul(%struct.dsaf_device* %17)
  %19 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %20 = load i32, i32* @DSAF_TBL_TCAM_RDATA_HIGH_0_REG, align 4
  %21 = call i8* @dsaf_read_dev(%struct.dsaf_device* %19, i32 %20)
  %22 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %7, align 8
  %23 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %25 = load i32, i32* @DSAF_TBL_TCAM_RDATA_LOW_0_REG, align 4
  %26 = call i8* @dsaf_read_dev(%struct.dsaf_device* %24, i32 %25)
  %27 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %7, align 8
  %28 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %30 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA0_0_REG, align 4
  %31 = call i8* @dsaf_read_dev(%struct.dsaf_device* %29, i32 %30)
  store i8* %31, i8** %9, align 8
  %32 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %33 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA4_0_REG, align 4
  %34 = call i8* @dsaf_read_dev(%struct.dsaf_device* %32, i32 %33)
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i32, i32* @DSAF_TBL_MCAST_CFG4_ITEM_VLD_S, align 4
  %37 = call i8* @dsaf_get_bit(i8* %35, i32 %36)
  %38 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %39 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load i32, i32* @DSAF_TBL_MCAST_CFG4_OLD_EN_S, align 4
  %42 = call i8* @dsaf_get_bit(i8* %40, i32 %41)
  %43 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %44 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i32, i32* @DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S, align 4
  %47 = call i8* @dsaf_get_bit(i8* %45, i32 %46)
  %48 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %49 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i32, i32* @DSAF_TBL_UCAST_CFG1_OUT_PORT_M, align 4
  %52 = load i32, i32* @DSAF_TBL_UCAST_CFG1_OUT_PORT_S, align 4
  %53 = call i32 @dsaf_get_field(i8* %50, i32 %51, i32 %52)
  %54 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %55 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load i8*, i8** %9, align 8
  %57 = load i32, i32* @DSAF_TBL_UCAST_CFG1_DVC_S, align 4
  %58 = call i8* @dsaf_get_bit(i8* %56, i32 %57)
  %59 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %8, align 8
  %60 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  %61 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %62 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock_bh(i32* %62)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device*, i8*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_load_pul(%struct.dsaf_device*) #1

declare dso_local i8* @dsaf_read_dev(%struct.dsaf_device*, i32) #1

declare dso_local i8* @dsaf_get_bit(i8*, i32) #1

declare dso_local i32 @dsaf_get_field(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

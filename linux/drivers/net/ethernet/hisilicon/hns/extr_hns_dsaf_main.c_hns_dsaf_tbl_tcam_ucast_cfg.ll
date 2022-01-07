; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tbl_tcam_ucast_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tbl_tcam_ucast_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_tcam_ucast_cfg = type { i32, i32, i32, i32, i32 }

@DSAF_TBL_TCAM_UCAST_CFG_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_ITEM_VLD_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_OLD_EN_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_DVC_S = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_OUT_PORT_M = common dso_local global i32 0, align 4
@DSAF_TBL_UCAST_CFG1_OUT_PORT_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, %struct.dsaf_tbl_tcam_ucast_cfg*)* @hns_dsaf_tbl_tcam_ucast_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tbl_tcam_ucast_cfg(%struct.dsaf_device* %0, %struct.dsaf_tbl_tcam_ucast_cfg* %1) #0 {
  %3 = alloca %struct.dsaf_device*, align 8
  %4 = alloca %struct.dsaf_tbl_tcam_ucast_cfg*, align 8
  %5 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %3, align 8
  store %struct.dsaf_tbl_tcam_ucast_cfg* %1, %struct.dsaf_tbl_tcam_ucast_cfg** %4, align 8
  %6 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %7 = load i32, i32* @DSAF_TBL_TCAM_UCAST_CFG_0_REG, align 4
  %8 = call i32 @dsaf_read_dev(%struct.dsaf_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @DSAF_TBL_UCAST_CFG1_MAC_DISCARD_S, align 4
  %11 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %4, align 8
  %12 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @dsaf_set_bit(i32 %9, i32 %10, i32 %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DSAF_TBL_UCAST_CFG1_ITEM_VLD_S, align 4
  %17 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %4, align 8
  %18 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dsaf_set_bit(i32 %15, i32 %16, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @DSAF_TBL_UCAST_CFG1_OLD_EN_S, align 4
  %23 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %4, align 8
  %24 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dsaf_set_bit(i32 %21, i32 %22, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DSAF_TBL_UCAST_CFG1_DVC_S, align 4
  %29 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dsaf_set_bit(i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @DSAF_TBL_UCAST_CFG1_OUT_PORT_M, align 4
  %35 = load i32, i32* @DSAF_TBL_UCAST_CFG1_OUT_PORT_S, align 4
  %36 = load %struct.dsaf_tbl_tcam_ucast_cfg*, %struct.dsaf_tbl_tcam_ucast_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.dsaf_tbl_tcam_ucast_cfg, %struct.dsaf_tbl_tcam_ucast_cfg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dsaf_set_field(i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load %struct.dsaf_device*, %struct.dsaf_device** %3, align 8
  %41 = load i32, i32* @DSAF_TBL_TCAM_UCAST_CFG_0_REG, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @dsaf_write_dev(%struct.dsaf_device* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.dsaf_device*, i32) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dsaf_set_field(i32, i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

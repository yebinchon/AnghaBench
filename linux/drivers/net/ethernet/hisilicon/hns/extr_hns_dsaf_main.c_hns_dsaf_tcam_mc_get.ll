; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_mc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_tcam_mc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }
%struct.dsaf_tbl_tcam_data = type { i8*, i8* }
%struct.dsaf_tbl_tcam_mcast_cfg = type { i8**, i8*, i8* }

@DSAF_TBL_TCAM_RDATA_HIGH_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RDATA_LOW_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA0_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA1_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA2_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA3_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_TCAM_RAM_RDATA4_0_REG = common dso_local global i32 0, align 4
@DSAF_TBL_MCAST_CFG4_ITEM_VLD_S = common dso_local global i32 0, align 4
@DSAF_TBL_MCAST_CFG4_OLD_EN_S = common dso_local global i32 0, align 4
@DSAF_TBL_MCAST_CFG4_VM128_112_M = common dso_local global i32 0, align 4
@DSAF_TBL_MCAST_CFG4_VM128_112_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*, i8*, %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_mcast_cfg*)* @hns_dsaf_tcam_mc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_tcam_mc_get(%struct.dsaf_device* %0, i8* %1, %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_mcast_cfg* %3) #0 {
  %5 = alloca %struct.dsaf_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.dsaf_tbl_tcam_data*, align 8
  %8 = alloca %struct.dsaf_tbl_tcam_mcast_cfg*, align 8
  %9 = alloca i8*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.dsaf_tbl_tcam_data* %2, %struct.dsaf_tbl_tcam_data** %7, align 8
  store %struct.dsaf_tbl_tcam_mcast_cfg* %3, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %11 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %10, i32 0, i32 0
  %12 = call i32 @spin_lock_bh(i32* %11)
  %13 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device* %13, i8* %14)
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %17 = call i32 @hns_dsaf_tbl_tcam_load_pul(%struct.dsaf_device* %16)
  %18 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %19 = load i32, i32* @DSAF_TBL_TCAM_RDATA_HIGH_0_REG, align 4
  %20 = call i8* @dsaf_read_dev(%struct.dsaf_device* %18, i32 %19)
  %21 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %7, align 8
  %22 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %24 = load i32, i32* @DSAF_TBL_TCAM_RDATA_LOW_0_REG, align 4
  %25 = call i8* @dsaf_read_dev(%struct.dsaf_device* %23, i32 %24)
  %26 = load %struct.dsaf_tbl_tcam_data*, %struct.dsaf_tbl_tcam_data** %7, align 8
  %27 = getelementptr inbounds %struct.dsaf_tbl_tcam_data, %struct.dsaf_tbl_tcam_data* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %29 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA0_0_REG, align 4
  %30 = call i8* @dsaf_read_dev(%struct.dsaf_device* %28, i32 %29)
  %31 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %32 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %31, i32 0, i32 0
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %30, i8** %34, align 8
  %35 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %36 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA1_0_REG, align 4
  %37 = call i8* @dsaf_read_dev(%struct.dsaf_device* %35, i32 %36)
  %38 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %39 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %43 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA2_0_REG, align 4
  %44 = call i8* @dsaf_read_dev(%struct.dsaf_device* %42, i32 %43)
  %45 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %46 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  store i8* %44, i8** %48, align 8
  %49 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %50 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA3_0_REG, align 4
  %51 = call i8* @dsaf_read_dev(%struct.dsaf_device* %49, i32 %50)
  %52 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %53 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %52, i32 0, i32 0
  %54 = load i8**, i8*** %53, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 3
  store i8* %51, i8** %55, align 8
  %56 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %57 = load i32, i32* @DSAF_TBL_TCAM_RAM_RDATA4_0_REG, align 4
  %58 = call i8* @dsaf_read_dev(%struct.dsaf_device* %56, i32 %57)
  store i8* %58, i8** %9, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @DSAF_TBL_MCAST_CFG4_ITEM_VLD_S, align 4
  %61 = call i8* @dsaf_get_bit(i8* %59, i32 %60)
  %62 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %63 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load i8*, i8** %9, align 8
  %65 = load i32, i32* @DSAF_TBL_MCAST_CFG4_OLD_EN_S, align 4
  %66 = call i8* @dsaf_get_bit(i8* %64, i32 %65)
  %67 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %68 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* @DSAF_TBL_MCAST_CFG4_VM128_112_M, align 4
  %71 = load i32, i32* @DSAF_TBL_MCAST_CFG4_VM128_112_S, align 4
  %72 = call i8* @dsaf_get_field(i8* %69, i32 %70, i32 %71)
  %73 = load %struct.dsaf_tbl_tcam_mcast_cfg*, %struct.dsaf_tbl_tcam_mcast_cfg** %8, align 8
  %74 = getelementptr inbounds %struct.dsaf_tbl_tcam_mcast_cfg, %struct.dsaf_tbl_tcam_mcast_cfg* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = getelementptr inbounds i8*, i8** %75, i64 4
  store i8* %72, i8** %76, align 8
  %77 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %78 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %77, i32 0, i32 0
  %79 = call i32 @spin_unlock_bh(i32* %78)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_addr_cfg(%struct.dsaf_device*, i8*) #1

declare dso_local i32 @hns_dsaf_tbl_tcam_load_pul(%struct.dsaf_device*) #1

declare dso_local i8* @dsaf_read_dev(%struct.dsaf_device*, i32) #1

declare dso_local i8* @dsaf_get_bit(i8*, i32) #1

declare dso_local i8* @dsaf_get_field(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

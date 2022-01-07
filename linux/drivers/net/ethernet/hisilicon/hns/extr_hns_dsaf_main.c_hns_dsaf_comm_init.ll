; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_comm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_comm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32, i32, i32 }

@DSAF_CFG_0_REG = common dso_local global i32 0, align 4
@DSAF_CFG_EN_S = common dso_local global i32 0, align 4
@DSAF_CFG_TC_MODE_S = common dso_local global i32 0, align 4
@DSAF_CFG_CRC_EN_S = common dso_local global i32 0, align 4
@DSAF_CFG_MIX_MODE_S = common dso_local global i32 0, align 4
@DSAF_CFG_LOCA_ADDR_EN_S = common dso_local global i32 0, align 4
@DSAF_STP_PORT_TYPE_FORWARD = common dso_local global i32 0, align 4
@DSAF_DEFAUTL_QUEUE_NUM_PER_PPE = common dso_local global i32 0, align 4
@DSAF_SW_PORT_TYPE_NON_VLAN = common dso_local global i32 0, align 4
@DSAF_COMM_CHN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsaf_device*)* @hns_dsaf_comm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_dsaf_comm_init(%struct.dsaf_device* %0) #0 {
  %2 = alloca %struct.dsaf_device*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dsaf_device* %0, %struct.dsaf_device** %2, align 8
  %6 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %7 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @AE_IS_VER1(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %11 = load i32, i32* @DSAF_CFG_0_REG, align 4
  %12 = call i64 @dsaf_read_dev(%struct.dsaf_device* %10, i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @DSAF_CFG_EN_S, align 4
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %16 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dsaf_set_bit(i64 %13, i32 %14, i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i32, i32* @DSAF_CFG_TC_MODE_S, align 4
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %22 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dsaf_set_bit(i64 %19, i32 %20, i32 %23)
  %25 = load i64, i64* %4, align 8
  %26 = load i32, i32* @DSAF_CFG_CRC_EN_S, align 4
  %27 = call i32 @dsaf_set_bit(i64 %25, i32 %26, i32 0)
  %28 = load i64, i64* %4, align 8
  %29 = load i32, i32* @DSAF_CFG_MIX_MODE_S, align 4
  %30 = call i32 @dsaf_set_bit(i64 %28, i32 %29, i32 0)
  %31 = load i64, i64* %4, align 8
  %32 = load i32, i32* @DSAF_CFG_LOCA_ADDR_EN_S, align 4
  %33 = call i32 @dsaf_set_bit(i64 %31, i32 %32, i32 0)
  %34 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %35 = load i32, i32* @DSAF_CFG_0_REG, align 4
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @dsaf_write_dev(%struct.dsaf_device* %34, i32 %35, i64 %36)
  %38 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %39 = call i32 @hns_dsaf_reg_cnt_clr_ce(%struct.dsaf_device* %38, i32 1)
  %40 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %41 = load i32, i32* @DSAF_STP_PORT_TYPE_FORWARD, align 4
  %42 = call i32 @hns_dsaf_stp_port_type_cfg(%struct.dsaf_device* %40, i32 %41)
  %43 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %44 = load i32, i32* @DSAF_DEFAUTL_QUEUE_NUM_PER_PPE, align 4
  %45 = call i32 @hns_dsaf_ppe_qid_cfg(%struct.dsaf_device* %43, i32 %44)
  %46 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %47 = call i32 @hns_dsaf_mix_def_qid_cfg(%struct.dsaf_device* %46)
  %48 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %49 = call i32 @hns_dsaf_inner_qid_cfg(%struct.dsaf_device* %48)
  %50 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %51 = load i32, i32* @DSAF_SW_PORT_TYPE_NON_VLAN, align 4
  %52 = call i32 @hns_dsaf_sw_port_type_cfg(%struct.dsaf_device* %50, i32 %51)
  store i64 0, i64* %3, align 8
  br label %53

53:                                               ; preds = %66, %1
  %54 = load i64, i64* %3, align 8
  %55 = load i64, i64* @DSAF_COMM_CHN, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %53
  %58 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @hns_dsaf_pfc_en_cfg(%struct.dsaf_device* %58, i64 %59, i32 0)
  %61 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %62 = load i64, i64* %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @hns_dsaf_set_pfc_pause(%struct.dsaf_device* %61, i64 %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %3, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %3, align 8
  br label %53

69:                                               ; preds = %53
  store i64 0, i64* %3, align 8
  br label %70

70:                                               ; preds = %93, %69
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* @DSAF_COMM_CHN, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %70
  %75 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %76 = load i64, i64* %3, align 8
  %77 = call i32 @hns_dsaf_int_xge_src_clr(%struct.dsaf_device* %75, i64 %76, i32 -1)
  %78 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %79 = load i64, i64* %3, align 8
  %80 = call i32 @hns_dsaf_int_ppe_src_clr(%struct.dsaf_device* %78, i64 %79, i32 -1)
  %81 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @hns_dsaf_int_rocee_src_clr(%struct.dsaf_device* %81, i64 %82, i32 -1)
  %84 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = call i32 @hns_dsaf_int_xge_msk_set(%struct.dsaf_device* %84, i64 %85, i32 -1)
  %87 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %88 = load i64, i64* %3, align 8
  %89 = call i32 @hns_dsaf_int_ppe_msk_set(%struct.dsaf_device* %87, i64 %88, i32 -1)
  %90 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %91 = load i64, i64* %3, align 8
  %92 = call i32 @hns_dsaf_int_rocee_msk_set(%struct.dsaf_device* %90, i64 %91, i32 -1)
  br label %93

93:                                               ; preds = %74
  %94 = load i64, i64* %3, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %3, align 8
  br label %70

96:                                               ; preds = %70
  %97 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %98 = call i32 @hns_dsaf_int_tbl_src_clr(%struct.dsaf_device* %97, i32 -1)
  %99 = load %struct.dsaf_device*, %struct.dsaf_device** %2, align 8
  %100 = call i32 @hns_dsaf_int_tbl_msk_set(%struct.dsaf_device* %99, i32 -1)
  ret void
}

declare dso_local i32 @AE_IS_VER1(i32) #1

declare dso_local i64 @dsaf_read_dev(%struct.dsaf_device*, i32) #1

declare dso_local i32 @dsaf_set_bit(i64, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.dsaf_device*, i32, i64) #1

declare dso_local i32 @hns_dsaf_reg_cnt_clr_ce(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_stp_port_type_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_ppe_qid_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_mix_def_qid_cfg(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_inner_qid_cfg(%struct.dsaf_device*) #1

declare dso_local i32 @hns_dsaf_sw_port_type_cfg(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_pfc_en_cfg(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_set_pfc_pause(%struct.dsaf_device*, i64, i32, i32) #1

declare dso_local i32 @hns_dsaf_int_xge_src_clr(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_int_ppe_src_clr(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_int_rocee_src_clr(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_int_xge_msk_set(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_int_ppe_msk_set(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_int_rocee_msk_set(%struct.dsaf_device*, i64, i32) #1

declare dso_local i32 @hns_dsaf_int_tbl_src_clr(%struct.dsaf_device*, i32) #1

declare dso_local i32 @hns_dsaf_int_tbl_msk_set(%struct.dsaf_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

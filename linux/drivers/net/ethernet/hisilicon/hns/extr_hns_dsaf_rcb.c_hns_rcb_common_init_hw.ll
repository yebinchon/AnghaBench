; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_common_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_rcb.c_hns_rcb_common_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcb_common_cb = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RCB_COM_CFG_INIT_FLAG_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"RCB_COM_CFG_INIT_FLAG_REG reg = 0x%x\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@HNS_RCB_DEF_RX_COALESCED_FRAMES = common dso_local global i32 0, align 4
@HNS_RCB_DEF_TX_COALESCED_FRAMES = common dso_local global i32 0, align 4
@HNS_RCB_DEF_COALESCED_USECS = common dso_local global i32 0, align 4
@RCB_COM_CFG_ENDIAN_REG = common dso_local global i32 0, align 4
@HNS_RCB_COMMON_ENDIAN = common dso_local global i32 0, align 4
@RCB_COM_CFG_FNA_REG = common dso_local global i32 0, align 4
@RCB_COM_CFG_FA_REG = common dso_local global i32 0, align 4
@RCBV2_COM_CFG_USER_REG = common dso_local global i32 0, align 4
@RCB_COM_CFG_FNA_B = common dso_local global i32 0, align 4
@RCB_COM_CFG_FA_B = common dso_local global i32 0, align 4
@RCBV2_COM_CFG_TSO_MODE_REG = common dso_local global i32 0, align 4
@RCB_COM_TSO_MODE_B = common dso_local global i32 0, align 4
@HNS_TSO_MODE_8BD_32K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns_rcb_common_init_hw(%struct.rcb_common_cb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rcb_common_cb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rcb_common_cb* %0, %struct.rcb_common_cb** %3, align 8
  %7 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %8 = call i32 @hns_rcb_common_get_port_num(%struct.rcb_common_cb* %7)
  store i32 %8, i32* %6, align 4
  %9 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %10 = call i32 @hns_rcb_comm_exc_irq_en(%struct.rcb_common_cb* %9, i32 0)
  %11 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %12 = load i32, i32* @RCB_COM_CFG_INIT_FLAG_REG, align 4
  %13 = call i32 @dsaf_read_dev(%struct.rcb_common_cb* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 1, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %1
  %18 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %19 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %103

27:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %66, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %69

32:                                               ; preds = %28
  %33 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %36 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @hns_rcb_set_port_desc_cnt(%struct.rcb_common_cb* %33, i32 %34, i32 %37)
  %39 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HNS_RCB_DEF_RX_COALESCED_FRAMES, align 4
  %42 = call i32 @hns_rcb_set_rx_coalesced_frames(%struct.rcb_common_cb* %39, i32 %40, i32 %41)
  %43 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %44 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @AE_IS_VER1(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %32
  %51 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %52 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = call i32 @HNS_DSAF_IS_DEBUG(%struct.TYPE_2__* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @HNS_RCB_DEF_TX_COALESCED_FRAMES, align 4
  %60 = call i32 @hns_rcb_set_tx_coalesced_frames(%struct.rcb_common_cb* %57, i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %50, %32
  %62 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @HNS_RCB_DEF_COALESCED_USECS, align 4
  %65 = call i32 @hns_rcb_set_port_timeout(%struct.rcb_common_cb* %62, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %28

69:                                               ; preds = %28
  %70 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %71 = load i32, i32* @RCB_COM_CFG_ENDIAN_REG, align 4
  %72 = load i32, i32* @HNS_RCB_COMMON_ENDIAN, align 4
  %73 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %70, i32 %71, i32 %72)
  %74 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %75 = getelementptr inbounds %struct.rcb_common_cb, %struct.rcb_common_cb* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @AE_IS_VER1(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %69
  %82 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %83 = load i32, i32* @RCB_COM_CFG_FNA_REG, align 4
  %84 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %82, i32 %83, i32 0)
  %85 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %86 = load i32, i32* @RCB_COM_CFG_FA_REG, align 4
  %87 = call i32 @dsaf_write_dev(%struct.rcb_common_cb* %85, i32 %86, i32 1)
  br label %102

88:                                               ; preds = %69
  %89 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %90 = load i32, i32* @RCBV2_COM_CFG_USER_REG, align 4
  %91 = load i32, i32* @RCB_COM_CFG_FNA_B, align 4
  %92 = call i32 @dsaf_set_dev_bit(%struct.rcb_common_cb* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %94 = load i32, i32* @RCBV2_COM_CFG_USER_REG, align 4
  %95 = load i32, i32* @RCB_COM_CFG_FA_B, align 4
  %96 = call i32 @dsaf_set_dev_bit(%struct.rcb_common_cb* %93, i32 %94, i32 %95, i32 1)
  %97 = load %struct.rcb_common_cb*, %struct.rcb_common_cb** %3, align 8
  %98 = load i32, i32* @RCBV2_COM_CFG_TSO_MODE_REG, align 4
  %99 = load i32, i32* @RCB_COM_TSO_MODE_B, align 4
  %100 = load i32, i32* @HNS_TSO_MODE_8BD_32K, align 4
  %101 = call i32 @dsaf_set_dev_bit(%struct.rcb_common_cb* %97, i32 %98, i32 %99, i32 %100)
  br label %102

102:                                              ; preds = %88, %81
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %17
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @hns_rcb_common_get_port_num(%struct.rcb_common_cb*) #1

declare dso_local i32 @hns_rcb_comm_exc_irq_en(%struct.rcb_common_cb*, i32) #1

declare dso_local i32 @dsaf_read_dev(%struct.rcb_common_cb*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @hns_rcb_set_port_desc_cnt(%struct.rcb_common_cb*, i32, i32) #1

declare dso_local i32 @hns_rcb_set_rx_coalesced_frames(%struct.rcb_common_cb*, i32, i32) #1

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @HNS_DSAF_IS_DEBUG(%struct.TYPE_2__*) #1

declare dso_local i32 @hns_rcb_set_tx_coalesced_frames(%struct.rcb_common_cb*, i32, i32) #1

declare dso_local i32 @hns_rcb_set_port_timeout(%struct.rcb_common_cb*, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.rcb_common_cb*, i32, i32) #1

declare dso_local i32 @dsaf_set_dev_bit(%struct.rcb_common_cb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

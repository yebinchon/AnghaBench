; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_port_mode_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_port_mode_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hns_gmac_port_mode_cfg = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.mac_driver = type { i32 }

@GMAC_PORT_MODE_REG = common dso_local global i32 0, align 4
@GMAC_PORT_MODE_M = common dso_local global i32 0, align 4
@GMAC_PORT_MODE_S = common dso_local global i32 0, align 4
@GMAC_TRANSMIT_CONTROL_REG = common dso_local global i32 0, align 4
@GMAC_RECV_CONTROL_REG = common dso_local global i32 0, align 4
@GMAC_MAX_FRM_SIZE_REG = common dso_local global i32 0, align 4
@GMAC_MAX_FRM_SIZE_M = common dso_local global i32 0, align 4
@GMAC_MAX_FRM_SIZE_S = common dso_local global i32 0, align 4
@GMAC_SHORT_RUNTS_THR_REG = common dso_local global i32 0, align 4
@GMAC_SHORT_RUNTS_THR_M = common dso_local global i32 0, align 4
@GMAC_SHORT_RUNTS_THR_S = common dso_local global i32 0, align 4
@GMAC_TX_PAD_EN_B = common dso_local global i32 0, align 4
@GMAC_TX_CRC_ADD_B = common dso_local global i32 0, align 4
@GMAC_TX_AN_EN_B = common dso_local global i32 0, align 4
@GMAC_RECV_CTRL_RUNT_PKT_EN_B = common dso_local global i32 0, align 4
@GMAC_RECV_CTRL_STRIP_PAD_EN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.hns_gmac_port_mode_cfg*)* @hns_gmac_port_mode_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_port_mode_get(i8* %0, %struct.hns_gmac_port_mode_cfg* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.hns_gmac_port_mode_cfg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mac_driver*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.hns_gmac_port_mode_cfg* %1, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.mac_driver*
  store %struct.mac_driver* %9, %struct.mac_driver** %7, align 8
  %10 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %11 = load i32, i32* @GMAC_PORT_MODE_REG, align 4
  %12 = load i32, i32* @GMAC_PORT_MODE_M, align 4
  %13 = load i32, i32* @GMAC_PORT_MODE_S, align 4
  %14 = call i8* @dsaf_get_dev_field(%struct.mac_driver* %10, i32 %11, i32 %12, i32 %13)
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %17 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %19 = load i32, i32* @GMAC_TRANSMIT_CONTROL_REG, align 4
  %20 = call i32 @dsaf_read_dev(%struct.mac_driver* %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %22 = load i32, i32* @GMAC_RECV_CONTROL_REG, align 4
  %23 = call i32 @dsaf_read_dev(%struct.mac_driver* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %25 = load i32, i32* @GMAC_MAX_FRM_SIZE_REG, align 4
  %26 = load i32, i32* @GMAC_MAX_FRM_SIZE_M, align 4
  %27 = load i32, i32* @GMAC_MAX_FRM_SIZE_S, align 4
  %28 = call i8* @dsaf_get_dev_field(%struct.mac_driver* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %30 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %29, i32 0, i32 7
  store i8* %28, i8** %30, align 8
  %31 = load %struct.mac_driver*, %struct.mac_driver** %7, align 8
  %32 = load i32, i32* @GMAC_SHORT_RUNTS_THR_REG, align 4
  %33 = load i32, i32* @GMAC_SHORT_RUNTS_THR_M, align 4
  %34 = load i32, i32* @GMAC_SHORT_RUNTS_THR_S, align 4
  %35 = call i8* @dsaf_get_dev_field(%struct.mac_driver* %31, i32 %32, i32 %33, i32 %34)
  %36 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %36, i32 0, i32 6
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @GMAC_TX_PAD_EN_B, align 4
  %40 = call i8* @dsaf_get_bit(i32 %38, i32 %39)
  %41 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %41, i32 0, i32 5
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @GMAC_TX_CRC_ADD_B, align 4
  %45 = call i8* @dsaf_get_bit(i32 %43, i32 %44)
  %46 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %47 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @GMAC_TX_AN_EN_B, align 4
  %50 = call i8* @dsaf_get_bit(i32 %48, i32 %49)
  %51 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %52 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @GMAC_RECV_CTRL_RUNT_PKT_EN_B, align 4
  %55 = call i8* @dsaf_get_bit(i32 %53, i32 %54)
  %56 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %57 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @GMAC_RECV_CTRL_STRIP_PAD_EN_B, align 4
  %60 = call i8* @dsaf_get_bit(i32 %58, i32 %59)
  %61 = load %struct.hns_gmac_port_mode_cfg*, %struct.hns_gmac_port_mode_cfg** %4, align 8
  %62 = getelementptr inbounds %struct.hns_gmac_port_mode_cfg, %struct.hns_gmac_port_mode_cfg* %61, i32 0, i32 1
  store i8* %60, i8** %62, align 8
  ret void
}

declare dso_local i8* @dsaf_get_dev_field(%struct.mac_driver*, i32, i32, i32) #1

declare dso_local i32 @dsaf_read_dev(%struct.mac_driver*, i32) #1

declare dso_local i8* @dsaf_get_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

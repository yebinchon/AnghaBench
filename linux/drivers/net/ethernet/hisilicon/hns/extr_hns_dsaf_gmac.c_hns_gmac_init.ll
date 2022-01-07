; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.dsaf_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.dsaf_device*, i32, i32)* }

@MAC_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4
@HNAE_PORT_DEBUG = common dso_local global i64 0, align 8
@GMAC_MODE_CHANGE_EN_REG = common dso_local global i32 0, align 4
@GMAC_MODE_CHANGE_EB_B = common dso_local global i32 0, align 4
@GMAC_TX_WATER_LINE_REG = common dso_local global i32 0, align 4
@GMAC_TX_WATER_LINE_MASK = common dso_local global i32 0, align 4
@GMAC_TX_WATER_LINE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hns_gmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mac_driver*, align 8
  %5 = alloca %struct.dsaf_device*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mac_driver*
  store %struct.mac_driver* %7, %struct.mac_driver** %4, align 8
  %8 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %9 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @dev_get_drvdata(i32 %10)
  %12 = inttoptr i64 %11 to %struct.dsaf_device*
  store %struct.dsaf_device* %12, %struct.dsaf_device** %5, align 8
  %13 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %14 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %3, align 4
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %17 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dsaf_device*, i32, i32)*, i32 (%struct.dsaf_device*, i32, i32)** %19, align 8
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call i32 %20(%struct.dsaf_device* %21, i32 %22, i32 0)
  %24 = call i32 @mdelay(i32 10)
  %25 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %26 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dsaf_device*, i32, i32)*, i32 (%struct.dsaf_device*, i32, i32)** %28, align 8
  %30 = load %struct.dsaf_device*, %struct.dsaf_device** %5, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 %29(%struct.dsaf_device* %30, i32 %31, i32 1)
  %33 = call i32 @mdelay(i32 10)
  %34 = load i8*, i8** %2, align 8
  %35 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %36 = call i32 @hns_gmac_disable(i8* %34, i32 %35)
  %37 = load i8*, i8** %2, align 8
  %38 = call i32 @hns_gmac_tx_loop_pkt_dis(i8* %37)
  %39 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %40 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HNAE_PORT_DEBUG, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %1
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @hns_gmac_set_uc_match(i8* %47, i32 0)
  br label %49

49:                                               ; preds = %46, %1
  %50 = load i8*, i8** %2, align 8
  %51 = call i32 @hns_gmac_config_pad_and_crc(i8* %50, i32 1)
  %52 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %53 = load i32, i32* @GMAC_MODE_CHANGE_EN_REG, align 4
  %54 = load i32, i32* @GMAC_MODE_CHANGE_EB_B, align 4
  %55 = call i32 @dsaf_set_dev_bit(%struct.mac_driver* %52, i32 %53, i32 %54, i32 1)
  %56 = load %struct.mac_driver*, %struct.mac_driver** %4, align 8
  %57 = load i32, i32* @GMAC_TX_WATER_LINE_REG, align 4
  %58 = load i32, i32* @GMAC_TX_WATER_LINE_MASK, align 4
  %59 = load i32, i32* @GMAC_TX_WATER_LINE_SHIFT, align 4
  %60 = call i32 @dsaf_set_dev_field(%struct.mac_driver* %56, i32 %57, i32 %58, i32 %59, i32 8)
  ret void
}

declare dso_local i64 @dev_get_drvdata(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @hns_gmac_disable(i8*, i32) #1

declare dso_local i32 @hns_gmac_tx_loop_pkt_dis(i8*) #1

declare dso_local i32 @hns_gmac_set_uc_match(i8*, i32) #1

declare dso_local i32 @hns_gmac_config_pad_and_crc(i8*, i32) #1

declare dso_local i32 @dsaf_set_dev_bit(%struct.mac_driver*, i32, i32, i32) #1

declare dso_local i32 @dsaf_set_dev_field(%struct.mac_driver*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

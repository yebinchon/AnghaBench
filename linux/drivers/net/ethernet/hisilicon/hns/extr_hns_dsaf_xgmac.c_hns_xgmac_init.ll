; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32, i32 }
%struct.dsaf_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dsaf_device*, i32, i32)* }

@MAC_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hns_xgmac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mac_driver*, align 8
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.mac_driver*
  store %struct.mac_driver* %7, %struct.mac_driver** %3, align 8
  %8 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %9 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @dev_get_drvdata(i32 %10)
  %12 = inttoptr i64 %11 to %struct.dsaf_device*
  store %struct.dsaf_device* %12, %struct.dsaf_device** %4, align 8
  %13 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %14 = getelementptr inbounds %struct.mac_driver, %struct.mac_driver* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %17 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.dsaf_device*, i32, i32)*, i32 (%struct.dsaf_device*, i32, i32)** %19, align 8
  %21 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 %20(%struct.dsaf_device* %21, i32 %22, i32 0)
  %24 = call i32 @msleep(i32 100)
  %25 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %26 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.dsaf_device*, i32, i32)*, i32 (%struct.dsaf_device*, i32, i32)** %28, align 8
  %30 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 %29(%struct.dsaf_device* %30, i32 %31, i32 1)
  %33 = call i32 @msleep(i32 100)
  %34 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %35 = call i32 @hns_xgmac_lf_rf_control_init(%struct.mac_driver* %34)
  %36 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %37 = call i32 @hns_xgmac_exc_irq_en(%struct.mac_driver* %36, i32 0)
  %38 = load %struct.mac_driver*, %struct.mac_driver** %3, align 8
  %39 = call i32 @hns_xgmac_pma_fec_enable(%struct.mac_driver* %38, i32 0, i32 0)
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %42 = call i32 @hns_xgmac_disable(i8* %40, i32 %41)
  ret void
}

declare dso_local i64 @dev_get_drvdata(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @hns_xgmac_lf_rf_control_init(%struct.mac_driver*) #1

declare dso_local i32 @hns_xgmac_exc_irq_en(%struct.mac_driver*, i32) #1

declare dso_local i32 @hns_xgmac_pma_fec_enable(%struct.mac_driver*, i32, i32) #1

declare dso_local i32 @hns_xgmac_disable(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

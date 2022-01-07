; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32 }

@MAC_COMM_MODE_TX = common dso_local global i32 0, align 4
@MAC_COMM_MODE_RX_AND_TX = common dso_local global i32 0, align 4
@GMAC_PORT_EN_REG = common dso_local global i32 0, align 4
@GMAC_PORT_TX_EN_B = common dso_local global i32 0, align 4
@MAC_COMM_MODE_RX = common dso_local global i32 0, align 4
@GMAC_PCS_RX_EN_REG = common dso_local global i32 0, align 4
@GMAC_PORT_RX_EN_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hns_gmac_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_disable(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_driver*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.mac_driver*
  store %struct.mac_driver* %7, %struct.mac_driver** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @MAC_COMM_MODE_TX, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %2
  %16 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %17 = load i32, i32* @GMAC_PORT_EN_REG, align 4
  %18 = load i32, i32* @GMAC_PORT_TX_EN_B, align 4
  %19 = call i32 @dsaf_set_dev_bit(%struct.mac_driver* %16, i32 %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @MAC_COMM_MODE_RX, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MAC_COMM_MODE_RX_AND_TX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %24, %20
  %29 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %30 = load i32, i32* @GMAC_PCS_RX_EN_REG, align 4
  %31 = call i32 @dsaf_set_dev_bit(%struct.mac_driver* %29, i32 %30, i32 0, i32 1)
  %32 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %33 = load i32, i32* @GMAC_PORT_EN_REG, align 4
  %34 = load i32, i32* @GMAC_PORT_RX_EN_B, align 4
  %35 = call i32 @dsaf_set_dev_bit(%struct.mac_driver* %32, i32 %33, i32 %34, i32 0)
  br label %36

36:                                               ; preds = %28, %24
  ret void
}

declare dso_local i32 @dsaf_set_dev_bit(%struct.mac_driver*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

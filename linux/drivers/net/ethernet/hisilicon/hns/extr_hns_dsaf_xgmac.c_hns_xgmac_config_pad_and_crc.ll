; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_config_pad_and_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_config_pad_and_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32 }

@XGMAC_MAC_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_CTL_TX_PAD_B = common dso_local global i32 0, align 4
@XGMAC_CTL_TX_FCS_B = common dso_local global i32 0, align 4
@XGMAC_CTL_RX_FCS_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @hns_xgmac_config_pad_and_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_config_pad_and_crc(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mac_driver*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.mac_driver*
  store %struct.mac_driver* %8, %struct.mac_driver** %5, align 8
  %9 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %10 = load i32, i32* @XGMAC_MAC_CONTROL_REG, align 4
  %11 = call i32 @dsaf_read_dev(%struct.mac_driver* %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @XGMAC_CTL_TX_PAD_B, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @dsaf_set_bit(i32 %12, i32 %13, i32 %18)
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @XGMAC_CTL_TX_FCS_B, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @dsaf_set_bit(i32 %20, i32 %21, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @XGMAC_CTL_RX_FCS_B, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = call i32 @dsaf_set_bit(i32 %28, i32 %29, i32 %34)
  %36 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %37 = load i32, i32* @XGMAC_MAC_CONTROL_REG, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @dsaf_write_dev(%struct.mac_driver* %36, i32 %37, i32 %38)
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.mac_driver*, i32) #1

declare dso_local i32 @dsaf_set_bit(i32, i32, i32) #1

declare dso_local i32 @dsaf_write_dev(%struct.mac_driver*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_xgmac.c_hns_xgmac_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_info = type { i32, i32, i8*, i8*, i32, i32, i64, i8* }
%struct.mac_driver = type { i32 }

@XGMAC_MAC_CONTROL_REG = common dso_local global i32 0, align 4
@XGMAC_CTL_TX_PAD_B = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_TIME_REG = common dso_local global i32 0, align 4
@XGMAC_PORT_MODE_REG = common dso_local global i32 0, align 4
@XGMAC_PORT_MODE_TX_M = common dso_local global i32 0, align 4
@XGMAC_PORT_MODE_TX_S = common dso_local global i32 0, align 4
@XGMAC_PORT_MODE_RX_M = common dso_local global i32 0, align 4
@XGMAC_PORT_MODE_RX_S = common dso_local global i32 0, align 4
@MAC_SPEED_10000 = common dso_local global i32 0, align 4
@XGMAC_MAC_PAUSE_CTRL_REG = common dso_local global i32 0, align 4
@XGMAC_PAUSE_CTL_RX_B = common dso_local global i32 0, align 4
@XGMAC_PAUSE_CTL_TX_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mac_info*)* @hns_xgmac_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_xgmac_get_info(i8* %0, %struct.mac_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mac_info*, align 8
  %5 = alloca %struct.mac_driver*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.mac_info* %1, %struct.mac_info** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.mac_driver*
  store %struct.mac_driver* %11, %struct.mac_driver** %5, align 8
  %12 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %13 = load i32, i32* @XGMAC_MAC_CONTROL_REG, align 4
  %14 = call i32 @dsaf_read_dev(%struct.mac_driver* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @XGMAC_CTL_TX_PAD_B, align 4
  %17 = call i8* @dsaf_get_bit(i32 %15, i32 %16)
  %18 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %19 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %18, i32 0, i32 7
  store i8* %17, i8** %19, align 8
  %20 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %21 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %23 = load i32, i32* @XGMAC_MAC_PAUSE_TIME_REG, align 4
  %24 = call i32 @dsaf_read_dev(%struct.mac_driver* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %27 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %29 = load i32, i32* @XGMAC_PORT_MODE_REG, align 4
  %30 = call i32 @dsaf_read_dev(%struct.mac_driver* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @XGMAC_PORT_MODE_TX_M, align 4
  %33 = load i32, i32* @XGMAC_PORT_MODE_TX_S, align 4
  %34 = call i64 @dsaf_get_field(i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @XGMAC_PORT_MODE_RX_M, align 4
  %39 = load i32, i32* @XGMAC_PORT_MODE_RX_S, align 4
  %40 = call i64 @dsaf_get_field(i32 %37, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %36, %2
  %43 = phi i1 [ false, %2 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %46 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %48 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %47, i32 0, i32 1
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @MAC_SPEED_10000, align 4
  %50 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %51 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %53 = load i32, i32* @XGMAC_MAC_PAUSE_CTRL_REG, align 4
  %54 = call i32 @dsaf_read_dev(%struct.mac_driver* %52, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @XGMAC_PAUSE_CTL_RX_B, align 4
  %57 = call i8* @dsaf_get_bit(i32 %55, i32 %56)
  %58 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %59 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %58, i32 0, i32 3
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @XGMAC_PAUSE_CTL_TX_B, align 4
  %62 = call i8* @dsaf_get_bit(i32 %60, i32 %61)
  %63 = load %struct.mac_info*, %struct.mac_info** %4, align 8
  %64 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %63, i32 0, i32 2
  store i8* %62, i8** %64, align 8
  ret void
}

declare dso_local i32 @dsaf_read_dev(%struct.mac_driver*, i32) #1

declare dso_local i8* @dsaf_get_bit(i32, i32) #1

declare dso_local i64 @dsaf_get_field(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

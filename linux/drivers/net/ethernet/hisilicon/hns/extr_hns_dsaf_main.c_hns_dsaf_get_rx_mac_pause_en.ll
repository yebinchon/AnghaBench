; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_rx_mac_pause_en.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_main.c_hns_dsaf_get_rx_mac_pause_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsaf_device = type { i32 }

@DSAF_PAUSE_CFG_REG = common dso_local global i64 0, align 8
@DSAF_MAC_PAUSE_RX_EN_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hns_dsaf_get_rx_mac_pause_en(%struct.dsaf_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsaf_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.dsaf_device* %0, %struct.dsaf_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %7 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %8 = getelementptr inbounds %struct.dsaf_device, %struct.dsaf_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @AE_IS_VER1(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32*, i32** %6, align 8
  store i32 1, i32* %13, align 4
  br label %24

14:                                               ; preds = %3
  %15 = load %struct.dsaf_device*, %struct.dsaf_device** %4, align 8
  %16 = load i64, i64* @DSAF_PAUSE_CFG_REG, align 8
  %17 = load i32, i32* %5, align 4
  %18 = mul nsw i32 %17, 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %16, %19
  %21 = load i32, i32* @DSAF_MAC_PAUSE_RX_EN_B, align 4
  %22 = call i32 @dsaf_get_dev_bit(%struct.dsaf_device* %15, i64 %20, i32 %21)
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %14, %12
  ret void
}

declare dso_local i64 @AE_IS_VER1(i32) #1

declare dso_local i32 @dsaf_get_dev_bit(%struct.dsaf_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

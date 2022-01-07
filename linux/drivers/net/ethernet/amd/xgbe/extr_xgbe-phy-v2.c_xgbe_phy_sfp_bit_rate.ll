; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_bit_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_bit_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_sfp_eeprom = type { i64* }

@XGBE_SFP_BASE_BR_1GBE_MIN = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_BR_1GBE_MAX = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_BR_10GBE_MIN = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_BR_10GBE_MAX = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_BR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_sfp_eeprom*, i32)* @xgbe_phy_sfp_bit_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_sfp_bit_rate(%struct.xgbe_sfp_eeprom* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_sfp_eeprom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.xgbe_sfp_eeprom* %0, %struct.xgbe_sfp_eeprom** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %10 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  store i64* %11, i64** %6, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %19 [
    i32 129, label %13
    i32 128, label %16
  ]

13:                                               ; preds = %2
  %14 = load i64, i64* @XGBE_SFP_BASE_BR_1GBE_MIN, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @XGBE_SFP_BASE_BR_1GBE_MAX, align 8
  store i64 %15, i64* %8, align 8
  br label %20

16:                                               ; preds = %2
  %17 = load i64, i64* @XGBE_SFP_BASE_BR_10GBE_MIN, align 8
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* @XGBE_SFP_BASE_BR_10GBE_MAX, align 8
  store i64 %18, i64* %8, align 8
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

20:                                               ; preds = %16, %13
  %21 = load i64*, i64** %6, align 8
  %22 = load i64, i64* @XGBE_SFP_BASE_BR, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %20
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* @XGBE_SFP_BASE_BR, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %8, align 8
  %33 = icmp sle i64 %31, %32
  br label %34

34:                                               ; preds = %27, %20
  %35 = phi i1 [ false, %20 ], [ %33, %27 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %34, %19
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_mac_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_mac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i64, i64 }

@IXGB_CTRL0_RST = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP3_DIR = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP2_DIR = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP1_DIR = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP0_DIR = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP3 = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP2 = common dso_local global i32 0, align 4
@IXGB_CTRL0_SDP0 = common dso_local global i32 0, align 4
@CTRL0 = common dso_local global i32 0, align 4
@IXGB_DELAY_AFTER_RESET = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_SUN = common dso_local global i64 0, align 8
@IXGB_CTRL1_GPI0_EN = common dso_local global i32 0, align 4
@IXGB_CTRL1_SDP6_DIR = common dso_local global i32 0, align 4
@IXGB_CTRL1_SDP7_DIR = common dso_local global i32 0, align 4
@IXGB_CTRL1_SDP6 = common dso_local global i32 0, align 4
@IXGB_CTRL1_SDP7 = common dso_local global i32 0, align 4
@CTRL1 = common dso_local global i32 0, align 4
@ixgb_phy_type_txn17401 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_hw*)* @ixgb_mac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_mac_reset(%struct.ixgb_hw* %0) #0 {
  %2 = alloca %struct.ixgb_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %2, align 8
  %4 = load i32, i32* @IXGB_CTRL0_RST, align 4
  %5 = load i32, i32* @IXGB_CTRL0_SDP3_DIR, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @IXGB_CTRL0_SDP2_DIR, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @IXGB_CTRL0_SDP1_DIR, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @IXGB_CTRL0_SDP0_DIR, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @IXGB_CTRL0_SDP3, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @IXGB_CTRL0_SDP2, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @IXGB_CTRL0_SDP0, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %20 = load i32, i32* @CTRL0, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @IXGB_DELAY_AFTER_RESET, align 4
  %24 = call i32 @msleep(i32 %23)
  %25 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %26 = load i32, i32* @CTRL0, align 4
  %27 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %25, i32 %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @PCI_VENDOR_ID_SUN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %1
  %34 = load i32, i32* @IXGB_CTRL1_GPI0_EN, align 4
  %35 = load i32, i32* @IXGB_CTRL1_SDP6_DIR, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @IXGB_CTRL1_SDP7_DIR, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @IXGB_CTRL1_SDP6, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @IXGB_CTRL1_SDP7, align 4
  %42 = or i32 %40, %41
  store i32 %42, i32* %3, align 4
  %43 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %44 = load i32, i32* @CTRL1, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %43, i32 %44, i32 %45)
  %47 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %48 = call i32 @ixgb_optics_reset_bcm(%struct.ixgb_hw* %47)
  br label %49

49:                                               ; preds = %33, %1
  %50 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ixgb_hw, %struct.ixgb_hw* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @ixgb_phy_type_txn17401, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.ixgb_hw*, %struct.ixgb_hw** %2, align 8
  %57 = call i32 @ixgb_optics_reset(%struct.ixgb_hw* %56)
  br label %58

58:                                               ; preds = %55, %49
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @ixgb_optics_reset_bcm(%struct.ixgb_hw*) #1

declare dso_local i32 @ixgb_optics_reset(%struct.ixgb_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

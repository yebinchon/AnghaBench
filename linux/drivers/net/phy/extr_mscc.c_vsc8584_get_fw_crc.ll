; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_get_fw_crc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc8584_get_fw_crc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MSCC_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED = common dso_local global i32 0, align 4
@MSCC_PHY_VERIPHY_CNTL_2 = common dso_local global i32 0, align 4
@MSCC_PHY_VERIPHY_CNTL_3 = common dso_local global i32 0, align 4
@PROC_CMD_CRC16 = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32, i32*)* @vsc8584_get_fw_crc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc8584_get_fw_crc(%struct.phy_device* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %11 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %12 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED, align 4
  %13 = call i32 @phy_base_write(%struct.phy_device* %10, i32 %11, i32 %12)
  %14 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %15 = load i32, i32* @MSCC_PHY_VERIPHY_CNTL_2, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @phy_base_write(%struct.phy_device* %14, i32 %15, i32 %16)
  %18 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %19 = load i32, i32* @MSCC_PHY_VERIPHY_CNTL_3, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @phy_base_write(%struct.phy_device* %18, i32 %19, i32 %20)
  %22 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %23 = load i32, i32* @PROC_CMD_CRC16, align 4
  %24 = call i32 @vsc8584_cmd(%struct.phy_device* %22, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %37

28:                                               ; preds = %4
  %29 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %30 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %31 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED, align 4
  %32 = call i32 @phy_base_write(%struct.phy_device* %29, i32 %30, i32 %31)
  %33 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %34 = load i32, i32* @MSCC_PHY_VERIPHY_CNTL_2, align 4
  %35 = call i32 @phy_base_read(%struct.phy_device* %33, i32 %34)
  %36 = load i32*, i32** %8, align 8
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %27
  %38 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %39 = load i32, i32* @MSCC_EXT_PAGE_ACCESS, align 4
  %40 = load i32, i32* @MSCC_PHY_PAGE_STANDARD, align 4
  %41 = call i32 @phy_base_write(%struct.phy_device* %38, i32 %39, i32 %40)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @phy_base_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @vsc8584_cmd(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_base_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

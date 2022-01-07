; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_wait_for_sfp_module_initialized.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_wait_for_sfp_module_initialized.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i64 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT = common dso_local global i64 0, align 8
@I2C_DEV_ADDR_A0 = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"SFP+ module initialization took %d ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_wait_for_sfp_module_initialized to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_wait_for_sfp_module_initialized(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  %10 = load %struct.link_params*, %struct.link_params** %5, align 8
  %11 = getelementptr inbounds %struct.link_params, %struct.link_params* %10, i32 0, i32 0
  %12 = load %struct.bnx2x*, %struct.bnx2x** %11, align 8
  store %struct.bnx2x* %12, %struct.bnx2x** %8, align 8
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %42, %2
  %14 = load i32, i32* %9, align 4
  %15 = icmp slt i32 %14, 60
  br i1 %15, label %16, label %45

16:                                               ; preds = %13
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_DIRECT, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %24 = load %struct.link_params*, %struct.link_params** %5, align 8
  %25 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %26 = call i32 @bnx2x_warpcore_read_sfp_module_eeprom(%struct.bnx2x_phy* %23, %struct.link_params* %24, i32 %25, i32 1, i32 1, i32* %6, i32 1)
  store i32 %26, i32* %7, align 4
  br label %32

27:                                               ; preds = %16
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %29 = load %struct.link_params*, %struct.link_params** %5, align 8
  %30 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %31 = call i32 @bnx2x_read_sfp_module_eeprom(%struct.bnx2x_phy* %28, %struct.link_params* %29, i32 %30, i32 1, i32 1, i32* %6)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %32
  %36 = load i32, i32* @NETIF_MSG_LINK, align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 5
  %39 = call i32 @DP(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %3, align 4
  br label %51

40:                                               ; preds = %32
  %41 = call i32 @usleep_range(i32 5000, i32 10000)
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %13

45:                                               ; preds = %13
  %46 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %47 = load %struct.link_params*, %struct.link_params** %5, align 8
  %48 = load i32, i32* @I2C_DEV_ADDR_A0, align 4
  %49 = call i32 @bnx2x_read_sfp_module_eeprom(%struct.bnx2x_phy* %46, %struct.link_params* %47, i32 %48, i32 1, i32 1, i32* %6)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @bnx2x_warpcore_read_sfp_module_eeprom(%struct.bnx2x_phy*, %struct.link_params*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @bnx2x_read_sfp_module_eeprom(%struct.bnx2x_phy*, %struct.link_params*, i32, i32, i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_phy_connect_direct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_phy_connect_direct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i32 }
%struct.fixed_phy_status = type { i32, i32, i32 }
%struct.phy_device = type { i32 }

@DUPLEX_FULL = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@PHY_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to register fixed PHY device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@bgmac_adjust_link = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MII = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Connecting PHY failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bgmac_phy_connect_direct(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.fixed_phy_status, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %7 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 1
  %9 = load i32, i32* @DUPLEX_FULL, align 4
  store i32 %9, i32* %8, align 4
  %10 = getelementptr inbounds %struct.fixed_phy_status, %struct.fixed_phy_status* %4, i32 0, i32 2
  %11 = load i32, i32* @SPEED_1000, align 4
  store i32 %11, i32* %10, align 4
  %12 = load i32, i32* @PHY_POLL, align 4
  %13 = call %struct.phy_device* @fixed_phy_register(i32 %12, %struct.fixed_phy_status* %4, i32* null)
  store %struct.phy_device* %13, %struct.phy_device** %5, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %15 = icmp ne %struct.phy_device* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %18 = call i64 @IS_ERR(%struct.phy_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16, %1
  %21 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %22 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dev_err(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %16
  %28 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %29 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %32 = load i32, i32* @bgmac_adjust_link, align 4
  %33 = load i32, i32* @PHY_INTERFACE_MODE_MII, align 4
  %34 = call i32 @phy_connect_direct(i32 %30, %struct.phy_device* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %39 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_err(i32 %40, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %45

43:                                               ; preds = %27
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %37, %20
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.phy_device* @fixed_phy_register(i32, %struct.fixed_phy_status*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @phy_connect_direct(i32, %struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

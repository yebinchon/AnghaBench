; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_probe_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_sm_probe_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { %struct.phy_device*, i32, i32, i32 }
%struct.phy_device = type { i32 }

@T_PHY_RESET_MS = common dso_local global i32 0, align 4
@SFP_PHY_ADDR = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no PHY detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"mdiobus scan returned %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"sfp_add_phy failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*)* @sfp_sm_probe_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_sm_probe_phy(%struct.sfp* %0) #0 {
  %2 = alloca %struct.sfp*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %2, align 8
  %5 = load i32, i32* @T_PHY_RESET_MS, align 4
  %6 = call i32 @msleep(i32 %5)
  %7 = load %struct.sfp*, %struct.sfp** %2, align 8
  %8 = getelementptr inbounds %struct.sfp, %struct.sfp* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @SFP_PHY_ADDR, align 4
  %11 = call %struct.phy_device* @mdiobus_scan(i32 %9, i32 %10)
  store %struct.phy_device* %11, %struct.phy_device** %3, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.phy_device* @ERR_PTR(i32 %14)
  %16 = icmp eq %struct.phy_device* %12, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.sfp*, %struct.sfp** %2, align 8
  %19 = getelementptr inbounds %struct.sfp, %struct.sfp* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @dev_info(i32 %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %57

22:                                               ; preds = %1
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = call i64 @IS_ERR(%struct.phy_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %22
  %27 = load %struct.sfp*, %struct.sfp** %2, align 8
  %28 = getelementptr inbounds %struct.sfp, %struct.sfp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = call i32 @PTR_ERR(%struct.phy_device* %30)
  %32 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %57

33:                                               ; preds = %22
  %34 = load %struct.sfp*, %struct.sfp** %2, align 8
  %35 = getelementptr inbounds %struct.sfp, %struct.sfp* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = call i32 @sfp_add_phy(i32 %36, %struct.phy_device* %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %33
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @phy_device_remove(%struct.phy_device* %42)
  %44 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %45 = call i32 @phy_device_free(%struct.phy_device* %44)
  %46 = load %struct.sfp*, %struct.sfp** %2, align 8
  %47 = getelementptr inbounds %struct.sfp, %struct.sfp* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %57

51:                                               ; preds = %33
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = load %struct.sfp*, %struct.sfp** %2, align 8
  %54 = getelementptr inbounds %struct.sfp, %struct.sfp* %53, i32 0, i32 0
  store %struct.phy_device* %52, %struct.phy_device** %54, align 8
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = call i32 @phy_start(%struct.phy_device* %55)
  br label %57

57:                                               ; preds = %51, %41, %26, %17
  ret void
}

declare dso_local i32 @msleep(i32) #1

declare dso_local %struct.phy_device* @mdiobus_scan(i32, i32) #1

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @sfp_add_phy(i32, %struct.phy_device*) #1

declare dso_local i32 @phy_device_remove(%struct.phy_device*) #1

declare dso_local i32 @phy_device_free(%struct.phy_device*) #1

declare dso_local i32 @phy_start(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

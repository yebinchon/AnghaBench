; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_get_reg_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_get_reg_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.adin_cfg_reg_map = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Unsupported value %u for %s using default (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i8*, %struct.adin_cfg_reg_map*, i32)* @adin_get_reg_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_get_reg_value(%struct.phy_device* %0, i8* %1, %struct.adin_cfg_reg_map* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.adin_cfg_reg_map*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.adin_cfg_reg_map* %2, %struct.adin_cfg_reg_map** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %14 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %10, align 8
  %16 = load %struct.device*, %struct.device** %10, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = call i64 @device_property_read_u32(%struct.device* %16, i8* %17, i32* %11)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %5, align 4
  br label %37

22:                                               ; preds = %4
  %23 = load %struct.adin_cfg_reg_map*, %struct.adin_cfg_reg_map** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @adin_lookup_reg_value(%struct.adin_cfg_reg_map* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @phydev_warn(%struct.phy_device* %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %30, i8* %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %5, align 4
  br label %37

35:                                               ; preds = %22
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %35, %28, %20
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @device_property_read_u32(%struct.device*, i8*, i32*) #1

declare dso_local i32 @adin_lookup_reg_value(%struct.adin_cfg_reg_map*, i32) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

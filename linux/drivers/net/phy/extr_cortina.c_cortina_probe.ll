; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_cortina.c_cortina_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_cortina.c_cortina_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@VILLA_GLOBAL_CHIP_ID_LSB = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@VILLA_GLOBAL_CHIP_ID_MSB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error matching phy with %s driver\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @cortina_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cortina_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = load i32, i32* @VILLA_GLOBAL_CHIP_ID_LSB, align 4
  %9 = call i32 @cortina_read_reg(%struct.phy_device* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %48

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 16
  store i32 %17, i32* %4, align 4
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @VILLA_GLOBAL_CHIP_ID_MSB, align 4
  %20 = call i32 @cortina_read_reg(%struct.phy_device* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15
  %24 = load i32, i32* @ENXIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %48

26:                                               ; preds = %15
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %30, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %26
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @phydev_err(%struct.phy_device* %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %37, %23, %12
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @cortina_read_reg(%struct.phy_device*, i32) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

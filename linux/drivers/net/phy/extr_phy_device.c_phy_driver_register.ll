; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_driver = type { i32, %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.module*, i32, i32, i32*, i32 }
%struct.module = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"%s: features and get_features must not both be set\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MDIO_DEVICE_IS_PHY = common dso_local global i32 0, align 4
@mdio_bus_type = common dso_local global i32 0, align 4
@phy_probe = common dso_local global i32 0, align 4
@phy_remove = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%s: Error %d in registering driver\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"%s: Registered new driver\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_driver_register(%struct.phy_driver* %0, %struct.module* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_driver*, align 8
  %5 = alloca %struct.module*, align 8
  %6 = alloca i32, align 4
  store %struct.phy_driver* %0, %struct.phy_driver** %4, align 8
  store %struct.module* %1, %struct.module** %5, align 8
  %7 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %8 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %13 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br label %16

16:                                               ; preds = %11, %2
  %17 = phi i1 [ false, %2 ], [ %15, %11 ]
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %23 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %79

28:                                               ; preds = %16
  %29 = load i32, i32* @MDIO_DEVICE_IS_PHY, align 4
  %30 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %31 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 8
  %35 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %36 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %39 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 4
  store i32 %37, i32* %41, align 8
  %42 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %43 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 3
  store i32* @mdio_bus_type, i32** %45, align 8
  %46 = load i32, i32* @phy_probe, align 4
  %47 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %48 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 4
  %51 = load i32, i32* @phy_remove, align 4
  %52 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %53 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 8
  %56 = load %struct.module*, %struct.module** %5, align 8
  %57 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %58 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store %struct.module* %56, %struct.module** %60, align 8
  %61 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %62 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = call i32 @driver_register(%struct.TYPE_4__* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %28
  %68 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %69 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %28
  %75 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %76 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %67, %21
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i32 @driver_register(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

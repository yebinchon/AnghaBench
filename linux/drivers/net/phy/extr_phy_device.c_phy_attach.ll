; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { i32 }
%struct.phy_device = type { i32 }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@mdio_bus_type = common dso_local global %struct.bus_type zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"PHY %s not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.phy_device* @phy_attach(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bus_type*, align 8
  %9 = alloca %struct.phy_device*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.bus_type* @mdio_bus_type, %struct.bus_type** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = icmp ne %struct.net_device* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.phy_device* @ERR_PTR(i32 %16)
  store %struct.phy_device* %17, %struct.phy_device** %4, align 8
  br label %49

18:                                               ; preds = %3
  %19 = load %struct.bus_type*, %struct.bus_type** %8, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call %struct.device* @bus_find_device_by_name(%struct.bus_type* %19, i32* null, i8* %20)
  store %struct.device* %21, %struct.device** %10, align 8
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = icmp ne %struct.device* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.phy_device* @ERR_PTR(i32 %28)
  store %struct.phy_device* %29, %struct.phy_device** %4, align 8
  br label %49

30:                                               ; preds = %18
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = call %struct.phy_device* @to_phy_device(%struct.device* %31)
  store %struct.phy_device* %32, %struct.phy_device** %9, align 8
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %35 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @phy_attach_direct(%struct.net_device* %33, %struct.phy_device* %34, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.device*, %struct.device** %10, align 8
  %41 = call i32 @put_device(%struct.device* %40)
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %30
  %45 = load i32, i32* %11, align 4
  %46 = call %struct.phy_device* @ERR_PTR(i32 %45)
  store %struct.phy_device* %46, %struct.phy_device** %4, align 8
  br label %49

47:                                               ; preds = %30
  %48 = load %struct.phy_device*, %struct.phy_device** %9, align 8
  store %struct.phy_device* %48, %struct.phy_device** %4, align 8
  br label %49

49:                                               ; preds = %47, %44, %24, %14
  %50 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  ret %struct.phy_device* %50
}

declare dso_local %struct.phy_device* @ERR_PTR(i32) #1

declare dso_local %struct.device* @bus_find_device_by_name(%struct.bus_type*, i32*, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

declare dso_local %struct.phy_device* @to_phy_device(%struct.device*) #1

declare dso_local i32 @phy_attach_direct(%struct.net_device*, %struct.phy_device*, i32, i32) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

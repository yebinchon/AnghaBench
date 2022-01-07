; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_sysfs_create_links.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_sysfs_create_links.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"attached_dev\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"phydev\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"could not add device link to %s err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @phy_sysfs_create_links to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_sysfs_create_links(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 2
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = icmp ne %struct.net_device* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %47

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = call i32 @sysfs_create_link(i32* %15, i32* %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %47

23:                                               ; preds = %11
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = call i32 @sysfs_create_link_nowarn(i32* %26, i32* %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = call i32 @kobject_name(i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_err(%struct.TYPE_6__* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %23
  %45 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %46 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %22, %10
  ret void
}

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @sysfs_create_link_nowarn(i32*, i32*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*, i32, i32) #1

declare dso_local i32 @kobject_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

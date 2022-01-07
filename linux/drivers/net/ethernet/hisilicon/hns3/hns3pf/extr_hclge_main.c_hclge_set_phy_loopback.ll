; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_phy_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_phy_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.phy_device* }
%struct.phy_device = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"set phy loopback fail, ret = %d\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"phy loopback config mac mode timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32)* @hclge_set_phy_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_phy_loopback(%struct.hclge_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %9 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.phy_device*, %struct.phy_device** %11, align 8
  store %struct.phy_device* %12, %struct.phy_device** %6, align 8
  %13 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %14 = icmp ne %struct.phy_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %58

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %23 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %24 = call i32 @hclge_enable_phy_loopback(%struct.hclge_dev* %22, %struct.phy_device* %23)
  store i32 %24, i32* %7, align 4
  br label %29

25:                                               ; preds = %18
  %26 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %27 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %28 = call i32 @hclge_disable_phy_loopback(%struct.hclge_dev* %26, %struct.phy_device* %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %34 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %58

40:                                               ; preds = %29
  %41 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @hclge_cfg_mac_mode(%struct.hclge_dev* %41, i32 %42)
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @TRUE, align 4
  %47 = call i32 @hclge_mac_phy_link_status_wait(%struct.hclge_dev* %44, i32 %45, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %40
  %51 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %52 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %50, %40
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %32, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @hclge_enable_phy_loopback(%struct.hclge_dev*, %struct.phy_device*) #1

declare dso_local i32 @hclge_disable_phy_loopback(%struct.hclge_dev*, %struct.phy_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclge_cfg_mac_mode(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_mac_phy_link_status_wait(%struct.hclge_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

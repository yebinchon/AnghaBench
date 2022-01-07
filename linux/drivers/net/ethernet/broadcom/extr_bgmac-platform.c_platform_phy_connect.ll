; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_platform_phy_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-platform.c_platform_phy_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.phy_device = type { i32 }

@bgmac_nicpm_speed_set = common dso_local global i32 0, align 4
@bgmac_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PHY connection failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bgmac*)* @platform_phy_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @platform_phy_connect(%struct.bgmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bgmac*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.bgmac* %0, %struct.bgmac** %3, align 8
  %5 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %6 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %12 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %15 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @bgmac_nicpm_speed_set, align 4
  %20 = call %struct.phy_device* @of_phy_get_and_connect(i32 %13, i32 %18, i32 %19)
  store %struct.phy_device* %20, %struct.phy_device** %4, align 8
  br label %32

21:                                               ; preds = %1
  %22 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %23 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %26 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @bgmac_adjust_link, align 4
  %31 = call %struct.phy_device* @of_phy_get_and_connect(i32 %24, i32 %29, i32 %30)
  store %struct.phy_device* %31, %struct.phy_device** %4, align 8
  br label %32

32:                                               ; preds = %21, %10
  %33 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %34 = icmp ne %struct.phy_device* %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %32
  %36 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %37 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @dev_err(%struct.TYPE_4__* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %43

42:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %35
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local %struct.phy_device* @of_phy_get_and_connect(i32, i32, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

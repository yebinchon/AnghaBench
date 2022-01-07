; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32, %struct.ice_phy_info }
%struct.ice_phy_info = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ICE_ERR_PARAM = common dso_local global i32 0, align 4
@ICE_DBG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"get link status error, status = %d\0A\00", align 1
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_get_link_status(%struct.ice_port_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_port_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ice_phy_info*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %9 = icmp ne %struct.ice_port_info* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @ICE_ERR_PARAM, align 4
  store i32 %14, i32* %3, align 4
  br label %44

15:                                               ; preds = %10
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %17 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %16, i32 0, i32 1
  store %struct.ice_phy_info* %17, %struct.ice_phy_info** %6, align 8
  %18 = load %struct.ice_phy_info*, %struct.ice_phy_info** %6, align 8
  %19 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %24 = call i32 @ice_update_link_info(%struct.ice_port_info* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.ice_port_info*, %struct.ice_port_info** %4, align 8
  %29 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ICE_DBG_LINK, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @ice_debug(i32 %30, i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %27, %22
  br label %35

35:                                               ; preds = %34, %15
  %36 = load %struct.ice_phy_info*, %struct.ice_phy_info** %6, align 8
  %37 = getelementptr inbounds %struct.ice_phy_info, %struct.ice_phy_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %41 = and i32 %39, %40
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %35, %13
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ice_update_link_info(%struct.ice_port_info*) #1

declare dso_local i32 @ice_debug(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

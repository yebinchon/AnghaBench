; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_cfg_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_cfg_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ice_hw }
%struct.ice_hw = type { i32 }

@ICE_VSI_PF = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*, i32, i32)* @ice_cfg_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_cfg_promisc(%struct.ice_vsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_vsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ice_hw*, align 8
  %9 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ice_hw* %13, %struct.ice_hw** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %15 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @ICE_VSI_PF, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %58

20:                                               ; preds = %3
  %21 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %22 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %20
  %26 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ice_set_vlan_vsi_promisc(%struct.ice_hw* %26, i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %9, align 4
  br label %51

33:                                               ; preds = %20
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %38 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %39 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ice_set_vsi_promisc(%struct.ice_hw* %37, i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %9, align 4
  br label %50

43:                                               ; preds = %33
  %44 = load %struct.ice_hw*, %struct.ice_hw** %8, align 8
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %5, align 8
  %46 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @ice_clear_vsi_promisc(%struct.ice_hw* %44, i32 %47, i32 %48, i32 0)
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %25
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54, %19
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @ice_set_vlan_vsi_promisc(%struct.ice_hw*, i32, i32, i32) #1

declare dso_local i32 @ice_set_vsi_promisc(%struct.ice_hw*, i32, i32, i32) #1

declare dso_local i32 @ice_clear_vsi_promisc(%struct.ice_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

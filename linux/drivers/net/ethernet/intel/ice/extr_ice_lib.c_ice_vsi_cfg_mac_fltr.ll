; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_mac_fltr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_cfg_mac_fltr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@tmp_add_list = common dso_local global i32 0, align 4
@ICE_ERR_NO_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_cfg_mac_fltr(%struct.ice_vsi* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @tmp_add_list, align 4
  %9 = call i32 @LIST_HEAD(i32 %8)
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @ice_add_mac_to_list(%struct.ice_vsi* %10, i32* @tmp_add_list, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ICE_ERR_NO_MEMORY, align 4
  store i32 %15, i32* %7, align 4
  br label %32

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = call i32 @ice_add_mac(i32* %23, i32* @tmp_add_list)
  store i32 %24, i32* %7, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %27 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = call i32 @ice_remove_mac(i32* %29, i32* @tmp_add_list)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %25, %19
  br label %32

32:                                               ; preds = %31, %14
  %33 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %34 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @ice_free_fltr_list(i32* %38, i32* @tmp_add_list)
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i64 @ice_add_mac_to_list(%struct.ice_vsi*, i32*, i32*) #1

declare dso_local i32 @ice_add_mac(i32*, i32*) #1

declare dso_local i32 @ice_remove_mac(i32*, i32*) #1

declare dso_local i32 @ice_free_fltr_list(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

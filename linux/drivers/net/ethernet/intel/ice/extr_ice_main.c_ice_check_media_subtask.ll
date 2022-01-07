; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_check_media_subtask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_check_media_subtask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32 }
%struct.ice_port_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ice_vsi = type { %struct.ice_port_info*, i32 }

@ICE_FLAG_NO_MEDIA = common dso_local global i32 0, align 4
@__ICE_DOWN = common dso_local global i32 0, align 4
@ICE_AQ_MEDIA_AVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_pf*)* @ice_check_media_subtask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_check_media_subtask(%struct.ice_pf* %0) #0 {
  %2 = alloca %struct.ice_pf*, align 8
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca %struct.ice_vsi*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %2, align 8
  %6 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %7 = call %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf* %6)
  store %struct.ice_vsi* %7, %struct.ice_vsi** %4, align 8
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %9 = icmp ne %struct.ice_vsi* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %56

11:                                               ; preds = %1
  %12 = load i32, i32* @ICE_FLAG_NO_MEDIA, align 4
  %13 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load i32, i32* @__ICE_DOWN, align 4
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @test_bit(i32 %19, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %11
  br label %56

26:                                               ; preds = %18
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 0
  %29 = load %struct.ice_port_info*, %struct.ice_port_info** %28, align 8
  store %struct.ice_port_info* %29, %struct.ice_port_info** %3, align 8
  %30 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %31 = call i32 @ice_update_link_info(%struct.ice_port_info* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  br label %56

35:                                               ; preds = %26
  %36 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @ICE_AQ_MEDIA_AVAILABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %35
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %4, align 8
  %46 = call i32 @ice_force_phys_link_state(%struct.ice_vsi* %45, i32 1)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %56

50:                                               ; preds = %44
  %51 = load i32, i32* @ICE_FLAG_NO_MEDIA, align 4
  %52 = load %struct.ice_pf*, %struct.ice_pf** %2, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @clear_bit(i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %10, %25, %34, %49, %50, %35
  ret void
}

declare dso_local %struct.ice_vsi* @ice_get_main_vsi(%struct.ice_pf*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_update_link_info(%struct.ice_port_info*) #1

declare dso_local i32 @ice_force_phys_link_state(%struct.ice_vsi*, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

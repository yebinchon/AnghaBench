; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_pfe_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_set_pfe_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32 }
%struct.virtchnl_pf_event = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }

@VIRTCHNL_VF_CAP_ADV_LINK_SPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*, %struct.virtchnl_pf_event*, i32, i32)* @ice_set_pfe_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_set_pfe_link(%struct.ice_vf* %0, %struct.virtchnl_pf_event* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ice_vf*, align 8
  %6 = alloca %struct.virtchnl_pf_event*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %5, align 8
  store %struct.virtchnl_pf_event* %1, %struct.virtchnl_pf_event** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.ice_vf*, %struct.ice_vf** %5, align 8
  %10 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @VIRTCHNL_VF_CAP_ADV_LINK_SPEED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.virtchnl_pf_event*, %struct.virtchnl_pf_event** %6, align 8
  %18 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @ice_conv_link_speed_to_virtchnl(i32 1, i32 %21)
  %23 = load %struct.virtchnl_pf_event*, %struct.virtchnl_pf_event** %6, align 8
  %24 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  store i64 %22, i64* %26, align 8
  br label %40

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.virtchnl_pf_event*, %struct.virtchnl_pf_event** %6, align 8
  %30 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %28, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @ice_conv_link_speed_to_virtchnl(i32 0, i32 %33)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.virtchnl_pf_event*, %struct.virtchnl_pf_event** %6, align 8
  %37 = getelementptr inbounds %struct.virtchnl_pf_event, %struct.virtchnl_pf_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %27, %15
  ret void
}

declare dso_local i64 @ice_conv_link_speed_to_virtchnl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

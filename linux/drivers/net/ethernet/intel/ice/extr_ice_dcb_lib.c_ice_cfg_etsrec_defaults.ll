; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_cfg_etsrec_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_dcb_lib.c_ice_cfg_etsrec_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { %struct.ice_dcbx_cfg }
%struct.ice_dcbx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32* }

@ICE_MAX_TRAFFIC_CLASS = common dso_local global i64 0, align 8
@ICE_IEEE_TSA_STRICT = common dso_local global i32 0, align 4
@ICE_IEEE_TSA_ETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_port_info*)* @ice_cfg_etsrec_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_cfg_etsrec_defaults(%struct.ice_port_info* %0) #0 {
  %2 = alloca %struct.ice_port_info*, align 8
  %3 = alloca %struct.ice_dcbx_cfg*, align 8
  %4 = alloca i64, align 8
  store %struct.ice_port_info* %0, %struct.ice_port_info** %2, align 8
  %5 = load %struct.ice_port_info*, %struct.ice_port_info** %2, align 8
  %6 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %5, i32 0, i32 0
  store %struct.ice_dcbx_cfg* %6, %struct.ice_dcbx_cfg** %3, align 8
  %7 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %3, align 8
  %8 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %3, align 8
  %15 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  store i64 0, i64* %4, align 8
  br label %17

17:                                               ; preds = %46, %13
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @ICE_MAX_TRAFFIC_CLASS, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %17
  %22 = load i64, i64* %4, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 0, i32 100
  %26 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %3, align 8
  %27 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 %25, i32* %31, align 4
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i32, i32* @ICE_IEEE_TSA_STRICT, align 4
  br label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @ICE_IEEE_TSA_ETS, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load %struct.ice_dcbx_cfg*, %struct.ice_dcbx_cfg** %3, align 8
  %41 = getelementptr inbounds %struct.ice_dcbx_cfg, %struct.ice_dcbx_cfg* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* %4, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %39, i32* %45, align 4
  br label %46

46:                                               ; preds = %38
  %47 = load i64, i64* %4, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %4, align 8
  br label %17

49:                                               ; preds = %12, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

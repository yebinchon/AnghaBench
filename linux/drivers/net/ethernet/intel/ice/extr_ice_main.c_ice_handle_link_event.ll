; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_handle_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_handle_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ice_port_info* }
%struct.ice_port_info = type { i32 }
%struct.ice_rq_event_info = type { i64 }
%struct.ice_aqc_get_link_status_data = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ICE_AQ_LINK_UP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Could not process link event, error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, %struct.ice_rq_event_info*)* @ice_handle_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_handle_link_event(%struct.ice_pf* %0, %struct.ice_rq_event_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca %struct.ice_rq_event_info*, align 8
  %6 = alloca %struct.ice_aqc_get_link_status_data*, align 8
  %7 = alloca %struct.ice_port_info*, align 8
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %4, align 8
  store %struct.ice_rq_event_info* %1, %struct.ice_rq_event_info** %5, align 8
  %9 = load %struct.ice_rq_event_info*, %struct.ice_rq_event_info** %5, align 8
  %10 = getelementptr inbounds %struct.ice_rq_event_info, %struct.ice_rq_event_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ice_aqc_get_link_status_data*
  store %struct.ice_aqc_get_link_status_data* %12, %struct.ice_aqc_get_link_status_data** %6, align 8
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.ice_port_info*, %struct.ice_port_info** %15, align 8
  store %struct.ice_port_info* %16, %struct.ice_port_info** %7, align 8
  %17 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %18 = icmp ne %struct.ice_port_info* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %24 = load %struct.ice_port_info*, %struct.ice_port_info** %7, align 8
  %25 = load %struct.ice_aqc_get_link_status_data*, %struct.ice_aqc_get_link_status_data** %6, align 8
  %26 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ICE_AQ_LINK_UP, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = load %struct.ice_aqc_get_link_status_data*, %struct.ice_aqc_get_link_status_data** %6, align 8
  %35 = getelementptr inbounds %struct.ice_aqc_get_link_status_data, %struct.ice_aqc_get_link_status_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = call i32 @ice_link_event(%struct.ice_pf* %23, %struct.ice_port_info* %24, i32 %33, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %43 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @dev_dbg(i32* %45, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %22
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @ice_link_event(%struct.ice_pf*, %struct.ice_port_info*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_link_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_init_link_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_port_info = type { i32, i32 }

@ICE_AQ_LINK_EVENT_UPDOWN = common dso_local global i32 0, align 4
@ICE_AQ_LINK_EVENT_MEDIA_NA = common dso_local global i32 0, align 4
@ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Failed to set link event mask for port %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to enable link events for port %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_port_info*)* @ice_init_link_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_init_link_events(%struct.ice_port_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_port_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ice_port_info* %0, %struct.ice_port_info** %3, align 8
  %5 = load i32, i32* @ICE_AQ_LINK_EVENT_UPDOWN, align 4
  %6 = load i32, i32* @ICE_AQ_LINK_EVENT_MEDIA_NA, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @ICE_AQ_LINK_EVENT_MODULE_QUAL_FAIL, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %12 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %15 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @ice_aq_set_event_mask(i32 %13, i32 %16, i32 %17, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %1
  %21 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %22 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ice_hw_to_dev(i32 %23)
  %25 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %26 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %47

31:                                               ; preds = %1
  %32 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %33 = call i64 @ice_aq_get_link_info(%struct.ice_port_info* %32, i32 1, i32* null, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %37 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ice_hw_to_dev(i32 %38)
  %40 = load %struct.ice_port_info*, %struct.ice_port_info** %3, align 8
  %41 = getelementptr inbounds %struct.ice_port_info, %struct.ice_port_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %35, %20
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @ice_aq_set_event_mask(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ice_hw_to_dev(i32) #1

declare dso_local i64 @ice_aq_get_link_info(%struct.ice_port_info*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

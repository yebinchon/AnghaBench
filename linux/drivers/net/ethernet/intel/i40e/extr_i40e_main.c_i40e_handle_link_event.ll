; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_handle_link_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_handle_link_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.i40e_arq_event_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.i40e_aqc_get_link_status = type { i64, i32, i32 }

@I40E_PHY_TYPE_NOT_SUPPORTED_HIGH_TEMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [89 x i8] c"Rx/Tx is disabled on this device because the module does not meet thermal requirements.\0A\00", align 1
@.str.1 = private unnamed_addr constant [97 x i8] c"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\0A\00", align 1
@I40E_AQ_MEDIA_AVAILABLE = common dso_local global i32 0, align 4
@I40E_AQ_QUALIFIED_MODULE = common dso_local global i32 0, align 4
@I40E_AQ_LINK_UP = common dso_local global i32 0, align 4
@I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [87 x i8] c"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*, %struct.i40e_arq_event_info*)* @i40e_handle_link_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_handle_link_event(%struct.i40e_pf* %0, %struct.i40e_arq_event_info* %1) #0 {
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_arq_event_info*, align 8
  %5 = alloca %struct.i40e_aqc_get_link_status*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %3, align 8
  store %struct.i40e_arq_event_info* %1, %struct.i40e_arq_event_info** %4, align 8
  %6 = load %struct.i40e_arq_event_info*, %struct.i40e_arq_event_info** %4, align 8
  %7 = getelementptr inbounds %struct.i40e_arq_event_info, %struct.i40e_arq_event_info* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.i40e_aqc_get_link_status*
  store %struct.i40e_aqc_get_link_status* %10, %struct.i40e_aqc_get_link_status** %5, align 8
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %12 = call i32 @i40e_link_event(%struct.i40e_pf* %11)
  %13 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %5, align 8
  %14 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @I40E_PHY_TYPE_NOT_SUPPORTED_HIGH_TEMP, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = call i32 @dev_err(i32* %22, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %25 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  br label %69

29:                                               ; preds = %2
  %30 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %5, align 8
  %31 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @I40E_AQ_MEDIA_AVAILABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %68

36:                                               ; preds = %29
  %37 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %5, align 8
  %38 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @I40E_AQ_QUALIFIED_MODULE, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %68, label %43

43:                                               ; preds = %36
  %44 = load %struct.i40e_aqc_get_link_status*, %struct.i40e_aqc_get_link_status** %5, align 8
  %45 = getelementptr inbounds %struct.i40e_aqc_get_link_status, %struct.i40e_aqc_get_link_status* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @I40E_AQ_LINK_UP, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %68, label %50

50:                                               ; preds = %43
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %50
  %58 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %59 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %64 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @dev_err(i32* %66, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0))
  br label %68

68:                                               ; preds = %57, %50, %43, %36, %29
  br label %69

69:                                               ; preds = %68, %18
  ret void
}

declare dso_local i32 @i40e_link_event(%struct.i40e_pf*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

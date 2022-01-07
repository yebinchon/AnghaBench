; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_output_fw_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_output_fw_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aq_desc = type { i32 }

@ICE_DBG_FW_LOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"[ FW Log Msg Start ]\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"[ FW Log Msg End ]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_output_fw_log(%struct.ice_hw* %0, %struct.ice_aq_desc* %1, i8* %2) #0 {
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca %struct.ice_aq_desc*, align 8
  %6 = alloca i8*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %4, align 8
  store %struct.ice_aq_desc* %1, %struct.ice_aq_desc** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %8 = load i32, i32* @ICE_DBG_FW_LOG, align 4
  %9 = call i32 @ice_debug(%struct.ice_hw* %7, i32 %8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %11 = load i32, i32* @ICE_DBG_FW_LOG, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to i32*
  %14 = load %struct.ice_aq_desc*, %struct.ice_aq_desc** %5, align 8
  %15 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @le16_to_cpu(i32 %16)
  %18 = call i32 @ice_debug_array(%struct.ice_hw* %10, i32 %11, i32 16, i32 1, i32* %13, i32 %17)
  %19 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %20 = load i32, i32* @ICE_DBG_FW_LOG, align 4
  %21 = call i32 @ice_debug(%struct.ice_hw* %19, i32 %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ice_debug(%struct.ice_hw*, i32, i8*) #1

declare dso_local i32 @ice_debug_array(%struct.ice_hw*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

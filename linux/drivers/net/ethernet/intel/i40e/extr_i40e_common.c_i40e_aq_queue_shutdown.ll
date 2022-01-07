; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_queue_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_aq_queue_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_aqc_queue_shutdown = type { i32 }

@i40e_aqc_opc_queue_shutdown = common dso_local global i32 0, align 4
@I40E_AQ_DRIVER_UNLOADING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_queue_shutdown(%struct.i40e_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_aq_desc, align 4
  %6 = alloca %struct.i40e_aqc_queue_shutdown*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.i40e_aq_desc, %struct.i40e_aq_desc* %5, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to %struct.i40e_aqc_queue_shutdown*
  store %struct.i40e_aqc_queue_shutdown* %10, %struct.i40e_aqc_queue_shutdown** %6, align 8
  %11 = load i32, i32* @i40e_aqc_opc_queue_shutdown, align 4
  %12 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %5, i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @I40E_AQ_DRIVER_UNLOADING, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  %18 = load %struct.i40e_aqc_queue_shutdown*, %struct.i40e_aqc_queue_shutdown** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_aqc_queue_shutdown, %struct.i40e_aqc_queue_shutdown* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %20

20:                                               ; preds = %15, %2
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %21, %struct.i40e_aq_desc* %5, i32* null, i32 0, i32* null)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

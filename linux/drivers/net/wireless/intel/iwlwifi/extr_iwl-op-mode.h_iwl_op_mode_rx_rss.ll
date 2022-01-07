; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-op-mode.h_iwl_op_mode_rx_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-op-mode.h_iwl_op_mode_rx_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iwl_op_mode*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32)* }
%struct.napi_struct = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32)* @iwl_op_mode_rx_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_op_mode_rx_rss(%struct.iwl_op_mode* %0, %struct.napi_struct* %1, %struct.iwl_rx_cmd_buffer* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_op_mode*, align 8
  %6 = alloca %struct.napi_struct*, align 8
  %7 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %5, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %6, align 8
  store %struct.iwl_rx_cmd_buffer* %2, %struct.iwl_rx_cmd_buffer** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %5, align 8
  %10 = getelementptr inbounds %struct.iwl_op_mode, %struct.iwl_op_mode* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.iwl_op_mode*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32)*, i32 (%struct.iwl_op_mode*, %struct.napi_struct*, %struct.iwl_rx_cmd_buffer*, i32)** %12, align 8
  %14 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %5, align 8
  %15 = load %struct.napi_struct*, %struct.napi_struct** %6, align 8
  %16 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 %13(%struct.iwl_op_mode* %14, %struct.napi_struct* %15, %struct.iwl_rx_cmd_buffer* %16, i32 %17)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

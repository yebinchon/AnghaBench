; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-op-mode.h_iwl_op_mode_async_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-op-mode.h_iwl_op_mode_async_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_op_mode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)* }
%struct.iwl_device_cmd = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)* @iwl_op_mode_async_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_op_mode_async_cb(%struct.iwl_op_mode* %0, %struct.iwl_device_cmd* %1) #0 {
  %3 = alloca %struct.iwl_op_mode*, align 8
  %4 = alloca %struct.iwl_device_cmd*, align 8
  store %struct.iwl_op_mode* %0, %struct.iwl_op_mode** %3, align 8
  store %struct.iwl_device_cmd* %1, %struct.iwl_device_cmd** %4, align 8
  %5 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %3, align 8
  %6 = getelementptr inbounds %struct.iwl_op_mode, %struct.iwl_op_mode* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32 (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)*, i32 (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)** %8, align 8
  %10 = icmp ne i32 (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %3, align 8
  %13 = getelementptr inbounds %struct.iwl_op_mode, %struct.iwl_op_mode* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)*, i32 (%struct.iwl_op_mode*, %struct.iwl_device_cmd*)** %15, align 8
  %17 = load %struct.iwl_op_mode*, %struct.iwl_op_mode** %3, align 8
  %18 = load %struct.iwl_device_cmd*, %struct.iwl_device_cmd** %4, align 8
  %19 = call i32 %16(%struct.iwl_op_mode* %17, %struct.iwl_device_cmd* %18)
  br label %20

20:                                               ; preds = %11, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

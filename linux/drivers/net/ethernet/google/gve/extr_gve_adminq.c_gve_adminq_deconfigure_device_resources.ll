; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_deconfigure_device_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_deconfigure_device_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i32 }
%union.gve_adminq_command = type { i32 }

@GVE_ADMINQ_DECONFIGURE_DEVICE_RESOURCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_adminq_deconfigure_device_resources(%struct.gve_priv* %0) #0 {
  %2 = alloca %struct.gve_priv*, align 8
  %3 = alloca %union.gve_adminq_command, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %2, align 8
  %4 = call i32 @memset(%union.gve_adminq_command* %3, i32 0, i32 4)
  %5 = load i32, i32* @GVE_ADMINQ_DECONFIGURE_DEVICE_RESOURCES, align 4
  %6 = call i32 @cpu_to_be32(i32 %5)
  %7 = bitcast %union.gve_adminq_command* %3 to i32*
  store i32 %6, i32* %7, align 4
  %8 = load %struct.gve_priv*, %struct.gve_priv** %2, align 8
  %9 = call i32 @gve_adminq_execute_cmd(%struct.gve_priv* %8, %union.gve_adminq_command* %3)
  ret i32 %9
}

declare dso_local i32 @memset(%union.gve_adminq_command*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @gve_adminq_execute_cmd(%struct.gve_priv*, %union.gve_adminq_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_core_trigger_ssr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_venus.c_venus_core_trigger_ssr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_core = type { i32 }
%struct.venus_hfi_device = type { i32 }
%struct.hfi_sys_test_ssr_pkt = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venus_core*, i32)* @venus_core_trigger_ssr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @venus_core_trigger_ssr(%struct.venus_core* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.venus_core*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.venus_hfi_device*, align 8
  %7 = alloca %struct.hfi_sys_test_ssr_pkt, align 4
  %8 = alloca i32, align 4
  store %struct.venus_core* %0, %struct.venus_core** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.venus_core*, %struct.venus_core** %4, align 8
  %10 = call %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core* %9)
  store %struct.venus_hfi_device* %10, %struct.venus_hfi_device** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @pkt_sys_ssr_cmd(%struct.hfi_sys_test_ssr_pkt* %7, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load %struct.venus_hfi_device*, %struct.venus_hfi_device** %6, align 8
  %19 = call i32 @venus_iface_cmdq_write(%struct.venus_hfi_device* %18, %struct.hfi_sys_test_ssr_pkt* %7)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %17, %15
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local %struct.venus_hfi_device* @to_hfi_priv(%struct.venus_core*) #1

declare dso_local i32 @pkt_sys_ssr_cmd(%struct.hfi_sys_test_ssr_pkt*, i32) #1

declare dso_local i32 @venus_iface_cmdq_write(%struct.venus_hfi_device*, %struct.hfi_sys_test_ssr_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_get_cmd_signature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ctx.c_qlcnic_get_cmd_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_hardware_context = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_hardware_context*)* @qlcnic_get_cmd_signature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_get_cmd_signature(%struct.qlcnic_hardware_context* %0) #0 {
  %2 = alloca %struct.qlcnic_hardware_context*, align 8
  store %struct.qlcnic_hardware_context* %0, %struct.qlcnic_hardware_context** %2, align 8
  %3 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %2, align 8
  %4 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 255
  %7 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 255
  %11 = shl i32 %10, 8
  %12 = or i32 %6, %11
  %13 = or i32 %12, -889323520
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

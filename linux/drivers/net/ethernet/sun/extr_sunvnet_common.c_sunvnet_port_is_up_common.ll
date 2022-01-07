; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_port_is_up_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunvnet_common.c_sunvnet_port_is_up_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnet_port = type { %struct.vio_driver_state }
%struct.vio_driver_state = type { i32 }

@VIO_HS_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sunvnet_port_is_up_common(%struct.vnet_port* %0) #0 {
  %2 = alloca %struct.vnet_port*, align 8
  %3 = alloca %struct.vio_driver_state*, align 8
  store %struct.vnet_port* %0, %struct.vnet_port** %2, align 8
  %4 = load %struct.vnet_port*, %struct.vnet_port** %2, align 8
  %5 = getelementptr inbounds %struct.vnet_port, %struct.vnet_port* %4, i32 0, i32 0
  store %struct.vio_driver_state* %5, %struct.vio_driver_state** %3, align 8
  %6 = load %struct.vio_driver_state*, %struct.vio_driver_state** %3, align 8
  %7 = getelementptr inbounds %struct.vio_driver_state, %struct.vio_driver_state* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @VIO_HS_COMPLETE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

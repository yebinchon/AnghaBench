; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.m_can_classdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @m_can_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.m_can_classdev*, align 8
  %7 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %9 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %8, i32 0, i32 0
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %11)
  store %struct.m_can_classdev* %12, %struct.m_can_classdev** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @m_can_rx_handler(%struct.net_device* %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @napi_complete_done(%struct.napi_struct* %20, i32 %21)
  %23 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %24 = call i32 @m_can_enable_all_interrupts(%struct.m_can_classdev* %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load i32, i32* %7, align 4
  ret i32 %26
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_rx_handler(%struct.net_device*, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @m_can_enable_all_interrupts(%struct.m_can_classdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

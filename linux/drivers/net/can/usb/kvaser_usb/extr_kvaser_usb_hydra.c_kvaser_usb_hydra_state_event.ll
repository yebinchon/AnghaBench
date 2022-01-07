; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_state_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_state_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.kvaser_usb_net_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.can_berr_counter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_state_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_state_event(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_net_priv*, align 8
  %6 = alloca %struct.can_berr_counter, align 4
  %7 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %8 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %9 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %10 = call %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb* %8, %struct.kvaser_cmd* %9)
  store %struct.kvaser_usb_net_priv* %10, %struct.kvaser_usb_net_priv** %5, align 8
  %11 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %12 = icmp ne %struct.kvaser_usb_net_priv* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %16 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %7, align 4
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @kvaser_usb_hydra_update_state(%struct.kvaser_usb_net_priv* %29, i32 %30, %struct.can_berr_counter* %6)
  %32 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %35 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %5, align 8
  %40 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  br label %42

42:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.kvaser_usb_net_priv* @kvaser_usb_hydra_net_priv_from_cmd(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_update_state(%struct.kvaser_usb_net_priv*, i32, %struct.can_berr_counter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

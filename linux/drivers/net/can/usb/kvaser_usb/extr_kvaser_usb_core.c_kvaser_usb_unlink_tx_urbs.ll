; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_unlink_tx_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_core.c_kvaser_usb_unlink_tx_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb_net_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb_net_priv*)* @kvaser_usb_unlink_tx_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_unlink_tx_urbs(%struct.kvaser_usb_net_priv* %0) #0 {
  %2 = alloca %struct.kvaser_usb_net_priv*, align 8
  store %struct.kvaser_usb_net_priv* %0, %struct.kvaser_usb_net_priv** %2, align 8
  %3 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %2, align 8
  %4 = getelementptr inbounds %struct.kvaser_usb_net_priv, %struct.kvaser_usb_net_priv* %3, i32 0, i32 0
  %5 = call i32 @usb_kill_anchored_urbs(i32* %4)
  %6 = load %struct.kvaser_usb_net_priv*, %struct.kvaser_usb_net_priv** %2, align 8
  %7 = call i32 @kvaser_usb_reset_tx_urb_contexts(%struct.kvaser_usb_net_priv* %6)
  ret void
}

declare dso_local i32 @usb_kill_anchored_urbs(i32*) #1

declare dso_local i32 @kvaser_usb_reset_tx_urb_contexts(%struct.kvaser_usb_net_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

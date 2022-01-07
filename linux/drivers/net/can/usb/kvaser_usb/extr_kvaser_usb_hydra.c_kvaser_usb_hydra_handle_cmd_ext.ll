; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_handle_cmd_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_handle_cmd_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_cmd_ext = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvaser_cmd = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Unhandled extended command (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd_ext*)* @kvaser_usb_hydra_handle_cmd_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_handle_cmd_ext(%struct.kvaser_usb* %0, %struct.kvaser_cmd_ext* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd_ext*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd_ext* %1, %struct.kvaser_cmd_ext** %4, align 8
  %5 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %4, align 8
  %6 = getelementptr inbounds %struct.kvaser_cmd_ext, %struct.kvaser_cmd_ext* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %17 [
    i32 128, label %8
    i32 129, label %13
  ]

8:                                                ; preds = %2
  %9 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %10 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %4, align 8
  %11 = bitcast %struct.kvaser_cmd_ext* %10 to %struct.kvaser_cmd*
  %12 = call i32 @kvaser_usb_hydra_tx_acknowledge(%struct.kvaser_usb* %9, %struct.kvaser_cmd* %11)
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %15 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %4, align 8
  %16 = call i32 @kvaser_usb_hydra_rx_msg_ext(%struct.kvaser_usb* %14, %struct.kvaser_cmd_ext* %15)
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %19 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.kvaser_cmd_ext*, %struct.kvaser_cmd_ext** %4, align 8
  %23 = getelementptr inbounds %struct.kvaser_cmd_ext, %struct.kvaser_cmd_ext* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_warn(i32* %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %17, %13, %8
  ret void
}

declare dso_local i32 @kvaser_usb_hydra_tx_acknowledge(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_rx_msg_ext(%struct.kvaser_usb*, %struct.kvaser_cmd_ext*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

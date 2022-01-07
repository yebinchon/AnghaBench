; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_handle_cmd_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_handle_cmd_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unhandled command (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_hydra_handle_cmd_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_hydra_handle_cmd_std(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %5 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %6 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %38 [
    i32 130, label %9
    i32 129, label %13
    i32 134, label %17
    i32 136, label %21
    i32 135, label %25
    i32 128, label %29
    i32 133, label %33
    i32 131, label %37
    i32 132, label %37
  ]

9:                                                ; preds = %2
  %10 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %11 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %12 = call i32 @kvaser_usb_hydra_start_chip_reply(%struct.kvaser_usb* %10, %struct.kvaser_cmd* %11)
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %15 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %16 = call i32 @kvaser_usb_hydra_stop_chip_reply(%struct.kvaser_usb* %14, %struct.kvaser_cmd* %15)
  br label %48

17:                                               ; preds = %2
  %18 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %20 = call i32 @kvaser_usb_hydra_flush_queue_reply(%struct.kvaser_usb* %18, %struct.kvaser_cmd* %19)
  br label %48

21:                                               ; preds = %2
  %22 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %23 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %24 = call i32 @kvaser_usb_hydra_state_event(%struct.kvaser_usb* %22, %struct.kvaser_cmd* %23)
  br label %48

25:                                               ; preds = %2
  %26 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %27 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %28 = call i32 @kvaser_usb_hydra_error_event(%struct.kvaser_usb* %26, %struct.kvaser_cmd* %27)
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %31 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %32 = call i32 @kvaser_usb_hydra_tx_acknowledge(%struct.kvaser_usb* %30, %struct.kvaser_cmd* %31)
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %35 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %36 = call i32 @kvaser_usb_hydra_rx_msg_std(%struct.kvaser_usb* %34, %struct.kvaser_cmd* %35)
  br label %48

37:                                               ; preds = %2, %2
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %40 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %38, %37, %33, %29, %25, %21, %17, %13, %9
  ret void
}

declare dso_local i32 @kvaser_usb_hydra_start_chip_reply(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_stop_chip_reply(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_flush_queue_reply(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_state_event(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_error_event(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_tx_acknowledge(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @kvaser_usb_hydra_rx_msg_std(%struct.kvaser_usb*, %struct.kvaser_cmd*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/extr_mcba_usb.c_mcba_usb_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcba_priv = type { i32 }
%struct.mcba_usb_msg = type { i32 }
%struct.mcba_usb_msg_ka_can = type { i32 }
%struct.mcba_usb_msg_ka_usb = type { i32 }
%struct.mcba_usb_msg_can = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Unsupported msg (0x%hhX)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mcba_priv*, %struct.mcba_usb_msg*)* @mcba_usb_process_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcba_usb_process_rx(%struct.mcba_priv* %0, %struct.mcba_usb_msg* %1) #0 {
  %3 = alloca %struct.mcba_priv*, align 8
  %4 = alloca %struct.mcba_usb_msg*, align 8
  store %struct.mcba_priv* %0, %struct.mcba_priv** %3, align 8
  store %struct.mcba_usb_msg* %1, %struct.mcba_usb_msg** %4, align 8
  %5 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %6 = getelementptr inbounds %struct.mcba_usb_msg, %struct.mcba_usb_msg* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %25 [
    i32 132, label %8
    i32 131, label %13
    i32 129, label %18
    i32 130, label %23
    i32 128, label %24
  ]

8:                                                ; preds = %2
  %9 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %10 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %11 = bitcast %struct.mcba_usb_msg* %10 to %struct.mcba_usb_msg_ka_can*
  %12 = call i32 @mcba_usb_process_ka_can(%struct.mcba_priv* %9, %struct.mcba_usb_msg_ka_can* %11)
  br label %33

13:                                               ; preds = %2
  %14 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %15 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %16 = bitcast %struct.mcba_usb_msg* %15 to %struct.mcba_usb_msg_ka_usb*
  %17 = call i32 @mcba_usb_process_ka_usb(%struct.mcba_priv* %14, %struct.mcba_usb_msg_ka_usb* %16)
  br label %33

18:                                               ; preds = %2
  %19 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %20 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %21 = bitcast %struct.mcba_usb_msg* %20 to %struct.mcba_usb_msg_can*
  %22 = call i32 @mcba_usb_process_can(%struct.mcba_priv* %19, %struct.mcba_usb_msg_can* %21)
  br label %33

23:                                               ; preds = %2
  br label %33

24:                                               ; preds = %2
  br label %33

25:                                               ; preds = %2
  %26 = load %struct.mcba_priv*, %struct.mcba_priv** %3, align 8
  %27 = getelementptr inbounds %struct.mcba_priv, %struct.mcba_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mcba_usb_msg*, %struct.mcba_usb_msg** %4, align 8
  %30 = getelementptr inbounds %struct.mcba_usb_msg, %struct.mcba_usb_msg* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @netdev_warn(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %25, %24, %23, %18, %13, %8
  ret void
}

declare dso_local i32 @mcba_usb_process_ka_can(%struct.mcba_priv*, %struct.mcba_usb_msg_ka_can*) #1

declare dso_local i32 @mcba_usb_process_ka_usb(%struct.mcba_priv*, %struct.mcba_usb_msg_ka_usb*) #1

declare dso_local i32 @mcba_usb_process_can(%struct.mcba_priv*, %struct.mcba_usb_msg_can*) #1

declare dso_local i32 @netdev_warn(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

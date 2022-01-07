; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_terminate_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_usbnet.c_usbnet_terminate_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, i32, i32, i32 }

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"waited for %d urb completions\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @usbnet_terminate_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbnet_terminate_urbs(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = load i32, i32* @current, align 4
  %6 = call i32 @DECLARE_WAITQUEUE(i32 %4, i32 %5)
  %7 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %8 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %7, i32 0, i32 0
  %9 = call i32 @add_wait_queue(i32* %8, i32* @wait)
  %10 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %11 = call i32 @set_current_state(i32 %10)
  %12 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 3
  %15 = call i32 @unlink_urbs(%struct.usbnet* %12, i32* %14)
  %16 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 4
  %19 = call i32 @unlink_urbs(%struct.usbnet* %16, i32* %18)
  %20 = add nsw i32 %15, %19
  store i32 %20, i32* %3, align 4
  %21 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 4
  %23 = call i32 @wait_skb_queue_empty(i32* %22)
  %24 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %25 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %24, i32 0, i32 3
  %26 = call i32 @wait_skb_queue_empty(i32* %25)
  %27 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %28 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %27, i32 0, i32 2
  %29 = call i32 @wait_skb_queue_empty(i32* %28)
  %30 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %31 = load i32, i32* @ifdown, align 4
  %32 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %33 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @netif_dbg(%struct.usbnet* %30, i32 %31, i32 %34, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @TASK_RUNNING, align 4
  %38 = call i32 @set_current_state(i32 %37)
  %39 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %40 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %39, i32 0, i32 0
  %41 = call i32 @remove_wait_queue(i32* %40, i32* @wait)
  ret void
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @unlink_urbs(%struct.usbnet*, i32*) #1

declare dso_local i32 @wait_skb_queue_empty(i32*) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, i32, i8*, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_usb.c_if_usb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_usb_card = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_usb_card*)* @if_usb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_usb_free(%struct.if_usb_card* %0) #0 {
  %2 = alloca %struct.if_usb_card*, align 8
  store %struct.if_usb_card* %0, %struct.if_usb_card** %2, align 8
  %3 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %4 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @usb_kill_urb(i32* %5)
  %7 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %8 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = call i32 @usb_kill_urb(i32* %9)
  %11 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %12 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @usb_free_urb(i32* %13)
  %15 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %16 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %15, i32 0, i32 2
  store i32* null, i32** %16, align 8
  %17 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %18 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @usb_free_urb(i32* %19)
  %21 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %22 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %24 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @kfree(i32* %25)
  %27 = load %struct.if_usb_card*, %struct.if_usb_card** %2, align 8
  %28 = getelementptr inbounds %struct.if_usb_card, %struct.if_usb_card* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  ret void
}

declare dso_local i32 @usb_kill_urb(i32*) #1

declare dso_local i32 @usb_free_urb(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

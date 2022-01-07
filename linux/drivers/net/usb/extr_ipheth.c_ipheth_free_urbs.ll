; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_free_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ipheth.c_ipheth_free_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipheth_device = type { %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@IPHETH_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipheth_device*)* @ipheth_free_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipheth_free_urbs(%struct.ipheth_device* %0) #0 {
  %2 = alloca %struct.ipheth_device*, align 8
  store %struct.ipheth_device* %0, %struct.ipheth_device** %2, align 8
  %3 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %4 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @IPHETH_BUF_SIZE, align 4
  %7 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %8 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %11 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @usb_free_coherent(i32 %5, i32 %6, i32 %9, i32 %14)
  %16 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %17 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IPHETH_BUF_SIZE, align 4
  %20 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %21 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %24 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @usb_free_coherent(i32 %18, i32 %19, i32 %22, i32 %27)
  %29 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %30 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = call i32 @usb_free_urb(%struct.TYPE_2__* %31)
  %33 = load %struct.ipheth_device*, %struct.ipheth_device** %2, align 8
  %34 = getelementptr inbounds %struct.ipheth_device, %struct.ipheth_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call i32 @usb_free_urb(%struct.TYPE_2__* %35)
  ret void
}

declare dso_local i32 @usb_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

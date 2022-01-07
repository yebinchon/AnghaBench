; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_redrat3.c_redrat3_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.redrat3_dev = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.redrat3_dev*, %struct.usb_device*)* @redrat3_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redrat3_delete(%struct.redrat3_dev* %0, %struct.usb_device* %1) #0 {
  %3 = alloca %struct.redrat3_dev*, align 8
  %4 = alloca %struct.usb_device*, align 8
  store %struct.redrat3_dev* %0, %struct.redrat3_dev** %3, align 8
  store %struct.usb_device* %1, %struct.usb_device** %4, align 8
  %5 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %6 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @usb_kill_urb(i32 %7)
  %9 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %10 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @usb_kill_urb(i32 %11)
  %13 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %14 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_kill_urb(i32 %15)
  %17 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %18 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_kill_urb(i32 %19)
  %21 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %22 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usb_free_urb(i32 %23)
  %25 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %26 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @usb_free_urb(i32 %27)
  %29 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %30 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_free_urb(i32 %31)
  %33 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %34 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @usb_free_urb(i32 %35)
  %37 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %38 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %39 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le16_to_cpu(i32 %42)
  %44 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %45 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %48 = getelementptr inbounds %struct.redrat3_dev, %struct.redrat3_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @usb_free_coherent(%struct.usb_device* %37, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.redrat3_dev*, %struct.redrat3_dev** %3, align 8
  %52 = call i32 @kfree(%struct.redrat3_dev* %51)
  ret void
}

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @usb_free_urb(i32) #1

declare dso_local i32 @usb_free_coherent(%struct.usb_device*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @kfree(%struct.redrat3_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

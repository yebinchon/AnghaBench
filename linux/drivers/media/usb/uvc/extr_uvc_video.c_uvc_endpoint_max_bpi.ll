; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_endpoint_max_bpi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_endpoint_max_bpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.usb_host_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.usb_host_endpoint*)* @uvc_endpoint_max_bpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_endpoint_max_bpi(%struct.usb_device* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %5, align 8
  %8 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %9 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %32 [
    i32 130, label %11
    i32 129, label %11
    i32 131, label %17
    i32 128, label %27
  ]

11:                                               ; preds = %2, %2
  %12 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %13 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %3, align 4
  br label %37

17:                                               ; preds = %2
  %18 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %19 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %18, i32 0, i32 0
  %20 = call i32 @usb_endpoint_maxp(i32* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %22 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %21, i32 0, i32 0
  %23 = call i32 @usb_endpoint_maxp_mult(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = mul i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %37

27:                                               ; preds = %2
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %29 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %28, i32 0, i32 0
  %30 = call i32 @usb_endpoint_maxp(i32* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %34 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %33, i32 0, i32 0
  %35 = call i32 @usb_endpoint_maxp(i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %27, %17, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i32 @usb_endpoint_maxp_mult(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

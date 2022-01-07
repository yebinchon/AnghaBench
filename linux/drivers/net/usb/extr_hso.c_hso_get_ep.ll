; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_get_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_get_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_interface = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_3__ = type { i32 }

@USB_ENDPOINT_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_endpoint_descriptor* (%struct.usb_interface*, i32, i32)* @hso_get_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_endpoint_descriptor* @hso_get_ep(%struct.usb_interface* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.usb_interface*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_host_interface*, align 8
  %10 = alloca %struct.usb_endpoint_descriptor*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_interface*, %struct.usb_interface** %5, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = load %struct.usb_host_interface*, %struct.usb_host_interface** %12, align 8
  store %struct.usb_host_interface* %13, %struct.usb_host_interface** %9, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %44, %3
  %15 = load i32, i32* %8, align 4
  %16 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %17 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %15, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %14
  %22 = load %struct.usb_host_interface*, %struct.usb_host_interface** %9, align 8
  %23 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %28, %struct.usb_endpoint_descriptor** %10, align 8
  %29 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %30 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @USB_ENDPOINT_DIR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %21
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  %38 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %37)
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %10, align 8
  store %struct.usb_endpoint_descriptor* %42, %struct.usb_endpoint_descriptor** %4, align 8
  br label %48

43:                                               ; preds = %36, %21
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %14

47:                                               ; preds = %14
  store %struct.usb_endpoint_descriptor* null, %struct.usb_endpoint_descriptor** %4, align 8
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %4, align 8
  ret %struct.usb_endpoint_descriptor* %49
}

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

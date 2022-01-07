; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_setup_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_setup_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.TYPE_4__* }
%struct.usb_endpoint_descriptor = type { i64 }
%struct.TYPE_4__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_5__ = type { i32 }

@KVASER_USB_HYDRA_BULK_EP_IN_ADDR = common dso_local global i64 0, align 8
@KVASER_USB_HYDRA_BULK_EP_OUT_ADDR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_hydra_setup_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_setup_endpoints(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %7 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %8 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %7, i32 0, i32 2
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %12 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i64 0
  store %struct.usb_host_interface* %12, %struct.usb_host_interface** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %77, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %80

20:                                               ; preds = %13
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %27, %struct.usb_endpoint_descriptor** %5, align 8
  %28 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %28, i32 0, i32 1
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  %31 = icmp ne %struct.usb_endpoint_descriptor* %30, null
  br i1 %31, label %46, label %32

32:                                               ; preds = %20
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %34 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %38 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @KVASER_USB_HYDRA_BULK_EP_IN_ADDR, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %44 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %45 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %44, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %43, %struct.usb_endpoint_descriptor** %45, align 8
  br label %46

46:                                               ; preds = %42, %36, %32, %20
  %47 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %48 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %47, i32 0, i32 0
  %49 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %48, align 8
  %50 = icmp ne %struct.usb_endpoint_descriptor* %49, null
  br i1 %50, label %65, label %51

51:                                               ; preds = %46
  %52 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %53 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %51
  %56 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %57 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @KVASER_USB_HYDRA_BULK_EP_OUT_ADDR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %63 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %64 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %63, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %62, %struct.usb_endpoint_descriptor** %64, align 8
  br label %65

65:                                               ; preds = %61, %55, %51, %46
  %66 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %67 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %66, i32 0, i32 1
  %68 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %67, align 8
  %69 = icmp ne %struct.usb_endpoint_descriptor* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %72 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %71, i32 0, i32 0
  %73 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %72, align 8
  %74 = icmp ne %struct.usb_endpoint_descriptor* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 0, i32* %2, align 4
  br label %83

76:                                               ; preds = %70, %65
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %13

80:                                               ; preds = %13
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %80, %75
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

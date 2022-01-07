; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_setup_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_setup_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor*, %struct.TYPE_6__* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.TYPE_6__ = type { %struct.usb_host_interface* }
%struct.usb_host_interface = type { %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.usb_endpoint_descriptor }
%struct.TYPE_4__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_leaf_setup_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_setup_endpoints(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.usb_host_interface*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %7 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %8 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.usb_host_interface*, %struct.usb_host_interface** %10, align 8
  %12 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %11, i64 0
  store %struct.usb_host_interface* %12, %struct.usb_host_interface** %4, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %65, %1
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %16 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %14, %18
  br i1 %19, label %20, label %68

20:                                               ; preds = %13
  %21 = load %struct.usb_host_interface*, %struct.usb_host_interface** %4, align 8
  %22 = getelementptr inbounds %struct.usb_host_interface, %struct.usb_host_interface* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %27, %struct.usb_endpoint_descriptor** %5, align 8
  %28 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %28, i32 0, i32 1
  %30 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %29, align 8
  %31 = icmp ne %struct.usb_endpoint_descriptor* %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %20
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %34 = call i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %38 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %39 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %38, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %37, %struct.usb_endpoint_descriptor** %39, align 8
  br label %40

40:                                               ; preds = %36, %32, %20
  %41 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %42 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %41, i32 0, i32 0
  %43 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %42, align 8
  %44 = icmp ne %struct.usb_endpoint_descriptor* %43, null
  br i1 %44, label %53, label %45

45:                                               ; preds = %40
  %46 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %47 = call i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %51 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %52 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %51, i32 0, i32 0
  store %struct.usb_endpoint_descriptor* %50, %struct.usb_endpoint_descriptor** %52, align 8
  br label %53

53:                                               ; preds = %49, %45, %40
  %54 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %55 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %54, i32 0, i32 1
  %56 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %55, align 8
  %57 = icmp ne %struct.usb_endpoint_descriptor* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %60 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %59, i32 0, i32 0
  %61 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %60, align 8
  %62 = icmp ne %struct.usb_endpoint_descriptor* %61, null
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %2, align 4
  br label %71

64:                                               ; preds = %58, %53
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %13

68:                                               ; preds = %13
  %69 = load i32, i32* @ENODEV, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @usb_endpoint_is_bulk_in(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_is_bulk_out(%struct.usb_endpoint_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

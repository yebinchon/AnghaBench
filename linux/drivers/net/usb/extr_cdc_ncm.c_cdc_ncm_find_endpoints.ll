; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_find_endpoints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_find_endpoints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, i32, %struct.usb_host_endpoint* }
%struct.usb_host_endpoint = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.usb_interface = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.usb_host_endpoint*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@USB_ENDPOINT_XFERTYPE_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_NUMBER_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.usb_interface*)* @cdc_ncm_find_endpoints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdc_ncm_find_endpoints(%struct.usbnet* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_host_endpoint*, align 8
  %6 = alloca %struct.usb_host_endpoint*, align 8
  %7 = alloca %struct.usb_host_endpoint*, align 8
  %8 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %6, align 8
  store %struct.usb_host_endpoint* null, %struct.usb_host_endpoint** %7, align 8
  store i64 0, i64* %8, align 8
  br label %9

9:                                                ; preds = %74, %2
  %10 = load i64, i64* %8, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %12 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %10, %16
  br i1 %17, label %18, label %77

18:                                               ; preds = %9
  %19 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %20 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %22, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %23, i64 %24
  store %struct.usb_host_endpoint* %25, %struct.usb_host_endpoint** %5, align 8
  %26 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %27 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %26, i32 0, i32 0
  %28 = call i32 @usb_endpoint_maxp(%struct.TYPE_7__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %18
  br label %74

31:                                               ; preds = %18
  %32 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %33 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @USB_ENDPOINT_XFERTYPE_MASK, align 4
  %37 = and i32 %35, %36
  switch i32 %37, label %72 [
    i32 128, label %38
    i32 129, label %54
  ]

38:                                               ; preds = %31
  %39 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %40 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %39, i32 0, i32 0
  %41 = call i32 @usb_endpoint_dir_in(%struct.TYPE_7__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %38
  %44 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %45 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %44, i32 0, i32 3
  %46 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %45, align 8
  %47 = icmp ne %struct.usb_host_endpoint* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %43
  %49 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %50 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %51 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %50, i32 0, i32 3
  store %struct.usb_host_endpoint* %49, %struct.usb_host_endpoint** %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %38
  br label %73

54:                                               ; preds = %31
  %55 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  %56 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %55, i32 0, i32 0
  %57 = call i32 @usb_endpoint_dir_in(%struct.TYPE_7__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %61 = icmp ne %struct.usb_host_endpoint* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %59
  %63 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  store %struct.usb_host_endpoint* %63, %struct.usb_host_endpoint** %6, align 8
  br label %64

64:                                               ; preds = %62, %59
  br label %71

65:                                               ; preds = %54
  %66 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %67 = icmp ne %struct.usb_host_endpoint* %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %65
  %69 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %5, align 8
  store %struct.usb_host_endpoint* %69, %struct.usb_host_endpoint** %7, align 8
  br label %70

70:                                               ; preds = %68, %65
  br label %71

71:                                               ; preds = %70, %64
  br label %73

72:                                               ; preds = %31
  br label %73

73:                                               ; preds = %72, %71, %53
  br label %74

74:                                               ; preds = %73, %30
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, 1
  store i64 %76, i64* %8, align 8
  br label %9

77:                                               ; preds = %9
  %78 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %79 = icmp ne %struct.usb_host_endpoint* %78, null
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %87 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %6, align 8
  %90 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %94 = and i32 %92, %93
  %95 = call i32 @usb_rcvbulkpipe(i32 %88, i32 %94)
  %96 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %97 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  br label %98

98:                                               ; preds = %85, %80, %77
  %99 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %100 = icmp ne %struct.usb_host_endpoint* %99, null
  br i1 %100, label %101, label %119

101:                                              ; preds = %98
  %102 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %103 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %101
  %107 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %108 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %7, align 8
  %111 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @USB_ENDPOINT_NUMBER_MASK, align 4
  %115 = and i32 %113, %114
  %116 = call i32 @usb_sndbulkpipe(i32 %109, i32 %115)
  %117 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %118 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  br label %119

119:                                              ; preds = %106, %101, %98
  ret void
}

declare dso_local i32 @usb_endpoint_maxp(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_endpoint_dir_in(%struct.TYPE_7__*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

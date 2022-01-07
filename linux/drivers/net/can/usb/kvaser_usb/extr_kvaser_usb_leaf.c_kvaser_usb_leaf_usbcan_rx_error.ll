; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_usbcan_rx_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_usbcan_rx_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.kvaser_cmd = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.kvaser_usb_err_summary = type { i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }

@MAX_USBCAN_NET_DEVICES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid cmd id (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvaser_usb*, %struct.kvaser_cmd*)* @kvaser_usb_leaf_usbcan_rx_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kvaser_usb_leaf_usbcan_rx_error(%struct.kvaser_usb* %0, %struct.kvaser_cmd* %1) #0 {
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd*, align 8
  %5 = alloca %struct.kvaser_usb_err_summary, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  store %struct.kvaser_cmd* %1, %struct.kvaser_cmd** %4, align 8
  %6 = bitcast %struct.kvaser_usb_err_summary* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 20, i1 false)
  %7 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %113 [
    i32 128, label %10
    i32 129, label %41
  ]

10:                                               ; preds = %2
  %11 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 4
  %18 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %19 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  %32 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 2
  store i32 %37, i32* %38, align 4
  %39 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %40 = call i32 @kvaser_usb_leaf_usbcan_conditionally_rx_error(%struct.kvaser_usb* %39, %struct.kvaser_usb_err_summary* %5)
  br label %122

41:                                               ; preds = %2
  %42 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 0
  store i32 0, i32* %42, align 4
  %43 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 4
  store i32 %48, i32* %49, align 4
  %50 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 3
  store i32 %55, i32* %56, align 4
  %57 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 2
  store i32 %62, i32* %63, align 4
  %64 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %73 = call i32 @kvaser_usb_leaf_usbcan_conditionally_rx_error(%struct.kvaser_usb* %72, %struct.kvaser_usb_err_summary* %5)
  %74 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %75 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MAX_USBCAN_NET_DEVICES, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %112

79:                                               ; preds = %41
  %80 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  %88 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %89 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 3
  store i32 %93, i32* %94, align 4
  %95 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %96 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 2
  store i32 %100, i32* %101, align 4
  %102 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.kvaser_usb_err_summary, %struct.kvaser_usb_err_summary* %5, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 4
  %110 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %111 = call i32 @kvaser_usb_leaf_usbcan_conditionally_rx_error(%struct.kvaser_usb* %110, %struct.kvaser_usb_err_summary* %5)
  br label %112

112:                                              ; preds = %79, %41
  br label %122

113:                                              ; preds = %2
  %114 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %115 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %114, i32 0, i32 0
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 0
  %118 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %4, align 8
  %119 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @dev_err(i32* %117, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %113, %112, %10
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @kvaser_usb_leaf_usbcan_conditionally_rx_error(%struct.kvaser_usb*, %struct.kvaser_usb_err_summary*) #2

declare dso_local i32 @dev_err(i32*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

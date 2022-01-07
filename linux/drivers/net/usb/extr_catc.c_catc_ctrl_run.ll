; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_ctrl_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_catc.c_catc_ctrl_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.catc = type { i32, %struct.usb_device*, %struct.urb*, i32, %struct.usb_ctrlrequest, %struct.ctrl_queue* }
%struct.usb_device = type { i32 }
%struct.urb = type { %struct.usb_device*, i8*, i32, i64, i32 }
%struct.usb_ctrlrequest = type { i32, i8*, i8*, i8*, i32 }
%struct.ctrl_queue = type { i32, i64, i64, i64, i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"submit(ctrl_urb) status %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.catc*)* @catc_ctrl_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @catc_ctrl_run(%struct.catc* %0) #0 {
  %2 = alloca %struct.catc*, align 8
  %3 = alloca %struct.ctrl_queue*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  store %struct.catc* %0, %struct.catc** %2, align 8
  %8 = load %struct.catc*, %struct.catc** %2, align 8
  %9 = getelementptr inbounds %struct.catc, %struct.catc* %8, i32 0, i32 5
  %10 = load %struct.ctrl_queue*, %struct.ctrl_queue** %9, align 8
  %11 = load %struct.catc*, %struct.catc** %2, align 8
  %12 = getelementptr inbounds %struct.catc, %struct.catc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %10, i64 %14
  store %struct.ctrl_queue* %15, %struct.ctrl_queue** %3, align 8
  %16 = load %struct.catc*, %struct.catc** %2, align 8
  %17 = getelementptr inbounds %struct.catc, %struct.catc* %16, i32 0, i32 1
  %18 = load %struct.usb_device*, %struct.usb_device** %17, align 8
  store %struct.usb_device* %18, %struct.usb_device** %4, align 8
  %19 = load %struct.catc*, %struct.catc** %2, align 8
  %20 = getelementptr inbounds %struct.catc, %struct.catc* %19, i32 0, i32 2
  %21 = load %struct.urb*, %struct.urb** %20, align 8
  store %struct.urb* %21, %struct.urb** %5, align 8
  %22 = load %struct.catc*, %struct.catc** %2, align 8
  %23 = getelementptr inbounds %struct.catc, %struct.catc* %22, i32 0, i32 4
  store %struct.usb_ctrlrequest* %23, %struct.usb_ctrlrequest** %6, align 8
  %24 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %30 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 64, %31
  %33 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %34 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %36 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = call i8* @cpu_to_le16(i64 %37)
  %39 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %40 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %42 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = call i8* @cpu_to_le16(i64 %43)
  %45 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %46 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %48 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @cpu_to_le16(i64 %49)
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %54 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %1
  %58 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %59 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %58, i32 0)
  br label %63

60:                                               ; preds = %1
  %61 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %62 = call i32 @usb_sndctrlpipe(%struct.usb_device* %61, i32 0)
  br label %63

63:                                               ; preds = %60, %57
  %64 = phi i32 [ %59, %57 ], [ %62, %60 ]
  %65 = load %struct.urb*, %struct.urb** %5, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %68 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.urb*, %struct.urb** %5, align 8
  %71 = getelementptr inbounds %struct.urb, %struct.urb* %70, i32 0, i32 3
  store i64 %69, i64* %71, align 8
  %72 = load %struct.catc*, %struct.catc** %2, align 8
  %73 = getelementptr inbounds %struct.catc, %struct.catc* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.urb*, %struct.urb** %5, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %78 = bitcast %struct.usb_ctrlrequest* %77 to i8*
  %79 = load %struct.urb*, %struct.urb** %5, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %82 = load %struct.urb*, %struct.urb** %5, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  store %struct.usb_device* %81, %struct.usb_device** %83, align 8
  %84 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %85 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %109, label %88

88:                                               ; preds = %63
  %89 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %90 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %88
  %94 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %95 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.catc*, %struct.catc** %2, align 8
  %100 = getelementptr inbounds %struct.catc, %struct.catc* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %103 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.ctrl_queue*, %struct.ctrl_queue** %3, align 8
  %106 = getelementptr inbounds %struct.ctrl_queue, %struct.ctrl_queue* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @memcpy(i32 %101, i64 %104, i64 %107)
  br label %109

109:                                              ; preds = %98, %93, %88, %63
  %110 = load %struct.catc*, %struct.catc** %2, align 8
  %111 = getelementptr inbounds %struct.catc, %struct.catc* %110, i32 0, i32 2
  %112 = load %struct.urb*, %struct.urb** %111, align 8
  %113 = load i32, i32* @GFP_ATOMIC, align 4
  %114 = call i32 @usb_submit_urb(%struct.urb* %112, i32 %113)
  store i32 %114, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %109
  %117 = load %struct.catc*, %struct.catc** %2, align 8
  %118 = getelementptr inbounds %struct.catc, %struct.catc* %117, i32 0, i32 1
  %119 = load %struct.usb_device*, %struct.usb_device** %118, align 8
  %120 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %119, i32 0, i32 0
  %121 = load i32, i32* %7, align 4
  %122 = call i32 @dev_err(i32* %120, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %121)
  br label %123

123:                                              ; preds = %116, %109
  ret void
}

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @memcpy(i32, i64, i64) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

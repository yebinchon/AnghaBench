; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c___carl9170_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_usb.c___carl9170_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32, i64 }
%struct.carl9170_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CARL9170_MAX_CMD_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AR9170_USB_EP_CMD = common dso_local global i32 0, align 4
@carl9170_usb_cmd_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__carl9170_exec_cmd(%struct.ar9170* %0, %struct.carl9170_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca %struct.carl9170_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store %struct.carl9170_cmd* %1, %struct.carl9170_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %11 = call i32 @IS_INITIALIZED(%struct.ar9170* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  br label %99

16:                                               ; preds = %3
  %17 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CARL9170_MAX_CMD_LEN, align 4
  %22 = sub nsw i32 %21, 4
  %23 = icmp sgt i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %99

30:                                               ; preds = %16
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %31)
  store %struct.urb* %32, %struct.urb** %8, align 8
  %33 = load %struct.urb*, %struct.urb** %8, align 8
  %34 = icmp ne %struct.urb* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %99

38:                                               ; preds = %30
  %39 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %40 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load %struct.urb*, %struct.urb** %8, align 8
  %45 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AR9170_USB_EP_CMD, align 4
  %52 = call i32 @usb_sndbulkpipe(i32 %50, i32 %51)
  %53 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %54 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %55 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 4
  %59 = load i32, i32* @carl9170_usb_cmd_complete, align 4
  %60 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %61 = call i32 @usb_fill_bulk_urb(%struct.urb* %44, i32 %47, i32 %52, %struct.carl9170_cmd* %53, i32 %58, i32 %59, %struct.ar9170* %60)
  br label %81

62:                                               ; preds = %38
  %63 = load %struct.urb*, %struct.urb** %8, align 8
  %64 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %65 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %68 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @AR9170_USB_EP_CMD, align 4
  %71 = call i32 @usb_sndintpipe(i32 %69, i32 %70)
  %72 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %73 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 4
  %78 = load i32, i32* @carl9170_usb_cmd_complete, align 4
  %79 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %80 = call i32 @usb_fill_int_urb(%struct.urb* %63, i32 %66, i32 %71, %struct.carl9170_cmd* %72, i32 %77, i32 %78, %struct.ar9170* %79, i32 1)
  br label %81

81:                                               ; preds = %62, %43
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load i32, i32* @URB_FREE_BUFFER, align 4
  %86 = load %struct.urb*, %struct.urb** %8, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %81
  %91 = load %struct.urb*, %struct.urb** %8, align 8
  %92 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %93 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %92, i32 0, i32 0
  %94 = call i32 @usb_anchor_urb(%struct.urb* %91, i32* %93)
  %95 = load %struct.urb*, %struct.urb** %8, align 8
  %96 = call i32 @usb_free_urb(%struct.urb* %95)
  %97 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %98 = call i32 @carl9170_usb_submit_cmd_urb(%struct.ar9170* %97)
  store i32 %98, i32* %4, align 4
  br label %107

99:                                               ; preds = %35, %27, %13
  %100 = load i32, i32* %7, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %104 = call i32 @kfree(%struct.carl9170_cmd* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* %9, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %105, %90
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i32 @IS_INITIALIZED(%struct.ar9170*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, %struct.carl9170_cmd*, i32, i32, %struct.ar9170*) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, %struct.carl9170_cmd*, i32, i32, %struct.ar9170*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @carl9170_usb_submit_cmd_urb(%struct.ar9170*) #1

declare dso_local i32 @kfree(%struct.carl9170_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_cmd = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@KVASER_USB_TIMEOUT = common dso_local global i32 0, align 4
@KVASER_USB_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_HEADER_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Format error\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*, i64, %struct.kvaser_cmd*)* @kvaser_usb_leaf_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_wait_cmd(%struct.kvaser_usb* %0, i64 %1, %struct.kvaser_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_usb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvaser_cmd*, align 8
  %8 = alloca %struct.kvaser_cmd*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.kvaser_cmd* %2, %struct.kvaser_cmd** %7, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @KVASER_USB_TIMEOUT, align 4
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %13, align 8
  %18 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 %18, i32 %19)
  store i8* %20, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %107

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %95, %26
  %28 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %31 = call i32 @kvaser_usb_recv_cmd(%struct.kvaser_usb* %28, i8* %29, i32 %30, i32* %10)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %103

35:                                               ; preds = %27
  store i32 0, i32* %12, align 4
  br label %36

36:                                               ; preds = %88, %52, %35
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CMD_HEADER_LEN, align 4
  %40 = sub nsw i32 %38, %39
  %41 = icmp sle i32 %37, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %36
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr i8, i8* %43, i64 %45
  %47 = bitcast i8* %46 to %struct.kvaser_cmd*
  store %struct.kvaser_cmd* %47, %struct.kvaser_cmd** %8, align 8
  %48 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %49 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %55 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @le16_to_cpu(i32 %58)
  %60 = call i32 @round_up(i32 %53, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %36

61:                                               ; preds = %42
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %64 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* %10, align 4
  %68 = icmp sgt i32 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  %70 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %71 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = call i32 @dev_err_ratelimited(i32* %73, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %94

75:                                               ; preds = %61
  %76 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %77 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %6, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %83 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %84 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %85 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @memcpy(%struct.kvaser_cmd* %82, %struct.kvaser_cmd* %83, i32 %86)
  br label %103

88:                                               ; preds = %75
  %89 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %8, align 8
  %90 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %12, align 4
  br label %36

94:                                               ; preds = %69, %36
  br label %95

95:                                               ; preds = %94
  %96 = load i64, i64* @jiffies, align 8
  %97 = load i64, i64* %13, align 8
  %98 = call i64 @time_before(i64 %96, i64 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %27, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %100, %81, %34
  %104 = load i8*, i8** %9, align 8
  %105 = call i32 @kfree(i8* %104)
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %4, align 4
  br label %107

107:                                              ; preds = %103, %23
  %108 = load i32, i32* %4, align 4
  ret i32 %108
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kvaser_usb_recv_cmd(%struct.kvaser_usb*, i8*, i32, i32*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

declare dso_local i32 @memcpy(%struct.kvaser_cmd*, %struct.kvaser_cmd*, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

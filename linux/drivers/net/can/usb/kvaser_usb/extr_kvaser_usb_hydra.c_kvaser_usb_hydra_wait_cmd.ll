; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_wait_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_wait_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@KVASER_USB_TIMEOUT = common dso_local global i32 0, align 4
@CMD_EXTENDED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Wait for CMD_EXTENDED not allowed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KVASER_USB_RX_BUFFER_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Format error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*, i64, %struct.kvaser_cmd*)* @kvaser_usb_hydra_wait_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb* %0, i64 %1, %struct.kvaser_cmd* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvaser_usb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvaser_cmd*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kvaser_cmd*, align 8
  %14 = alloca i64, align 8
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.kvaser_cmd* %2, %struct.kvaser_cmd** %7, align 8
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i32, i32* @KVASER_USB_TIMEOUT, align 4
  %17 = call i64 @msecs_to_jiffies(i32 %16)
  %18 = add i64 %15, %17
  store i64 %18, i64* %10, align 8
  %19 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @CMD_EXTENDED, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %27 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %108

33:                                               ; preds = %3
  %34 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  store i8* %36, i8** %8, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %108

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %96, %42
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %44 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = load i32, i32* @KVASER_USB_RX_BUFFER_SIZE, align 4
  %47 = call i32 @kvaser_usb_recv_cmd(%struct.kvaser_usb* %44, i8* %45, i32 %46, i32* %11)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %104

51:                                               ; preds = %43
  br label %52

52:                                               ; preds = %89, %51
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %95

56:                                               ; preds = %52
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr i8, i8* %57, i64 %59
  %61 = bitcast i8* %60 to %struct.kvaser_cmd*
  store %struct.kvaser_cmd* %61, %struct.kvaser_cmd** %13, align 8
  %62 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %13, align 8
  %63 = call i64 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd* %62)
  store i64 %63, i64* %14, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = load i64, i64* %14, align 8
  %67 = add i64 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load %struct.kvaser_usb*, %struct.kvaser_usb** %5, align 8
  %73 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_err_ratelimited(i32* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %95

77:                                               ; preds = %56
  %78 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %13, align 8
  %79 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %7, align 8
  %86 = load %struct.kvaser_cmd*, %struct.kvaser_cmd** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call i32 @memcpy(%struct.kvaser_cmd* %85, %struct.kvaser_cmd* %86, i64 %87)
  br label %104

89:                                               ; preds = %77
  %90 = load i64, i64* %14, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = add i64 %92, %90
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %12, align 4
  br label %52

95:                                               ; preds = %71, %52
  br label %96

96:                                               ; preds = %95
  %97 = load i64, i64* @jiffies, align 8
  %98 = load i64, i64* %10, align 8
  %99 = call i64 @time_before(i64 %97, i64 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %43, label %101

101:                                              ; preds = %96
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %9, align 4
  br label %104

104:                                              ; preds = %101, %84, %50
  %105 = load i8*, i8** %8, align 8
  %106 = call i32 @kfree(i8* %105)
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %104, %39, %25
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kvaser_usb_recv_cmd(%struct.kvaser_usb*, i8*, i32, i32*) #1

declare dso_local i64 @kvaser_usb_hydra_cmd_size(%struct.kvaser_cmd*) #1

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

declare dso_local i32 @memcpy(%struct.kvaser_cmd*, %struct.kvaser_cmd*, i64) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_usb_inout_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_vp702x.c_vp702x_usb_inout_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.vp702x_device_state* }
%struct.vp702x_device_state = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"successfully reallocated a bigger buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32, i32)* @vp702x_usb_inout_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp702x_usb_inout_cmd(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.vp702x_device_state*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 0
  %22 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %21, align 8
  store %struct.vp702x_device_state* %22, %struct.vp702x_device_state** %16, align 8
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, 2
  %25 = load i32, i32* %14, align 4
  %26 = add nsw i32 %25, 1
  %27 = call i32 @max(i32 %24, i32 %26)
  store i32 %27, i32* %19, align 4
  %28 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %29 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %28, i32 0, i32 2
  %30 = call i32 @mutex_lock_interruptible(i32* %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %17, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i32, i32* %17, align 4
  store i32 %34, i32* %8, align 4
  br label %102

35:                                               ; preds = %7
  %36 = load i32, i32* %19, align 4
  %37 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %38 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load i32, i32* %19, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc(i32 %42, i32 %43)
  store i32* %44, i32** %18, align 8
  %45 = load i32*, i32** %18, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %49 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %48, i32 0, i32 2
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %102

53:                                               ; preds = %41
  %54 = call i32 @info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %56 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32*, i32** %18, align 8
  %60 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %61 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %60, i32 0, i32 1
  store i32* %59, i32** %61, align 8
  %62 = load i32, i32* %19, align 4
  %63 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %64 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  br label %69

65:                                               ; preds = %35
  %66 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %67 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  store i32* %68, i32** %18, align 8
  br label %69

69:                                               ; preds = %65, %53
  %70 = load i32*, i32** %18, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 0, i32* %71, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32*, i32** %18, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %18, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memcpy(i32* %76, i32* %77, i32 %78)
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %81 = load i32*, i32** %18, align 8
  %82 = load i32, i32* %12, align 4
  %83 = add nsw i32 %82, 2
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %14, align 4
  %86 = add nsw i32 %85, 1
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @vp702x_usb_inout_op(%struct.dvb_usb_device* %80, i32* %81, i32 %83, i32* %84, i32 %86, i32 %87)
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %17, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %69
  %92 = load i32*, i32** %13, align 8
  %93 = load i32*, i32** %18, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @memcpy(i32* %92, i32* %94, i32 %95)
  br label %97

97:                                               ; preds = %91, %69
  %98 = load %struct.vp702x_device_state*, %struct.vp702x_device_state** %16, align 8
  %99 = getelementptr inbounds %struct.vp702x_device_state, %struct.vp702x_device_state* %98, i32 0, i32 2
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %17, align 4
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %97, %47, %33
  %103 = load i32, i32* %8, align 4
  ret i32 %103
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vp702x_usb_inout_op(%struct.dvb_usb_device*, i32*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

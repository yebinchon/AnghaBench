; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_stk1160_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32, i32, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@ENODEV = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cannot submit urb[%d] (%d)\0A\00", align 1
@video = common dso_local global i32 0, align 4
@s_stream = common dso_local global i32 0, align 4
@STK1160_DCTRL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"streaming started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stk1160*)* @stk1160_start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk1160_start_streaming(%struct.stk1160* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk1160*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %8 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %16 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %15, i32 0, i32 0
  %17 = call i64 @mutex_lock_interruptible(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @ERESTARTSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %102

22:                                               ; preds = %14
  %23 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %24 = call i32 @stk1160_set_alternate(%struct.stk1160* %23)
  store i32 %24, i32* %4, align 4
  %25 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %26 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %30, %22
  %34 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %35 = call i32 @stk1160_alloc_isoc(%struct.stk1160* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %91

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %30
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %44 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %69

48:                                               ; preds = %41
  %49 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %50 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @GFP_KERNEL, align 4
  %58 = call i32 @usb_submit_urb(i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %48
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @stk1160_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  br label %88

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %71 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %70, i32 0, i32 3
  %72 = load i32, i32* @video, align 4
  %73 = load i32, i32* @s_stream, align 4
  %74 = call i32 @v4l2_device_call_all(i32* %71, i32 0, i32 %72, i32 %73, i32 1)
  %75 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %76 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %78 = load i64, i64* @STK1160_DCTRL, align 8
  %79 = call i32 @stk1160_write_reg(%struct.stk1160* %77, i64 %78, i32 179)
  %80 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %81 = load i64, i64* @STK1160_DCTRL, align 8
  %82 = add nsw i64 %81, 3
  %83 = call i32 @stk1160_write_reg(%struct.stk1160* %80, i64 %82, i32 0)
  %84 = call i32 @stk1160_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %86 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  store i32 0, i32* %2, align 4
  br label %102

88:                                               ; preds = %61
  %89 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %90 = call i32 @stk1160_uninit_isoc(%struct.stk1160* %89)
  br label %91

91:                                               ; preds = %88, %38
  %92 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %93 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @usb_set_interface(i32 %94, i32 0, i32 0)
  %96 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %97 = call i32 @stk1160_clear_queue(%struct.stk1160* %96)
  %98 = load %struct.stk1160*, %struct.stk1160** %3, align 8
  %99 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %98, i32 0, i32 0
  %100 = call i32 @mutex_unlock(i32* %99)
  %101 = load i32, i32* %5, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %91, %69, %19, %11
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @stk1160_set_alternate(%struct.stk1160*) #1

declare dso_local i32 @stk1160_alloc_isoc(%struct.stk1160*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @stk1160_err(i8*, i32, i32) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i64, i32) #1

declare dso_local i32 @stk1160_dbg(i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @stk1160_uninit_isoc(%struct.stk1160*) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @stk1160_clear_queue(%struct.stk1160*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

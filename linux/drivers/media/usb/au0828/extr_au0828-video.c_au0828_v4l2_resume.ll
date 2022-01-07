; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_v4l2_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/au0828/extr_au0828-video.c_au0828_v4l2_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au0828_dev = type { i64, %struct.TYPE_2__, i32, i64, i32, i64 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [17 x i8] c"restarting V4L2\0A\00", align 1
@STREAM_ON = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"submit of urb %i failed (error=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @au0828_v4l2_resume(%struct.au0828_dev* %0) #0 {
  %2 = alloca %struct.au0828_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.au0828_dev* %0, %struct.au0828_dev** %2, align 8
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %7 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @STREAM_ON, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %13 = call i32 @au0828_stream_interrupt(%struct.au0828_dev* %12)
  %14 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %15 = call i32 @au0828_init_tuner(%struct.au0828_dev* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %18 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %17, i32 0, i32 5
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %23 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %22, i32 0, i32 4
  %24 = load i64, i64* @jiffies, align 8
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 10
  %27 = sext i32 %26 to i64
  %28 = add nsw i64 %24, %27
  %29 = call i32 @mod_timer(i32* %23, i64 %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %32 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %37 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %36, i32 0, i32 2
  %38 = load i64, i64* @jiffies, align 8
  %39 = load i32, i32* @HZ, align 4
  %40 = sdiv i32 %39, 10
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %38, %41
  %43 = call i32 @mod_timer(i32* %37, i64 %42)
  br label %44

44:                                               ; preds = %35, %30
  %45 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %46 = call i32 @au0828_i2s_init(%struct.au0828_dev* %45)
  %47 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %48 = call i32 @au0828_analog_stream_enable(%struct.au0828_dev* %47)
  %49 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %50 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STREAM_ON, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %88, label %54

54:                                               ; preds = %44
  %55 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %56 = call i32 @au0828_analog_stream_reset(%struct.au0828_dev* %55)
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %84, %54
  %58 = load i32, i32* %3, align 4
  %59 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %60 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %58, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %57
  %65 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %66 = getelementptr inbounds %struct.au0828_dev, %struct.au0828_dev* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @GFP_ATOMIC, align 4
  %74 = call i32 @usb_submit_urb(i32 %72, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %64
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @au0828_isocdbg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %78, i32 %79)
  %81 = load %struct.au0828_dev*, %struct.au0828_dev** %2, align 8
  %82 = call i32 @au0828_uninit_isoc(%struct.au0828_dev* %81)
  br label %83

83:                                               ; preds = %77, %64
  br label %84

84:                                               ; preds = %83
  %85 = load i32, i32* %3, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %3, align 4
  br label %57

87:                                               ; preds = %57
  br label %88

88:                                               ; preds = %87, %44
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @au0828_stream_interrupt(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_init_tuner(%struct.au0828_dev*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @au0828_i2s_init(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_analog_stream_enable(%struct.au0828_dev*) #1

declare dso_local i32 @au0828_analog_stream_reset(%struct.au0828_dev*) #1

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @au0828_isocdbg(i8*, i32, i32) #1

declare dso_local i32 @au0828_uninit_isoc(%struct.au0828_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_read_audio_pipe_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_read_audio_pipe_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, i32, i64 }
%struct.go7007 = type { i32, i32 (%struct.go7007*, i32, i32)*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"error in audio pipe: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"short read in audio pipe!\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @go7007_usb_read_audio_pipe_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go7007_usb_read_audio_pipe_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.go7007*
  store %struct.go7007* %9, %struct.go7007** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.go7007*, %struct.go7007** %3, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 2
  %15 = call i32 @vb2_is_streaming(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %69

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = load %struct.go7007*, %struct.go7007** %3, align 8
  %23 = getelementptr inbounds %struct.go7007, %struct.go7007* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %25)
  br label %69

27:                                               ; preds = %18
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.urb*, %struct.urb** %2, align 8
  %32 = getelementptr inbounds %struct.urb, %struct.urb* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.go7007*, %struct.go7007** %3, align 8
  %37 = getelementptr inbounds %struct.go7007, %struct.go7007* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %69

40:                                               ; preds = %27
  %41 = load %struct.go7007*, %struct.go7007** %3, align 8
  %42 = getelementptr inbounds %struct.go7007, %struct.go7007* %41, i32 0, i32 1
  %43 = load i32 (%struct.go7007*, i32, i32)*, i32 (%struct.go7007*, i32, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.go7007*, i32, i32)* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.go7007*, %struct.go7007** %3, align 8
  %47 = getelementptr inbounds %struct.go7007, %struct.go7007* %46, i32 0, i32 1
  %48 = load i32 (%struct.go7007*, i32, i32)*, i32 (%struct.go7007*, i32, i32)** %47, align 8
  %49 = load %struct.go7007*, %struct.go7007** %3, align 8
  %50 = load %struct.urb*, %struct.urb** %2, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 %48(%struct.go7007* %49, i32 %52, i32 %55)
  br label %57

57:                                               ; preds = %45, %40
  %58 = load %struct.urb*, %struct.urb** %2, align 8
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call i32 @usb_submit_urb(%struct.urb* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.go7007*, %struct.go7007** %3, align 8
  %65 = getelementptr inbounds %struct.go7007, %struct.go7007* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %17, %21, %35, %63, %57
  ret void
}

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

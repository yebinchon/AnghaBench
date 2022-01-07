; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_process_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_process_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [40 x i8] c"tmp_buffer_length=%d, buffer_length=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"not ts packet %*ph\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"wrong packet type\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"wrong header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_usb*, i32*, i32)* @flexcop_usb_process_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_usb_process_frame(%struct.flexcop_usb* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.flexcop_usb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %10 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12)
  %14 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %15 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %3
  %19 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %20 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %23 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %21, i64 %25
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @memcpy(i32* %26, i32* %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %32 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %36 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %7, align 8
  %38 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %39 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %3
  %42 = load i32*, i32** %5, align 8
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %41, %18
  br label %45

45:                                               ; preds = %83, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 190
  br i1 %47, label %48, label %84

48:                                               ; preds = %45
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 255
  br i1 %51, label %52, label %81

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 3
  switch i32 %56, label %78 [
    i32 1, label %57
  ]

57:                                               ; preds = %52
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 71
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %64 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = call i32 @flexcop_pass_dmx_packets(i32 %65, i32* %67, i32 1)
  br label %73

69:                                               ; preds = %57
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 4, i32* %71)
  br label %73

73:                                               ; preds = %69, %62
  %74 = load i32*, i32** %7, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 190
  store i32* %75, i32** %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, 190
  store i32 %77, i32* %8, align 4
  br label %80

78:                                               ; preds = %52
  %79 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %78, %73
  br label %83

81:                                               ; preds = %48
  %82 = call i32 (i8*, ...) @deb_ts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %81, %80
  br label %45

84:                                               ; preds = %45
  %85 = load i32, i32* %8, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %89 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @memcpy(i32* %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %8, align 4
  %96 = load %struct.flexcop_usb*, %struct.flexcop_usb** %4, align 8
  %97 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  ret void
}

declare dso_local i32 @deb_ts(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @flexcop_pass_dmx_packets(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

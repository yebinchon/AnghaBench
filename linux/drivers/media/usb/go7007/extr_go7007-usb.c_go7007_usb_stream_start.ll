; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_stream_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_stream_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.go7007 = type { i32, i32, %struct.go7007_usb* }
%struct.go7007_usb = type { i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error submitting video urb %d: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"error submitting audio urb %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.go7007*)* @go7007_usb_stream_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_usb_stream_start(%struct.go7007* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca %struct.go7007_usb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.go7007* %0, %struct.go7007** %3, align 8
  %7 = load %struct.go7007*, %struct.go7007** %3, align 8
  %8 = getelementptr inbounds %struct.go7007, %struct.go7007* %7, i32 0, i32 2
  %9 = load %struct.go7007_usb*, %struct.go7007_usb** %8, align 8
  store %struct.go7007_usb* %9, %struct.go7007_usb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %33, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %36

13:                                               ; preds = %10
  %14 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %15 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @usb_submit_urb(i32 %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %13
  %26 = load %struct.go7007*, %struct.go7007** %3, align 8
  %27 = getelementptr inbounds %struct.go7007, %struct.go7007* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  br label %87

32:                                               ; preds = %13
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %10

36:                                               ; preds = %10
  %37 = load %struct.go7007*, %struct.go7007** %3, align 8
  %38 = getelementptr inbounds %struct.go7007, %struct.go7007* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %104

42:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %66, %42
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 8
  br i1 %45, label %46, label %69

46:                                               ; preds = %43
  %47 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %48 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call i32 @usb_submit_urb(i32 %53, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load %struct.go7007*, %struct.go7007** %3, align 8
  %60 = getelementptr inbounds %struct.go7007, %struct.go7007* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %70

65:                                               ; preds = %46
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %43

69:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %104

70:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %83, %70
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 7
  br i1 %73, label %74, label %86

74:                                               ; preds = %71
  %75 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %76 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @usb_kill_urb(i32 %81)
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %71

86:                                               ; preds = %71
  br label %87

87:                                               ; preds = %86, %25
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %100, %87
  %89 = load i32, i32* %5, align 4
  %90 = icmp slt i32 %89, 8
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.go7007_usb*, %struct.go7007_usb** %4, align 8
  %93 = getelementptr inbounds %struct.go7007_usb, %struct.go7007_usb* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %5, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @usb_kill_urb(i32 %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %88

103:                                              ; preds = %88
  store i32 -1, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %69, %41
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

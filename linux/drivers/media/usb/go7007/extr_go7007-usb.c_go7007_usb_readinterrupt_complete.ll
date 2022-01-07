; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_readinterrupt_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-usb.c_go7007_usb_readinterrupt_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i64, i64, i64, i64 }
%struct.go7007 = type { i64, i32, i32, i8*, i8*, i32 }

@ESHUTDOWN = common dso_local global i32 0, align 4
@STATUS_SHUTDOWN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"error in read interrupt: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"short read in interrupt pipe!\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ReadInterrupt: %04x %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @go7007_usb_readinterrupt_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @go7007_usb_readinterrupt_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.go7007*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.go7007*
  store %struct.go7007* %9, %struct.go7007** %3, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  store i32* %13, i32** %4, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ESHUTDOWN, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %19
  %25 = load %struct.go7007*, %struct.go7007** %3, align 8
  %26 = getelementptr inbounds %struct.go7007, %struct.go7007* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @STATUS_SHUTDOWN, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load %struct.go7007*, %struct.go7007** %3, align 8
  %32 = getelementptr inbounds %struct.go7007, %struct.go7007* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.urb*, %struct.urb** %2, align 8
  %35 = getelementptr inbounds %struct.urb, %struct.urb* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %42

38:                                               ; preds = %24, %19
  %39 = load %struct.go7007*, %struct.go7007** %3, align 8
  %40 = getelementptr inbounds %struct.go7007, %struct.go7007* %39, i32 0, i32 2
  %41 = call i32 @wake_up(i32* %40)
  br label %83

42:                                               ; preds = %30
  br label %79

43:                                               ; preds = %1
  %44 = load %struct.urb*, %struct.urb** %2, align 8
  %45 = getelementptr inbounds %struct.urb, %struct.urb* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.urb*, %struct.urb** %2, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %43
  %52 = load %struct.go7007*, %struct.go7007** %3, align 8
  %53 = getelementptr inbounds %struct.go7007, %struct.go7007* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (i32, i8*, ...) @dev_err(i32 %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %78

56:                                               ; preds = %43
  %57 = load %struct.go7007*, %struct.go7007** %3, align 8
  %58 = getelementptr inbounds %struct.go7007, %struct.go7007* %57, i32 0, i32 1
  store i32 1, i32* %58, align 8
  %59 = load i32*, i32** %4, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @__le16_to_cpu(i32 %61)
  %63 = load %struct.go7007*, %struct.go7007** %3, align 8
  %64 = getelementptr inbounds %struct.go7007, %struct.go7007* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32*, i32** %4, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = call i8* @__le16_to_cpu(i32 %67)
  %69 = load %struct.go7007*, %struct.go7007** %3, align 8
  %70 = getelementptr inbounds %struct.go7007, %struct.go7007* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.go7007*, %struct.go7007** %3, align 8
  %72 = getelementptr inbounds %struct.go7007, %struct.go7007* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.go7007*, %struct.go7007** %3, align 8
  %75 = getelementptr inbounds %struct.go7007, %struct.go7007* %74, i32 0, i32 3
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %73, i8* %76)
  br label %78

78:                                               ; preds = %56, %51
  br label %79

79:                                               ; preds = %78, %42
  %80 = load %struct.go7007*, %struct.go7007** %3, align 8
  %81 = getelementptr inbounds %struct.go7007, %struct.go7007* %80, i32 0, i32 2
  %82 = call i32 @wake_up(i32* %81)
  br label %83

83:                                               ; preds = %79, %38
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i8* @__le16_to_cpu(i32) #1

declare dso_local i32 @pr_debug(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

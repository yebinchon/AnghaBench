; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_send_and_wait_once.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pulse8-cec/extr_pulse8-cec.c_pulse8_send_and_wait_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pulse8 = type { i32*, i64, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@MSGCODE_COMMAND_REJECTED = common dso_local global i32 0, align 4
@MSGCODE_SET_CONTROLLED = common dso_local global i64 0, align 8
@MSGCODE_SET_AUTO_ENABLED = common dso_local global i64 0, align 8
@MSGCODE_GET_BUILDDATE = common dso_local global i64 0, align 8
@ENOTTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"transmit: failed %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pulse8*, i64*, i64, i64, i64)* @pulse8_send_and_wait_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse8_send_and_wait_once(%struct.pulse8* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pulse8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.pulse8* %0, %struct.pulse8** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %14 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %13, i32 0, i32 3
  %15 = call i32 @init_completion(i32* %14)
  %16 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %17 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 8
  %19 = load i64*, i64** %8, align 8
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @pulse8_send(i32 %18, i64* %19, i64 %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %6, align 4
  br label %99

26:                                               ; preds = %5
  %27 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %28 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %27, i32 0, i32 3
  %29 = load i32, i32* @HZ, align 4
  %30 = call i32 @wait_for_completion_timeout(i32* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %99

35:                                               ; preds = %26
  %36 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %37 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 63
  %42 = load i32, i32* @MSGCODE_COMMAND_REJECTED, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %35
  %45 = load i64*, i64** %8, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MSGCODE_SET_CONTROLLED, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = load i64*, i64** %8, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MSGCODE_SET_AUTO_ENABLED, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %50
  %57 = load i64*, i64** %8, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MSGCODE_GET_BUILDDATE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load i32, i32* @ENOTTY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %99

65:                                               ; preds = %56, %50, %44, %35
  %66 = load i64, i64* %10, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %65
  %69 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %70 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 63
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %10, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %85, label %78

78:                                               ; preds = %68
  %79 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %80 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %11, align 8
  %83 = add nsw i64 %82, 1
  %84 = icmp slt i64 %81, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %78, %68
  %86 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %87 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.pulse8*, %struct.pulse8** %7, align 8
  %90 = getelementptr inbounds %struct.pulse8, %struct.pulse8* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 63
  %95 = call i32 @dev_info(i32 %88, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %6, align 4
  br label %99

98:                                               ; preds = %78, %65
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %98, %85, %62, %32, %24
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @pulse8_send(i32, i64*, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

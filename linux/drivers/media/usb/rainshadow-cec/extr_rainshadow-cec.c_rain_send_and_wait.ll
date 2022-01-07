; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_send_and_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_send_and_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rain = type { i32, i32, i32, i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"transmit of '%s': received '%s' instead of '%s'\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rain*, i8*, i8*)* @rain_send_and_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_send_and_wait(%struct.rain* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.rain*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rain* %0, %struct.rain** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.rain*, %struct.rain** %4, align 8
  %9 = getelementptr inbounds %struct.rain, %struct.rain* %8, i32 0, i32 3
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.rain*, %struct.rain** %4, align 8
  %12 = getelementptr inbounds %struct.rain, %struct.rain* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rain*, %struct.rain** %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @rain_send(%struct.rain* %14, i8* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %54

20:                                               ; preds = %3
  %21 = load %struct.rain*, %struct.rain** %4, align 8
  %22 = getelementptr inbounds %struct.rain, %struct.rain* %21, i32 0, i32 3
  %23 = load i32, i32* @HZ, align 4
  %24 = call i32 @wait_for_completion_timeout(i32* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %54

29:                                               ; preds = %20
  %30 = load i8*, i8** %6, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %53

32:                                               ; preds = %29
  %33 = load %struct.rain*, %struct.rain** %4, align 8
  %34 = getelementptr inbounds %struct.rain, %struct.rain* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strlen(i8* %37)
  %39 = call i64 @strncmp(i32 %35, i8* %36, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %32
  %42 = load %struct.rain*, %struct.rain** %4, align 8
  %43 = getelementptr inbounds %struct.rain, %struct.rain* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load %struct.rain*, %struct.rain** %4, align 8
  %47 = getelementptr inbounds %struct.rain, %struct.rain* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @dev_dbg(i32 %44, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i8* %45, i32 %48, i8* %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %41, %32, %29
  br label %54

54:                                               ; preds = %53, %26, %19
  %55 = load %struct.rain*, %struct.rain** %4, align 8
  %56 = getelementptr inbounds %struct.rain, %struct.rain* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rain_send(%struct.rain*, i8*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

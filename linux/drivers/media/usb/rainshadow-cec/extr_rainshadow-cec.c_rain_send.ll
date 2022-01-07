; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/rainshadow-cec/extr_rainshadow-cec.c_rain_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rain = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"send: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rain*, i8*)* @rain_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rain_send(%struct.rain* %0, i8* %1) #0 {
  %3 = alloca %struct.rain*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.rain* %0, %struct.rain** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.rain*, %struct.rain** %3, align 8
  %7 = getelementptr inbounds %struct.rain, %struct.rain* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @serio_write(i32 %8, i8 signext 33)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.rain*, %struct.rain** %3, align 8
  %11 = getelementptr inbounds %struct.rain, %struct.rain* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %13)
  br label %15

15:                                               ; preds = %25, %2
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br label %23

23:                                               ; preds = %18, %15
  %24 = phi i1 [ false, %15 ], [ %22, %18 ]
  br i1 %24, label %25, label %33

25:                                               ; preds = %23
  %26 = load %struct.rain*, %struct.rain** %3, align 8
  %27 = getelementptr inbounds %struct.rain, %struct.rain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  %31 = load i8, i8* %29, align 1
  %32 = call i32 @serio_write(i32 %28, i8 signext %31)
  store i32 %32, i32* %5, align 4
  br label %15

33:                                               ; preds = %23
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %33
  %37 = load %struct.rain*, %struct.rain** %3, align 8
  %38 = getelementptr inbounds %struct.rain, %struct.rain* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @serio_write(i32 %39, i8 signext 126)
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @serio_write(i32, i8 signext) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

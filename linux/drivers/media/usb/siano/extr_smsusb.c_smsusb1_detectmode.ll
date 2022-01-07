; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb1_detectmode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/siano/extr_smsusb.c_smsusb1_detectmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsusb_device_t = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* }

@DEVICE_MODE_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"product string not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DVBH\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"BDA\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"DVBT\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"TDMB\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%d \22%s\22\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @smsusb1_detectmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsusb1_detectmode(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.smsusb_device_t*
  %8 = getelementptr inbounds %struct.smsusb_device_t, %struct.smsusb_device_t* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** %5, align 8
  %12 = load i32, i32* @DEVICE_MODE_NONE, align 4
  %13 = load i32*, i32** %4, align 8
  store i32 %12, i32* %13, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %46

18:                                               ; preds = %2
  %19 = load i8*, i8** %5, align 8
  %20 = call i64 @strstr(i8* %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32*, i32** %4, align 8
  store i32 1, i32* %23, align 4
  br label %45

24:                                               ; preds = %18
  %25 = load i8*, i8** %5, align 8
  %26 = call i64 @strstr(i8* %25, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i32*, i32** %4, align 8
  store i32 4, i32* %29, align 4
  br label %44

30:                                               ; preds = %24
  %31 = load i8*, i8** %5, align 8
  %32 = call i64 @strstr(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32*, i32** %4, align 8
  store i32 0, i32* %35, align 4
  br label %43

36:                                               ; preds = %30
  %37 = load i8*, i8** %5, align 8
  %38 = call i64 @strstr(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32*, i32** %4, align 8
  store i32 2, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %36
  br label %43

43:                                               ; preds = %42, %34
  br label %44

44:                                               ; preds = %43, %28
  br label %45

45:                                               ; preds = %44, %22
  br label %46

46:                                               ; preds = %45, %16
  %47 = load i32*, i32** %4, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %48, i8* %49)
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

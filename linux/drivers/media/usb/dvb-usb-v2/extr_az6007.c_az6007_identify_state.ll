; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_identify_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_az6007.c_az6007_identify_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Identifying az6007 state\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AZ6007_READ_DATA = common dso_local global i32 0, align 4
@WARM = common dso_local global i32 0, align 4
@COLD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Device is on %s state\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"warm\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"cold\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i8**)* @az6007_identify_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @az6007_identify_state(%struct.dvb_usb_device* %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store i8** %1, i8*** %5, align 8
  %8 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @GFP_ATOMIC, align 4
  %10 = call i32* @kmalloc(i32 6, i32 %9)
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %18 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @AZ6007_READ_DATA, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @__az6007_read(i32 %19, i32 %20, i32 6, i32 0, i32* %21, i32 6)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %23, 6
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @WARM, align 4
  store i32 %26, i32* %6, align 4
  br label %29

27:                                               ; preds = %16
  %28 = load i32, i32* @COLD, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32*, i32** %7, align 8
  %31 = call i32 @kfree(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @COLD, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @__az6007_write(i32 %38, i32 9, i32 1, i32 0, i32* null, i32 0)
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @__az6007_write(i32 %42, i32 0, i32 0, i32 0, i32* null, i32 0)
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__az6007_write(i32 %46, i32 0, i32 0, i32 0, i32* null, i32 0)
  br label %48

48:                                               ; preds = %35, %29
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @WARM, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %54 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @__az6007_read(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @__az6007_write(i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

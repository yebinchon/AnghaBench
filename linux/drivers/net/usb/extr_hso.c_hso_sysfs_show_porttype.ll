; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_sysfs_show_porttype.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_hso.c_hso_sysfs_show_porttype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.hso_device = type { i32 }

@HSO_PORT_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Control\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Application\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Application2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"GPS\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"GPS Control\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"PCSC\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Diagnostic\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Diagnostic2\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"Modem\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Network\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @hso_sysfs_show_porttype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hso_sysfs_show_porttype(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.hso_device*, align 8
  %9 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.hso_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.hso_device* %11, %struct.hso_device** %8, align 8
  %12 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %13 = icmp ne %struct.hso_device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %36

15:                                               ; preds = %3
  %16 = load %struct.hso_device*, %struct.hso_device** %8, align 8
  %17 = getelementptr inbounds %struct.hso_device, %struct.hso_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @HSO_PORT_MASK, align 4
  %20 = and i32 %18, %19
  switch i32 %20, label %31 [
    i32 135, label %21
    i32 137, label %22
    i32 136, label %23
    i32 132, label %24
    i32 131, label %25
    i32 128, label %26
    i32 134, label %27
    i32 133, label %28
    i32 130, label %29
    i32 129, label %30
  ]

21:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  br label %32

22:                                               ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %9, align 8
  br label %32

23:                                               ; preds = %15
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  br label %32

24:                                               ; preds = %15
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8** %9, align 8
  br label %32

25:                                               ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  br label %32

26:                                               ; preds = %15
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %9, align 8
  br label %32

27:                                               ; preds = %15
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8** %9, align 8
  br label %32

28:                                               ; preds = %15
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8** %9, align 8
  br label %32

29:                                               ; preds = %15
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i8** %9, align 8
  br label %32

30:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %9, align 8
  br label %32

31:                                               ; preds = %15
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %9, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21
  %33 = load i8*, i8** %7, align 8
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @sprintf(i8* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %34)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %14
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.hso_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

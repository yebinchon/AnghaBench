; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_control_frame_built_and_sent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_pti.c_pti_control_frame_built_and_sent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pti_masterchannel = type { i32, i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@CONTROL_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%3d %3d %s\00", align 1
@CONTROL_FRAME_LEN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Interrupt\00", align 1
@pti_control_channel = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pti_masterchannel*, i8*)* @pti_control_frame_built_and_sent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pti_control_frame_built_and_sent(%struct.pti_masterchannel* %0, i8* %1) #0 {
  %3 = alloca %struct.pti_masterchannel*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pti_masterchannel, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.pti_masterchannel* %0, %struct.pti_masterchannel** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @TASK_COMM_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %5, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %6, align 8
  %15 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %7, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %7, i32 0, i32 1
  %17 = load i32, i32* @CONTROL_ID, align 4
  store i32 %17, i32* %16, align 4
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %18 = load i32, i32* @CONTROL_FRAME_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %10, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %37, label %23

23:                                               ; preds = %2
  %24 = call i32 (...) @in_interrupt()
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* @current, align 4
  %28 = call i32 @get_task_comm(i8* %14, i32 %27)
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @TASK_COMM_LEN, align 4
  %31 = call i32 @strncpy(i8* %14, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* @TASK_COMM_LEN, align 4
  %34 = sub nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i8, i8* %14, i64 %35
  store i8 0, i8* %36, align 1
  store i8* %14, i8** %8, align 8
  br label %39

37:                                               ; preds = %2
  %38 = load i8*, i8** %4, align 8
  store i8* %38, i8** %8, align 8
  br label %39

39:                                               ; preds = %37, %32
  %40 = load i32, i32* @pti_control_channel, align 4
  %41 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %7, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @pti_control_channel, align 4
  %43 = add nsw i32 %42, 1
  %44 = and i32 %43, 127
  store i32 %44, i32* @pti_control_channel, align 4
  %45 = load i32, i32* @CONTROL_FRAME_LEN, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %3, align 8
  %48 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pti_masterchannel*, %struct.pti_masterchannel** %3, align 8
  %51 = getelementptr inbounds %struct.pti_masterchannel, %struct.pti_masterchannel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @snprintf(i32* %20, i32 %45, i8* %46, i32 %49, i32 %52, i8* %53)
  %55 = call i32 @strlen(i32* %20)
  %56 = call i32 @pti_write_to_aperture(%struct.pti_masterchannel* %7, i32* %20, i32 %55)
  %57 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %57)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @in_interrupt(...) #2

declare dso_local i32 @get_task_comm(i8*, i32) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @snprintf(i32*, i32, i8*, i32, i32, i8*) #2

declare dso_local i32 @pti_write_to_aperture(%struct.pti_masterchannel*, i32*, i32) #2

declare dso_local i32 @strlen(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

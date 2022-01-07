; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_set_af_softlanding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/s5c73m3/extr_s5c73m3-core.c_s5c73m3_set_af_softlanding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5c73m3 = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@COMM_AF_SOFTLANDING = common dso_local global i32 0, align 4
@COMM_AF_SOFTLANDING_ON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"AF soft-landing failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@COMM_AF_SOFTLANDING_RES_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [10 x i8] c"succeeded\00", align 1
@ETIME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"timed out\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"AF soft-landing %s after %dms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5c73m3*)* @s5c73m3_set_af_softlanding to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5c73m3_set_af_softlanding(%struct.s5c73m3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5c73m3*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.s5c73m3* %0, %struct.s5c73m3** %3, align 8
  %9 = load i64, i64* @jiffies, align 8
  store i64 %9, i64* %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %11 = load i32, i32* @COMM_AF_SOFTLANDING, align 4
  %12 = load i32, i32* @COMM_AF_SOFTLANDING_ON, align 4
  %13 = call i32 @s5c73m3_isp_command(%struct.s5c73m3* %10, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %18 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %17, i32 0, i32 0
  %19 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %18, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %41, %21
  %23 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %24 = load i32, i32* @COMM_AF_SOFTLANDING, align 4
  %25 = call i32 @s5c73m3_isp_comm_result(%struct.s5c73m3* %23, i32 %24, i64* %5)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %43

29:                                               ; preds = %22
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @COMM_AF_SOFTLANDING_RES_COMPLETE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  %37 = icmp sgt i32 %36, 100
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ETIME, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %43

41:                                               ; preds = %34
  %42 = call i32 @msleep(i32 25)
  br label %22

43:                                               ; preds = %38, %33, %28
  %44 = load %struct.s5c73m3*, %struct.s5c73m3** %3, align 8
  %45 = getelementptr inbounds %struct.s5c73m3, %struct.s5c73m3* %44, i32 0, i32 0
  %46 = load i8*, i8** %8, align 8
  %47 = load i64, i64* @jiffies, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub i64 %47, %48
  %50 = call i32 @jiffies_to_msecs(i64 %49)
  %51 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i8* %46, i32 %50)
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %43, %16
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @s5c73m3_isp_command(%struct.s5c73m3*, i32, i32) #1

declare dso_local i32 @v4l2_info(i32*, i8*, ...) #1

declare dso_local i32 @s5c73m3_isp_comm_result(%struct.s5c73m3*, i32, i64*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @jiffies_to_msecs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

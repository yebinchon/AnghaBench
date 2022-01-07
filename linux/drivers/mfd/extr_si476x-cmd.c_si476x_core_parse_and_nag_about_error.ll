; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_parse_and_nag_about_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_parse_and_nag_about_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SI476X_REVISION_A10 = common dso_local global i64 0, align 8
@SI476X_I2C_RECV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Bad command\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Bad argument #1\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Bad argument #2\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Bad argument #3\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Bad argument #4\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"Chip is busy\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"Bad internal memory\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [10 x i8] c"Bad patch\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"Bad boot mode\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Bad property\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"[Chip error status]: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Failed to fetch error code\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si476x_core*)* @si476x_core_parse_and_nag_about_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si476x_core_parse_and_nag_about_error(%struct.si476x_core* %0) #0 {
  %2 = alloca %struct.si476x_core*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca [2 x i32], align 4
  store %struct.si476x_core* %0, %struct.si476x_core** %2, align 8
  %6 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %7 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SI476X_REVISION_A10, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %78

11:                                               ; preds = %1
  %12 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %13 = load i32, i32* @SI476X_I2C_RECV, align 4
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %15 = call i32 @si476x_core_i2c_xfer(%struct.si476x_core* %12, i32 %13, i32* %14, i32 8)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp eq i64 %17, 8
  br i1 %18, label %19, label %62

19:                                               ; preds = %11
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %52 [
    i32 132, label %22
    i32 137, label %25
    i32 136, label %28
    i32 135, label %31
    i32 134, label %34
    i32 128, label %37
    i32 131, label %40
    i32 130, label %43
    i32 133, label %46
    i32 129, label %49
  ]

22:                                               ; preds = %19
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %4, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %4, align 8
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %55

28:                                               ; preds = %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %4, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %55

31:                                               ; preds = %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8** %4, align 8
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %55

34:                                               ; preds = %19
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8** %4, align 8
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %55

37:                                               ; preds = %19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i8** %4, align 8
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %55

40:                                               ; preds = %19
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8** %4, align 8
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %19
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8** %4, align 8
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %55

46:                                               ; preds = %19
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8** %4, align 8
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %55

49:                                               ; preds = %19
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %4, align 8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %55

52:                                               ; preds = %19
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8** %4, align 8
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %52, %49, %46, %43, %40, %37, %34, %31, %28, %25, %22
  %56 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %57 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i8*, i8** %4, align 8
  %61 = call i32 (i32*, i8*, ...) @dev_err(i32* %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.11, i64 0, i64 0), i8* %60)
  br label %77

62:                                               ; preds = %11
  %63 = load %struct.si476x_core*, %struct.si476x_core** %2, align 8
  %64 = getelementptr inbounds %struct.si476x_core, %struct.si476x_core* %63, i32 0, i32 1
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %68 = load i32, i32* %3, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  br label %75

73:                                               ; preds = %62
  %74 = load i32, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %70
  %76 = phi i32 [ %72, %70 ], [ %74, %73 ]
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %75, %55
  br label %81

78:                                               ; preds = %1
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %78, %77
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @si476x_core_i2c_xfer(%struct.si476x_core*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

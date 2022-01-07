; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_check_fw_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_check_fw_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32 }

@REG_FW_APIVER = common dso_local global i32 0, align 4
@REG_FW_REVISION = common dso_local global i32 0, align 4
@REG_FW_SENSOR_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"FW API=%#x, revision=%#x sensor_id=%#x\0A\00", align 1
@S5K5BAF_FW_APIVER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"FW API version not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*)* @s5k5baf_check_fw_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_check_fw_revision(%struct.s5k5baf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %9 = load i32, i32* @REG_FW_APIVER, align 4
  %10 = call i32 @s5k5baf_read(%struct.s5k5baf* %8, i32 %9)
  %11 = sext i32 %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %13 = load i32, i32* @REG_FW_REVISION, align 4
  %14 = call i32 @s5k5baf_read(%struct.s5k5baf* %12, i32 %13)
  %15 = and i32 %14, 255
  %16 = sext i32 %15 to i64
  store i64 %16, i64* %5, align 8
  %17 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %18 = load i32, i32* @REG_FW_SENSOR_ID, align 4
  %19 = call i32 @s5k5baf_read(%struct.s5k5baf* %17, i32 %18)
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %6, align 8
  %21 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %22 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %1
  %28 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %29 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %28, i32 0, i32 0
  %30 = load i64, i64* %4, align 8
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @v4l2_info(i32* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %31, i64 %32)
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* @S5K5BAF_FW_APIVER, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %39 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %38, i32 0, i32 0
  %40 = call i32 @v4l2_err(i32* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %44

43:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37, %25
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @s5k5baf_read(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_clear_error(%struct.s5k5baf*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

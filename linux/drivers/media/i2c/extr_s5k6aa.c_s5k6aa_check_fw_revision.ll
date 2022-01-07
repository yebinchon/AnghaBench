; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_check_fw_revision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_check_fw_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i32 }
%struct.i2c_client = type { i32 }

@REG_FW_APIVER = common dso_local global i32 0, align 4
@REG_FW_REVISION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"FW revision check failed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"FW API ver.: 0x%X, FW rev.: 0x%X\0A\00", align 1
@S5K6AAFX_FW_APIVER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*)* @s5k6aa_check_fw_revision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_check_fw_revision(%struct.s5k6aa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  %8 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %9 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = call i32 @s5k6aa_set_ahb_address(%struct.i2c_client* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %1
  %16 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %17 = load i32, i32* @REG_FW_APIVER, align 4
  %18 = call i32 @s5k6aa_read(%struct.i2c_client* %16, i32 %17, i64* %5)
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %15, %1
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = load i32, i32* @REG_FW_REVISION, align 4
  %25 = call i32 @s5k6aa_read(%struct.i2c_client* %23, i32 %24, i64* %6)
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %19
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %31 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %30, i32 0, i32 0
  %32 = call i32 @v4l2_err(i32* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %26
  %35 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %36 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %35, i32 0, i32 0
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @v4l2_info(i32* %36, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %37, i64 %38)
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @S5K6AAFX_FW_APIVER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %47

44:                                               ; preds = %34
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  br label %47

47:                                               ; preds = %44, %43
  %48 = phi i32 [ 0, %43 ], [ %46, %44 ]
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %29
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_set_ahb_address(%struct.i2c_client*) #1

declare dso_local i32 @s5k6aa_read(%struct.i2c_client*, i32, i64*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

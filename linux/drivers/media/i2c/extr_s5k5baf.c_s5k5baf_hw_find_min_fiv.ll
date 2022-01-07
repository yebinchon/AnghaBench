; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_find_min_fiv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_find_min_fiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32, i32 }

@REG_G_ACTUAL_P_FR_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"found valid frame interval: %d00us\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error setting frame interval: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"cannot find correct frame interval\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_hw_find_min_fiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_find_min_fiv(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %6 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %7 = load i32, i32* @REG_G_ACTUAL_P_FR_TIME, align 4
  %8 = call i32 @s5k5baf_read(%struct.s5k5baf* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %10 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %63

14:                                               ; preds = %1
  store i32 5, i32* %5, align 4
  br label %15

15:                                               ; preds = %52, %14
  %16 = load i32, i32* %5, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %15
  %19 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @s5k5baf_hw_set_fiv(%struct.s5k5baf* %19, i32 %20)
  %22 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %23 = call i32 @s5k5baf_get_cfg_error(%struct.s5k5baf* %22)
  store i32 %23, i32* %3, align 4
  %24 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %25 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %63

29:                                               ; preds = %18
  %30 = load i32, i32* %3, align 4
  switch i32 %30, label %42 [
    i32 128, label %31
    i32 0, label %34
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %37 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %39 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %38, i32 0, i32 2
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @v4l2_info(i32* %39, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %63

42:                                               ; preds = %29
  %43 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %44 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %43, i32 0, i32 2
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  %49 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %50 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %42, %31
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %5, align 4
  br label %15

55:                                               ; preds = %15
  %56 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %57 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %56, i32 0, i32 2
  %58 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %59 = load i32, i32* @ERANGE, align 4
  %60 = sub nsw i32 0, %59
  %61 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %62 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %55, %34, %28, %13
  ret void
}

declare dso_local i32 @s5k5baf_read(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_hw_set_fiv(%struct.s5k5baf*, i32) #1

declare dso_local i32 @s5k5baf_get_cfg_error(%struct.s5k5baf*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_validate_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_validate_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i64, i32 }

@.str = private unnamed_addr constant [26 x i8] c"error setting format: %d\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_hw_validate_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_validate_cfg(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  %3 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %4 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %5 = call i32 @s5k5baf_get_cfg_error(%struct.s5k5baf* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %7 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %27 [
    i32 0, label %13
    i32 128, label %16
  ]

13:                                               ; preds = %11
  %14 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %15 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  br label %36

16:                                               ; preds = %11
  %17 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %18 = call i32 @s5k5baf_hw_find_min_fiv(%struct.s5k5baf* %17)
  %19 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %20 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %16
  %24 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %25 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %23, %16
  br label %36

27:                                               ; preds = %11
  %28 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %29 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %28, i32 0, i32 2
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @v4l2_err(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* @EINVAL, align 8
  %33 = sub nsw i64 0, %32
  %34 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %35 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %10, %13, %26, %27
  ret void
}

declare dso_local i32 @s5k5baf_get_cfg_error(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_find_min_fiv(%struct.s5k5baf*) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

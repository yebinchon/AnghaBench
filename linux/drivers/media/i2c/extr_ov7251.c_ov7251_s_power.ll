; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov7251.c_ov7251_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov7251 = type { i32, i32, i32 }

@ov7251_global_init_setting = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"could not set init registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov7251_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov7251_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov7251*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ov7251* @to_ov7251(%struct.v4l2_subdev* %7)
  store %struct.ov7251* %8, %struct.ov7251** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %10 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %13 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %55

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %49

25:                                               ; preds = %22
  %26 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %27 = call i32 @ov7251_set_power_on(%struct.ov7251* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  br label %55

31:                                               ; preds = %25
  %32 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %33 = load i32, i32* @ov7251_global_init_setting, align 4
  %34 = load i32, i32* @ov7251_global_init_setting, align 4
  %35 = call i32 @ARRAY_SIZE(i32 %34)
  %36 = call i32 @ov7251_set_register_array(%struct.ov7251* %32, i32 %33, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %31
  %40 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %41 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %45 = call i32 @ov7251_set_power_off(%struct.ov7251* %44)
  br label %55

46:                                               ; preds = %31
  %47 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %48 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  br label %54

49:                                               ; preds = %22
  %50 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %51 = call i32 @ov7251_set_power_off(%struct.ov7251* %50)
  %52 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %53 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %39, %30, %21
  %56 = load %struct.ov7251*, %struct.ov7251** %5, align 8
  %57 = getelementptr inbounds %struct.ov7251, %struct.ov7251* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local %struct.ov7251* @to_ov7251(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov7251_set_power_on(%struct.ov7251*) #1

declare dso_local i32 @ov7251_set_register_array(%struct.ov7251*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ov7251_set_power_off(%struct.ov7251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

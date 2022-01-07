; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ov772x_priv = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unbalanced power count\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Duplicated s_power call\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov772x_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ov772x_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev* %7)
  store %struct.ov772x_priv* %8, %struct.ov772x_priv** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %10 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %13 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %25 = call i32 @ov772x_power_on(%struct.ov772x_priv* %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %30 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %31 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %34 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ov772x_set_params(%struct.ov772x_priv* %29, i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %28, %23
  br label %41

38:                                               ; preds = %20
  %39 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %40 = call i32 @ov772x_power_off(%struct.ov772x_priv* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %2
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %66, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 -1
  %50 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %51 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  %54 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %55 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %56, 0
  %58 = zext i1 %57 to i32
  %59 = call i32 @WARN(i32 %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %61 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 1
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN(i32 %64, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %45, %42
  %67 = load %struct.ov772x_priv*, %struct.ov772x_priv** %5, align 8
  %68 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %67, i32 0, i32 1
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local %struct.ov772x_priv* @to_ov772x(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ov772x_power_on(%struct.ov772x_priv*) #1

declare dso_local i32 @ov772x_set_params(%struct.ov772x_priv*, i32, i32) #1

declare dso_local i32 @ov772x_power_off(%struct.ov772x_priv*) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

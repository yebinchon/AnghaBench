; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k6aa = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s5k6aa_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s5k6aa*, align 8
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %9 = call %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev* %8)
  store %struct.s5k6aa* %9, %struct.s5k6aa** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %11 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %14 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = icmp eq i32 %15, %19
  br i1 %20, label %21, label %49

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %26 = call i32 @__s5k6aa_power_on(%struct.s5k6aa* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %24
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %31 = call i32 @s5k6aa_initialize_isp(%struct.v4l2_subdev* %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %24
  br label %36

33:                                               ; preds = %21
  %34 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %35 = call i32 @__s5k6aa_power_off(%struct.s5k6aa* %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1, i32 -1
  %44 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %45 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %39, %36
  br label %49

49:                                               ; preds = %48, %2
  %50 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %51 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %50, i32 0, i32 1
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load %struct.s5k6aa*, %struct.s5k6aa** %6, align 8
  %60 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp ne i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %58, %55, %49
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %70

65:                                               ; preds = %58
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @v4l2_ctrl_handler_setup(i32 %68)
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %63
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.s5k6aa* @to_s5k6aa(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__s5k6aa_power_on(%struct.s5k6aa*) #1

declare dso_local i32 @s5k6aa_initialize_isp(%struct.v4l2_subdev*) #1

declare dso_local i32 @__s5k6aa_power_off(%struct.s5k6aa*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

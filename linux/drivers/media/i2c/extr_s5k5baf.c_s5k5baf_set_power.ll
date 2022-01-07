; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k5baf = type { i32, %struct.TYPE_2__, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@REG_SET_HOST_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s5k5baf_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5k5baf*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev* %7)
  store %struct.s5k5baf* %8, %struct.s5k5baf** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %10 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %13 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp ne i32 %14, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  br label %78

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %70

24:                                               ; preds = %21
  %25 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %26 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %31 = call i32 @s5k5baf_load_setfile(%struct.s5k5baf* %30)
  br label %32

32:                                               ; preds = %29, %24
  %33 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %34 = call i32 @s5k5baf_initialize_data(%struct.s5k5baf* %33)
  %35 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %36 = call i32 @s5k5baf_power_on(%struct.s5k5baf* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %78

40:                                               ; preds = %32
  %41 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %42 = call i32 @s5k5baf_hw_init(%struct.s5k5baf* %41)
  %43 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %44 = call i32 @s5k5baf_hw_patch(%struct.s5k5baf* %43)
  %45 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %46 = load i32, i32* @REG_SET_HOST_INT, align 4
  %47 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %45, i32 %46, i32 1)
  %48 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %49 = call i32 @s5k5baf_hw_set_clocks(%struct.s5k5baf* %48)
  %50 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %51 = call i32 @s5k5baf_hw_set_video_bus(%struct.s5k5baf* %50)
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %40
  br label %78

55:                                               ; preds = %40
  %56 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %57 = call i32 @s5k5baf_hw_set_cis(%struct.s5k5baf* %56)
  %58 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %59 = call i32 @s5k5baf_hw_set_ccm(%struct.s5k5baf* %58)
  %60 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %61 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %55
  %65 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %66 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %64, %55
  br label %77

70:                                               ; preds = %21
  %71 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %72 = call i32 @s5k5baf_power_off(%struct.s5k5baf* %71)
  %73 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %74 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %70, %69
  br label %78

78:                                               ; preds = %77, %54, %39, %20
  %79 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %80 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %78
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.s5k5baf*, %struct.s5k5baf** %5, align 8
  %89 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @v4l2_ctrl_handler_setup(i32* %90)
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %87, %84, %78
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.s5k5baf* @to_s5k5baf(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @s5k5baf_load_setfile(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_initialize_data(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_power_on(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_init(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_patch(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_i2c_write(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_hw_set_clocks(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_video_bus(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_cis(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_ccm(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_clear_error(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_power_off(%struct.s5k5baf*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

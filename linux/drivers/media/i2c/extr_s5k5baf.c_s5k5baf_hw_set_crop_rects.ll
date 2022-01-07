; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_crop_rects.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_crop_rects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32, i32, %struct.v4l2_rect, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@REG_G_PREVREQ_IN_WIDTH = common dso_local global i32 0, align 4
@REG_G_PREVZOOM_IN_WIDTH = common dso_local global i32 0, align 4
@REG_G_INPUTS_CHANGE_REQ = common dso_local global i32 0, align 4
@REG_G_PREV_CFG_BYPASS_CHANGED = common dso_local global i32 0, align 4
@S5K5BAF_MAX_FR_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"crop error on max frame interval: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"crop error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k5baf*)* @s5k5baf_hw_set_crop_rects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_hw_set_crop_rects(%struct.s5k5baf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca %struct.v4l2_rect, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  %8 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %9 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %8, i32 0, i32 6
  store %struct.v4l2_rect* %9, %struct.v4l2_rect** %4, align 8
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %11 = load i32, i32* @REG_G_PREVREQ_IN_WIDTH, align 4
  %12 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %13 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %16 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.s5k5baf*, i32, i32, i32, ...) @s5k5baf_write_seq(%struct.s5k5baf* %10, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23)
  %25 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %26 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %25, i32 0, i32 2
  %27 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %28 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %27, i32 0, i32 6
  %29 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %30 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %29, i32 0, i32 5
  %31 = call i32 @s5k5baf_rescale(%struct.v4l2_rect* %5, %struct.v4l2_rect* %26, %struct.v4l2_rect* %28, i32* %30)
  %32 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %33 = load i32, i32* @REG_G_PREVZOOM_IN_WIDTH, align 4
  %34 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %5, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (%struct.s5k5baf*, i32, i32, i32, ...) @s5k5baf_write_seq(%struct.s5k5baf* %32, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41)
  %43 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %44 = load i32, i32* @REG_G_INPUTS_CHANGE_REQ, align 4
  %45 = call i32 @s5k5baf_synchronize(%struct.s5k5baf* %43, i32 500, i32 %44)
  %46 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %47 = load i32, i32* @REG_G_PREV_CFG_BYPASS_CHANGED, align 4
  %48 = call i32 @s5k5baf_synchronize(%struct.s5k5baf* %46, i32 500, i32 %47)
  %49 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %50 = call i32 @s5k5baf_get_cfg_error(%struct.s5k5baf* %49)
  store i32 %50, i32* %6, align 4
  %51 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %52 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %1
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %126

57:                                               ; preds = %1
  %58 = load i32, i32* %6, align 4
  switch i32 %58, label %92 [
    i32 0, label %59
    i32 128, label %60
  ]

59:                                               ; preds = %57
  br label %99

60:                                               ; preds = %57
  %61 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %62 = load i32, i32* @S5K5BAF_MAX_FR_TIME, align 4
  %63 = call i32 @s5k5baf_hw_set_fiv(%struct.s5k5baf* %61, i32 %62)
  %64 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %65 = call i32 @s5k5baf_get_cfg_error(%struct.s5k5baf* %64)
  store i32 %65, i32* %6, align 4
  %66 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %67 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %126

72:                                               ; preds = %60
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %72
  %76 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %77 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %76, i32 0, i32 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @v4l2_err(i32* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  %82 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %83 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %72
  %85 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %86 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %87 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @s5k5baf_hw_set_fiv(%struct.s5k5baf* %85, i32 %88)
  %90 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %91 = call i32 @s5k5baf_hw_validate_cfg(%struct.s5k5baf* %90)
  br label %99

92:                                               ; preds = %57
  %93 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %94 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %93, i32 0, i32 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @v4l2_err(i32* %94, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %126

99:                                               ; preds = %84, %59
  %100 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %101 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %126

105:                                              ; preds = %99
  %106 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %107 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %106, i32 0, i32 2
  store %struct.v4l2_rect* %107, %struct.v4l2_rect** %4, align 8
  %108 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %109 = call i32 @REG_P_OUT_WIDTH(i32 0)
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %111 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 (%struct.s5k5baf*, i32, i32, i32, ...) @s5k5baf_write_seq(%struct.s5k5baf* %108, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %118 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %119 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @s5k5baf_hw_set_fiv(%struct.s5k5baf* %117, i32 %120)
  %122 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %123 = call i32 @s5k5baf_hw_validate_cfg(%struct.s5k5baf* %122)
  %124 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %125 = call i32 @s5k5baf_clear_error(%struct.s5k5baf* %124)
  store i32 %125, i32* %2, align 4
  br label %126

126:                                              ; preds = %105, %104, %92, %70, %55
  %127 = load i32, i32* %2, align 4
  ret i32 %127
}

declare dso_local i32 @s5k5baf_write_seq(%struct.s5k5baf*, i32, i32, i32, ...) #1

declare dso_local i32 @s5k5baf_rescale(%struct.v4l2_rect*, %struct.v4l2_rect*, %struct.v4l2_rect*, i32*) #1

declare dso_local i32 @s5k5baf_synchronize(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_get_cfg_error(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_clear_error(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_set_fiv(%struct.s5k5baf*, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @s5k5baf_hw_validate_cfg(%struct.s5k5baf*) #1

declare dso_local i32 @REG_P_OUT_WIDTH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

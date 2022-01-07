; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_initialize_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_initialize_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ctrl_ops = type { i32 }
%struct.s5k6aa = type { %struct.TYPE_2__, %struct.s5k6aa_ctrls }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.s5k6aa_ctrls = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.v4l2_ctrl_handler }

@s5k6aa_ctrl_ops = common dso_local global %struct.v4l2_ctrl_ops zeroinitializer, align 4
@V4L2_CID_AUTO_WHITE_BALANCE = common dso_local global i32 0, align 4
@s5k6aa_ctrls = common dso_local global i32* null, align 8
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_COLORFX = common dso_local global i32 0, align 4
@V4L2_COLORFX_SKY_BLUE = common dso_local global i32 0, align 4
@V4L2_COLORFX_NONE = common dso_local global i32 0, align 4
@V4L2_CID_WHITE_BALANCE_TEMPERATURE = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*)* @s5k6aa_initialize_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_initialize_ctrls(%struct.s5k6aa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca %struct.v4l2_ctrl_ops*, align 8
  %5 = alloca %struct.s5k6aa_ctrls*, align 8
  %6 = alloca %struct.v4l2_ctrl_handler*, align 8
  %7 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  store %struct.v4l2_ctrl_ops* @s5k6aa_ctrl_ops, %struct.v4l2_ctrl_ops** %4, align 8
  %8 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %9 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %8, i32 0, i32 1
  store %struct.s5k6aa_ctrls* %9, %struct.s5k6aa_ctrls** %5, align 8
  %10 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %11 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %10, i32 0, i32 9
  store %struct.v4l2_ctrl_handler* %11, %struct.v4l2_ctrl_handler** %6, align 8
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %13 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %12, i32 16)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %2, align 4
  br label %132

18:                                               ; preds = %1
  %19 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %20 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %21 = load i32, i32* @V4L2_CID_AUTO_WHITE_BALANCE, align 4
  %22 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %19, %struct.v4l2_ctrl_ops* %20, i32 %21, i32 0, i32 1, i32 1, i32 1)
  %23 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %24 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %26 = load i32*, i32** @s5k6aa_ctrls, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %25, i32* %27, i32* null)
  %29 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %30 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %32 = load i32*, i32** @s5k6aa_ctrls, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  %34 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %31, i32* %33, i32* null)
  %35 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %36 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %35, i32 0, i32 7
  store i8* %34, i8** %36, align 8
  %37 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %38 = load i32*, i32** @s5k6aa_ctrls, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = call i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler* %37, i32* %39, i32* null)
  %41 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %42 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %41, i32 0, i32 6
  store i8* %40, i8** %42, align 8
  %43 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %44 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %43, i32 0, i32 5
  %45 = call i32 @v4l2_ctrl_auto_cluster(i32 4, i8** %44, i32 0, i32 0)
  %46 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %47 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %48 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %49 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %46, %struct.v4l2_ctrl_ops* %47, i32 %48, i32 0, i32 1, i32 1, i32 0)
  %50 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %51 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %50, i32 0, i32 3
  store i8* %49, i8** %51, align 8
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %53 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %54 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %55 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, %struct.v4l2_ctrl_ops* %53, i32 %54, i32 0, i32 1, i32 1, i32 0)
  %56 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %57 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  %58 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %59 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %58, i32 0, i32 3
  %60 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %59)
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %62 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %63 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %64 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %65 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %66 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %61, %struct.v4l2_ctrl_ops* %62, i32 %63, i32 %64, i32 0, i32 %65)
  %67 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %68 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  %69 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %70 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %71 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %72 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %69, %struct.v4l2_ctrl_ops* %70, i32 %71, i32 0, i32 6000000, i32 1, i32 100000)
  %73 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %74 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %73, i32 0, i32 2
  store i8* %72, i8** %74, align 8
  %75 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %76 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %77 = load i32, i32* @V4L2_CID_GAIN, align 4
  %78 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %75, %struct.v4l2_ctrl_ops* %76, i32 %77, i32 0, i32 256, i32 1, i32 256)
  %79 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %80 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %79, i32 0, i32 1
  store i8* %78, i8** %80, align 8
  %81 = load %struct.s5k6aa_ctrls*, %struct.s5k6aa_ctrls** %5, align 8
  %82 = getelementptr inbounds %struct.s5k6aa_ctrls, %struct.s5k6aa_ctrls* %81, i32 0, i32 0
  %83 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %82, i32 0, i32 0)
  %84 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %85 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %86 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %87 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %88 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %89 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %84, %struct.v4l2_ctrl_ops* %85, i32 %86, i32 %87, i32 0, i32 %88)
  %90 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %91 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %92 = load i32, i32* @V4L2_CID_COLORFX, align 4
  %93 = load i32, i32* @V4L2_COLORFX_SKY_BLUE, align 4
  %94 = load i32, i32* @V4L2_COLORFX_NONE, align 4
  %95 = call i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %90, %struct.v4l2_ctrl_ops* %91, i32 %92, i32 %93, i32 -112, i32 %94)
  %96 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %97 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %98 = load i32, i32* @V4L2_CID_WHITE_BALANCE_TEMPERATURE, align 4
  %99 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %96, %struct.v4l2_ctrl_ops* %97, i32 %98, i32 0, i32 256, i32 1, i32 0)
  %100 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %101 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %102 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %103 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %100, %struct.v4l2_ctrl_ops* %101, i32 %102, i32 -127, i32 127, i32 1, i32 0)
  %104 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %105 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %106 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %107 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %104, %struct.v4l2_ctrl_ops* %105, i32 %106, i32 -127, i32 127, i32 1, i32 0)
  %108 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %109 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %110 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %111 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %108, %struct.v4l2_ctrl_ops* %109, i32 %110, i32 -127, i32 127, i32 1, i32 0)
  %112 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %113 = load %struct.v4l2_ctrl_ops*, %struct.v4l2_ctrl_ops** %4, align 8
  %114 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %115 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %112, %struct.v4l2_ctrl_ops* %113, i32 %114, i32 -127, i32 127, i32 1, i32 0)
  %116 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %18
  %121 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %122 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %7, align 4
  %124 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %125 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %124)
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %2, align 4
  br label %132

127:                                              ; preds = %18
  %128 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %6, align 8
  %129 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %130 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %128, %struct.v4l2_ctrl_handler** %131, align 8
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %127, %120, %16
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_custom(%struct.v4l2_ctrl_handler*, i32*, i32*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_ops*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

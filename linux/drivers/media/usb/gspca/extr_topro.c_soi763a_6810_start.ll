; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_soi763a_6810_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_soi763a_6810_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd = type { i32, i32 }
%struct.gspca_dev = type { i32, i32, i32, i64 }
%struct.sd = type { i64, i32, i32, i32, i32 }

@soi763a_6810_start.bridge_init_2 = internal constant [3 x %struct.cmd] [%struct.cmd { i32 128, i32 0 }, %struct.cmd { i32 129, i32 4 }, %struct.cmd { i32 129, i32 1 }], align 16
@soi763a_6810_start.bridge_init_3 = internal constant [6 x %struct.cmd] [%struct.cmd { i32 135, i32 32 }, %struct.cmd { i32 134, i32 159 }, %struct.cmd { i32 133, i32 2 }, %struct.cmd { i32 132, i32 19 }, %struct.cmd { i32 131, i32 248 }, %struct.cmd { i32 130, i32 1 }], align 16
@soi763a_6810_start.bridge_init_6 = internal constant [4 x %struct.cmd] [%struct.cmd { i32 8, i32 255 }, %struct.cmd { i32 9, i32 255 }, %struct.cmd { i32 10, i32 95 }, %struct.cmd { i32 11, i32 128 }], align 16
@color_null = common dso_local global %struct.cmd* null, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@tp6810_ov_init_common = common dso_local global %struct.cmd* null, align 8
@TP6800_R78_FORMAT = common dso_local global i32 0, align 4
@tp6810_bridge_start = common dso_local global %struct.cmd* null, align 8
@color_gain = common dso_local global %struct.cmd** null, align 8
@SENSOR_SOI763A = common dso_local global i64 0, align 8
@TP6800_R3F_FRAME_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @soi763a_6810_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @soi763a_6810_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @reg_w(%struct.gspca_dev* %6, i32 34, i32 %9)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = load %struct.cmd*, %struct.cmd** @color_null, align 8
  %13 = call i32 @bulk_w(%struct.gspca_dev* %11, i32 3, %struct.cmd* %12, i32 8)
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = call i32 @reg_w(%struct.gspca_dev* %14, i32 89, i32 64)
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SENSOR_CX0342, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %1
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @v4l2_ctrl_g_ctrl(i32 %25)
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @v4l2_ctrl_g_ctrl(i32 %29)
  %31 = load %struct.sd*, %struct.sd** %3, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @v4l2_ctrl_g_ctrl(i32 %33)
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @v4l2_ctrl_g_ctrl(i32 %37)
  %39 = call i32 @setexposure(%struct.gspca_dev* %22, i32 %26, i32 %30, i32 %34, i32 %38)
  br label %51

40:                                               ; preds = %1
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @v4l2_ctrl_g_ctrl(i32 %44)
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @v4l2_ctrl_g_ctrl(i32 %48)
  %50 = call i32 @setexposure(%struct.gspca_dev* %41, i32 %45, i32 %49, i32 0, i32 0)
  br label %51

51:                                               ; preds = %40, %21
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %53 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([3 x %struct.cmd], [3 x %struct.cmd]* @soi763a_6810_start.bridge_init_2, i64 0, i64 0))
  %54 = call i32 @reg_w_buf(%struct.gspca_dev* %52, %struct.cmd* getelementptr inbounds ([3 x %struct.cmd], [3 x %struct.cmd]* @soi763a_6810_start.bridge_init_2, i64 0, i64 0), i32 %53)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load %struct.cmd*, %struct.cmd** @tp6810_ov_init_common, align 8
  %57 = load %struct.cmd*, %struct.cmd** @tp6810_ov_init_common, align 8
  %58 = call i32 @ARRAY_SIZE(%struct.cmd* %57)
  %59 = call i32 @reg_w_buf(%struct.gspca_dev* %55, %struct.cmd* %56, i32 %58)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([6 x %struct.cmd], [6 x %struct.cmd]* @soi763a_6810_start.bridge_init_3, i64 0, i64 0))
  %62 = call i32 @reg_w_buf(%struct.gspca_dev* %60, %struct.cmd* getelementptr inbounds ([6 x %struct.cmd], [6 x %struct.cmd]* @soi763a_6810_start.bridge_init_3, i64 0, i64 0), i32 %61)
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %51
  %68 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %69 = call i32 @reg_w(%struct.gspca_dev* %68, i32 74, i32 127)
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = call i32 @reg_w(%struct.gspca_dev* %70, i32 7, i32 5)
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %74 = call i32 @reg_w(%struct.gspca_dev* %72, i32 %73, i32 0)
  br label %83

75:                                               ; preds = %51
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = call i32 @reg_w(%struct.gspca_dev* %76, i32 74, i32 255)
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @reg_w(%struct.gspca_dev* %78, i32 7, i32 133)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = load i32, i32* @TP6800_R78_FORMAT, align 4
  %82 = call i32 @reg_w(%struct.gspca_dev* %80, i32 %81, i32 1)
  br label %83

83:                                               ; preds = %75, %67
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @v4l2_ctrl_g_ctrl(i32 %87)
  %89 = call i32 @setgamma(%struct.gspca_dev* %84, i32 %88)
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %91 = load %struct.cmd*, %struct.cmd** @tp6810_bridge_start, align 8
  %92 = load %struct.cmd*, %struct.cmd** @tp6810_bridge_start, align 8
  %93 = call i32 @ARRAY_SIZE(%struct.cmd* %92)
  %94 = call i32 @reg_w_buf(%struct.gspca_dev* %90, %struct.cmd* %91, i32 %93)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %95, i32 0, i32 3
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %83
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %101 = call i32 @reg_w(%struct.gspca_dev* %100, i32 79, i32 0)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %103 = call i32 @reg_w(%struct.gspca_dev* %102, i32 78, i32 124)
  br label %104

104:                                              ; preds = %99, %83
  %105 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %106 = call i32 @reg_w(%struct.gspca_dev* %105, i32 0, i32 0)
  %107 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %108 = load %struct.sd*, %struct.sd** %3, align 8
  %109 = getelementptr inbounds %struct.sd, %struct.sd* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @v4l2_ctrl_g_ctrl(i32 %110)
  %112 = call i32 @setsharpness(%struct.gspca_dev* %107, i32 %111)
  %113 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %114 = load %struct.cmd**, %struct.cmd*** @color_gain, align 8
  %115 = load i64, i64* @SENSOR_SOI763A, align 8
  %116 = getelementptr inbounds %struct.cmd*, %struct.cmd** %114, i64 %115
  %117 = load %struct.cmd*, %struct.cmd** %116, align 8
  %118 = load %struct.cmd**, %struct.cmd*** @color_gain, align 8
  %119 = getelementptr inbounds %struct.cmd*, %struct.cmd** %118, i64 0
  %120 = load %struct.cmd*, %struct.cmd** %119, align 8
  %121 = call i32 @ARRAY_SIZE(%struct.cmd* %120)
  %122 = call i32 @bulk_w(%struct.gspca_dev* %113, i32 3, %struct.cmd* %117, i32 %121)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @set_led(%struct.gspca_dev* %123, i32 1)
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = load i32, i32* @TP6800_R3F_FRAME_RATE, align 4
  %127 = call i32 @reg_w(%struct.gspca_dev* %125, i32 %126, i32 240)
  %128 = load %struct.sd*, %struct.sd** %3, align 8
  %129 = getelementptr inbounds %struct.sd, %struct.sd* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @SENSOR_CX0342, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %104
  %134 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %135 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %136 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @v4l2_ctrl_g_ctrl(i32 %137)
  %139 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %140 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @v4l2_ctrl_g_ctrl(i32 %141)
  %143 = load %struct.sd*, %struct.sd** %3, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @v4l2_ctrl_g_ctrl(i32 %145)
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @v4l2_ctrl_g_ctrl(i32 %149)
  %151 = call i32 @setexposure(%struct.gspca_dev* %134, i32 %138, i32 %142, i32 %146, i32 %150)
  br label %163

152:                                              ; preds = %104
  %153 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %155 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @v4l2_ctrl_g_ctrl(i32 %156)
  %158 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %159 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @v4l2_ctrl_g_ctrl(i32 %160)
  %162 = call i32 @setexposure(%struct.gspca_dev* %153, i32 %157, i32 %161, i32 0, i32 0)
  br label %163

163:                                              ; preds = %152, %133
  %164 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %165 = call i32 @ARRAY_SIZE(%struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @soi763a_6810_start.bridge_init_6, i64 0, i64 0))
  %166 = call i32 @reg_w_buf(%struct.gspca_dev* %164, %struct.cmd* getelementptr inbounds ([4 x %struct.cmd], [4 x %struct.cmd]* @soi763a_6810_start.bridge_init_6, i64 0, i64 0), i32 %165)
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @bulk_w(%struct.gspca_dev*, i32, %struct.cmd*, i32) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, %struct.cmd*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.cmd*) #1

declare dso_local i32 @setgamma(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setsharpness(%struct.gspca_dev*, i32) #1

declare dso_local i32 @set_led(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

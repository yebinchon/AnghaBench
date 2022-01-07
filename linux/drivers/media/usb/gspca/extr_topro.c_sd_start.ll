; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i64, i64, i32, i32, i32, i32, i32 }

@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@tp6810_late_start = common dso_local global i32 0, align 4
@SENSOR_SOI763A = common dso_local global i64 0, align 8
@BRIDGE_TP6810 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %5 = bitcast %struct.gspca_dev* %4 to %struct.sd*
  store %struct.sd* %5, %struct.sd** %3, align 8
  %6 = load %struct.sd*, %struct.sd** %3, align 8
  %7 = getelementptr inbounds %struct.sd, %struct.sd* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %10 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @jpeg_define(i32 %8, i32 %12, i32 %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @set_dqt(%struct.gspca_dev* %18, i32 %21)
  %23 = load %struct.sd*, %struct.sd** %3, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BRIDGE_TP6800, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %1
  %29 = load %struct.sd*, %struct.sd** %3, align 8
  %30 = getelementptr inbounds %struct.sd, %struct.sd* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SENSOR_CX0342, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %36 = call i32 @cx0342_6800_start(%struct.gspca_dev* %35)
  br label %40

37:                                               ; preds = %28
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %39 = call i32 @soi763a_6800_start(%struct.gspca_dev* %38)
  br label %40

40:                                               ; preds = %37, %34
  br label %131

41:                                               ; preds = %1
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @SENSOR_CX0342, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 @cx0342_6810_start(%struct.gspca_dev* %48)
  br label %53

50:                                               ; preds = %41
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = call i32 @soi763a_6810_start(%struct.gspca_dev* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %55 = load i32, i32* @tp6810_late_start, align 4
  %56 = load i32, i32* @tp6810_late_start, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = call i32 @reg_w_buf(%struct.gspca_dev* %54, i32 %55, i32 %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %60 = call i32 @reg_w(%struct.gspca_dev* %59, i32 128, i32 3)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 10, i32 14
  %68 = call i32 @reg_w(%struct.gspca_dev* %61, i32 130, i32 %67)
  %69 = load %struct.sd*, %struct.sd** %3, align 8
  %70 = getelementptr inbounds %struct.sd, %struct.sd* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SENSOR_CX0342, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %93

74:                                               ; preds = %53
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @v4l2_ctrl_g_ctrl(i32 %78)
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @v4l2_ctrl_g_ctrl(i32 %82)
  %84 = load %struct.sd*, %struct.sd** %3, align 8
  %85 = getelementptr inbounds %struct.sd, %struct.sd* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @v4l2_ctrl_g_ctrl(i32 %86)
  %88 = load %struct.sd*, %struct.sd** %3, align 8
  %89 = getelementptr inbounds %struct.sd, %struct.sd* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @v4l2_ctrl_g_ctrl(i32 %90)
  %92 = call i32 @setexposure(%struct.gspca_dev* %75, i32 %79, i32 %83, i32 %87, i32 %91)
  br label %104

93:                                               ; preds = %53
  %94 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %96 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @v4l2_ctrl_g_ctrl(i32 %97)
  %99 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %100 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @v4l2_ctrl_g_ctrl(i32 %101)
  %103 = call i32 @setexposure(%struct.gspca_dev* %94, i32 %98, i32 %102, i32 0, i32 0)
  br label %104

104:                                              ; preds = %93, %74
  %105 = load %struct.sd*, %struct.sd** %3, align 8
  %106 = getelementptr inbounds %struct.sd, %struct.sd* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @SENSOR_SOI763A, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %112 = load %struct.sd*, %struct.sd** %3, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @v4l2_ctrl_g_ctrl(i32 %114)
  %116 = call i32 @setquality(%struct.gspca_dev* %111, i32 %115)
  br label %117

117:                                              ; preds = %110, %104
  %118 = load %struct.sd*, %struct.sd** %3, align 8
  %119 = getelementptr inbounds %struct.sd, %struct.sd* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BRIDGE_TP6810, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %117
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %125 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %126 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @v4l2_ctrl_g_ctrl(i32 %127)
  %129 = call i32 @setautogain(%struct.gspca_dev* %124, i32 %128)
  br label %130

130:                                              ; preds = %123, %117
  br label %131

131:                                              ; preds = %130, %40
  %132 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %134 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @v4l2_ctrl_g_ctrl(i32 %135)
  %137 = call i32 @setframerate(%struct.gspca_dev* %132, i32 %136)
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  ret i32 %140
}

declare dso_local i32 @jpeg_define(i32, i32, i32) #1

declare dso_local i32 @set_dqt(%struct.gspca_dev*, i32) #1

declare dso_local i32 @cx0342_6800_start(%struct.gspca_dev*) #1

declare dso_local i32 @soi763a_6800_start(%struct.gspca_dev*) #1

declare dso_local i32 @cx0342_6810_start(%struct.gspca_dev*) #1

declare dso_local i32 @soi763a_6810_start(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @setexposure(%struct.gspca_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_g_ctrl(i32) #1

declare dso_local i32 @setquality(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setautogain(%struct.gspca_dev*, i32) #1

declare dso_local i32 @setframerate(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_topro.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i64, i64, i8*, i8*, i8*, i8*, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@SENSOR_CX0342 = common dso_local global i64 0, align 8
@V4L2_CID_RED_BALANCE = common dso_local global i32 0, align 4
@V4L2_CID_BLUE_BALANCE = common dso_local global i32 0, align 4
@SENSOR_SOI763A = common dso_local global i64 0, align 8
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_SHARPNESS = common dso_local global i32 0, align 4
@V4L2_CID_GAMMA = common dso_local global i32 0, align 4
@NGAMMA = common dso_local global i32 0, align 4
@BRIDGE_TP6800 = common dso_local global i64 0, align 8
@BRIDGE_TP6810 = common dso_local global i64 0, align 8
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_JPEG_COMPRESSION_QUALITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Could not initialize controls\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_init_controls(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %8, i32 0, i32 4
  store %struct.v4l2_ctrl_handler* %9, %struct.v4l2_ctrl_handler** %5, align 8
  %10 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %10, %struct.v4l2_ctrl_handler** %13, align 8
  %14 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 4)
  %16 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %17 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %18 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %16, i32* @sd_ctrl_ops, i32 %17, i32 1, i32 220, i32 1, i32 78)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SENSOR_CX0342, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %1
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %28 = load i32, i32* @V4L2_CID_RED_BALANCE, align 4
  %29 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %27, i32* @sd_ctrl_ops, i32 %28, i32 0, i32 4095, i32 1, i32 256)
  %30 = load %struct.sd*, %struct.sd** %4, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %33 = load i32, i32* @V4L2_CID_BLUE_BALANCE, align 4
  %34 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %32, i32* @sd_ctrl_ops, i32 %33, i32 0, i32 4095, i32 1, i32 256)
  %35 = load %struct.sd*, %struct.sd** %4, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %26, %1
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SENSOR_SOI763A, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %45 = load i32, i32* @V4L2_CID_GAIN, align 4
  %46 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %44, i32* @sd_ctrl_ops, i32 %45, i32 0, i32 15, i32 1, i32 3)
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %55

49:                                               ; preds = %37
  %50 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %51 = load i32, i32* @V4L2_CID_GAIN, align 4
  %52 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %50, i32* @sd_ctrl_ops, i32 %51, i32 0, i32 4095, i32 1, i32 256)
  %53 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %54 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %55

55:                                               ; preds = %49, %43
  %56 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %57 = load i32, i32* @V4L2_CID_SHARPNESS, align 4
  %58 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %56, i32* @sd_ctrl_ops, i32 %57, i32 0, i32 3, i32 1, i32 2)
  %59 = load %struct.sd*, %struct.sd** %4, align 8
  %60 = getelementptr inbounds %struct.sd, %struct.sd* %59, i32 0, i32 4
  store i8* %58, i8** %60, align 8
  %61 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %62 = load i32, i32* @V4L2_CID_GAMMA, align 4
  %63 = load i32, i32* @NGAMMA, align 4
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.sd*, %struct.sd** %4, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SENSOR_SOI763A, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %55
  %71 = load %struct.sd*, %struct.sd** %4, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @BRIDGE_TP6800, align 8
  %75 = icmp eq i64 %73, %74
  br label %76

76:                                               ; preds = %70, %55
  %77 = phi i1 [ false, %55 ], [ %75, %70 ]
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 0, i32 1
  %80 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %61, i32* @sd_ctrl_ops, i32 %62, i32 0, i32 %64, i32 1, i32 %79)
  %81 = load %struct.sd*, %struct.sd** %4, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.sd*, %struct.sd** %4, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @BRIDGE_TP6810, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %76
  %89 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %90 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %91 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %89, i32* @sd_ctrl_ops, i32 %90, i32 0, i32 1, i32 1, i32 1)
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %93 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %76
  %95 = load %struct.sd*, %struct.sd** %4, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @SENSOR_SOI763A, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %94
  %101 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %102 = load i32, i32* @V4L2_CID_JPEG_COMPRESSION_QUALITY, align 4
  %103 = load %struct.sd*, %struct.sd** %4, align 8
  %104 = getelementptr inbounds %struct.sd, %struct.sd* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @BRIDGE_TP6810, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i32 0, i32 13
  %110 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %101, i32* @sd_ctrl_ops, i32 %102, i32 0, i32 15, i32 1, i32 %109)
  %111 = load %struct.sd*, %struct.sd** %4, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 2
  store i8* %110, i8** %112, align 8
  br label %113

113:                                              ; preds = %100, %94
  %114 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %115 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %2, align 4
  br label %137

123:                                              ; preds = %113
  %124 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %125 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %130 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %129, i32 0, i32 1
  %131 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %130, i32 0, i32 0)
  br label %136

132:                                              ; preds = %123
  %133 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %134 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %133, i32 0, i32 0
  %135 = call i32 @v4l2_ctrl_cluster(i32 2, i8** %134)
  br label %136

136:                                              ; preds = %132, %128
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %136, %118
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_cluster(i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

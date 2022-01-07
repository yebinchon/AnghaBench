; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixb.c_sd_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, i8*, i8*, %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }
%struct.sd = type { i32, i32, i32, i32, i8* }

@sd_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@BRIDGE_103 = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_60HZ = common dso_local global i32 0, align 4
@V4L2_CID_POWER_LINE_FREQUENCY_DISABLED = common dso_local global i32 0, align 4
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
  %15 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %14, i32 5)
  %16 = load %struct.sd*, %struct.sd** %4, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 134
  br i1 %19, label %35, label %20

20:                                               ; preds = %1
  %21 = load %struct.sd*, %struct.sd** %4, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp eq i32 %23, 133
  br i1 %24, label %35, label %25

25:                                               ; preds = %20
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 132
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = load %struct.sd*, %struct.sd** %4, align 8
  %32 = getelementptr inbounds %struct.sd, %struct.sd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 131
  br i1 %34, label %35, label %41

35:                                               ; preds = %30, %25, %20, %1
  %36 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %37 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %38 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %36, i32* @sd_ctrl_ops, i32 %37, i32 0, i32 255, i32 1, i32 127)
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 4
  store i8* %38, i8** %40, align 8
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct.sd*, %struct.sd** %4, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  switch i32 %44, label %69 [
    i32 134, label %45
    i32 132, label %45
    i32 131, label %45
    i32 133, label %51
    i32 135, label %57
    i32 130, label %63
    i32 129, label %63
    i32 128, label %63
  ]

45:                                               ; preds = %41, %41, %41
  %46 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %47 = load i32, i32* @V4L2_CID_GAIN, align 4
  %48 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %46, i32* @sd_ctrl_ops, i32 %47, i32 0, i32 31, i32 1, i32 15)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %50 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  br label %88

51:                                               ; preds = %41
  %52 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %53 = load i32, i32* @V4L2_CID_GAIN, align 4
  %54 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %52, i32* @sd_ctrl_ops, i32 %53, i32 0, i32 47, i32 1, i32 31)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %56 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %88

57:                                               ; preds = %41
  %58 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %59 = load i32, i32* @V4L2_CID_GAIN, align 4
  %60 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %58, i32* @sd_ctrl_ops, i32 %59, i32 0, i32 63, i32 1, i32 31)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 2
  store i8* %60, i8** %62, align 8
  br label %88

63:                                               ; preds = %41, %41, %41
  %64 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %65 = load i32, i32* @V4L2_CID_GAIN, align 4
  %66 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %64, i32* @sd_ctrl_ops, i32 %65, i32 0, i32 255, i32 1, i32 127)
  %67 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %67, i32 0, i32 2
  store i8* %66, i8** %68, align 8
  br label %88

69:                                               ; preds = %41
  %70 = load %struct.sd*, %struct.sd** %4, align 8
  %71 = getelementptr inbounds %struct.sd, %struct.sd* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BRIDGE_103, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %77 = load i32, i32* @V4L2_CID_GAIN, align 4
  %78 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %76, i32* @sd_ctrl_ops, i32 %77, i32 0, i32 127, i32 1, i32 63)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %80 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  br label %87

81:                                               ; preds = %69
  %82 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %83 = load i32, i32* @V4L2_CID_GAIN, align 4
  %84 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %82, i32* @sd_ctrl_ops, i32 %83, i32 0, i32 15, i32 1, i32 7)
  %85 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %86 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %85, i32 0, i32 2
  store i8* %84, i8** %86, align 8
  br label %87

87:                                               ; preds = %81, %75
  br label %88

88:                                               ; preds = %87, %63, %57, %51, %45
  %89 = load %struct.sd*, %struct.sd** %4, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %114 [
    i32 135, label %92
    i32 134, label %100
    i32 133, label %100
    i32 132, label %100
    i32 131, label %100
    i32 130, label %108
    i32 129, label %108
  ]

92:                                               ; preds = %88
  %93 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %94 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %95 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %93, i32* @sd_ctrl_ops, i32 %94, i32 0, i32 8191, i32 1, i32 482)
  %96 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %97 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %96, i32 0, i32 1
  store i8* %95, i8** %97, align 8
  %98 = load %struct.sd*, %struct.sd** %4, align 8
  %99 = getelementptr inbounds %struct.sd, %struct.sd* %98, i32 0, i32 1
  store i32 964, i32* %99, align 4
  br label %114

100:                                              ; preds = %88, %88, %88, %88
  %101 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %102 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %103 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %101, i32* @sd_ctrl_ops, i32 %102, i32 0, i32 1023, i32 1, i32 66)
  %104 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %105 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load %struct.sd*, %struct.sd** %4, align 8
  %107 = getelementptr inbounds %struct.sd, %struct.sd* %106, i32 0, i32 1
  store i32 200, i32* %107, align 4
  br label %114

108:                                              ; preds = %88, %88
  %109 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %110 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %111 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %109, i32* @sd_ctrl_ops, i32 %110, i32 2, i32 15, i32 1, i32 2)
  %112 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %113 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  br label %114

114:                                              ; preds = %88, %108, %100, %92
  %115 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %116 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %121 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %122 = call i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %120, i32* @sd_ctrl_ops, i32 %121, i32 0, i32 1, i32 1, i32 1)
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %124 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %123, i32 0, i32 0
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %119, %114
  %126 = load %struct.sd*, %struct.sd** %4, align 8
  %127 = getelementptr inbounds %struct.sd, %struct.sd* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 134
  br i1 %129, label %135, label %130

130:                                              ; preds = %125
  %131 = load %struct.sd*, %struct.sd** %4, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 133
  br i1 %134, label %135, label %143

135:                                              ; preds = %130, %125
  %136 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %137 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY, align 4
  %138 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_60HZ, align 4
  %139 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_DISABLED, align 4
  %140 = call i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler* %136, i32* @sd_ctrl_ops, i32 %137, i32 %138, i32 0, i32 %139)
  %141 = load %struct.sd*, %struct.sd** %4, align 8
  %142 = getelementptr inbounds %struct.sd, %struct.sd* %141, i32 0, i32 2
  store i32 %140, i32* %142, align 8
  br label %143

143:                                              ; preds = %135, %130
  %144 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %145 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %153

148:                                              ; preds = %143
  %149 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %150 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %5, align 8
  %151 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  store i32 %152, i32* %2, align 4
  br label %163

153:                                              ; preds = %143
  %154 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %155 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %160 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %159, i32 0, i32 0
  %161 = call i32 @v4l2_ctrl_auto_cluster(i32 3, i8** %160, i32 0, i32 0)
  br label %162

162:                                              ; preds = %158, %153
  store i32 0, i32* %2, align 4
  br label %163

163:                                              ; preds = %162, %148
  %164 = load i32, i32* %2, align 4
  ret i32 %164
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

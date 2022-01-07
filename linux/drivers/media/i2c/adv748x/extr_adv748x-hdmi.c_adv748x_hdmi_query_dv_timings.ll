; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_query_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_query_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_dv_timings = type { i32, %struct.v4l2_bt_timings }
%struct.v4l2_bt_timings = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.adv748x_hdmi = type { %struct.v4l2_dv_timings }
%struct.adv748x_state = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@V4L2_DV_BT_656_1120 = common dso_local global i32 0, align 4
@ADV748X_HDMI_F1H1 = common dso_local global i32 0, align 4
@ADV748X_HDMI_F1H1_INTERLACED = common dso_local global i32 0, align 4
@V4L2_DV_INTERLACED = common dso_local global i64 0, align 8
@V4L2_DV_PROGRESSIVE = common dso_local global i64 0, align 8
@ADV748X_HDMI_LW1 = common dso_local global i32 0, align 4
@ADV748X_HDMI_LW1_WIDTH_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_F0H1 = common dso_local global i32 0, align 4
@ADV748X_HDMI_F0H1_HEIGHT_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_HFRONT_PORCH = common dso_local global i32 0, align 4
@ADV748X_HDMI_HFRONT_PORCH_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_HSYNC_WIDTH = common dso_local global i32 0, align 4
@ADV748X_HDMI_HSYNC_WIDTH_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_HBACK_PORCH = common dso_local global i32 0, align 4
@ADV748X_HDMI_HBACK_PORCH_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_VFRONT_PORCH = common dso_local global i32 0, align 4
@ADV748X_HDMI_VFRONT_PORCH_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_VSYNC_WIDTH = common dso_local global i32 0, align 4
@ADV748X_HDMI_VSYNC_WIDTH_MASK = common dso_local global i32 0, align 4
@ADV748X_HDMI_VBACK_PORCH = common dso_local global i32 0, align 4
@ADV748X_HDMI_VBACK_PORCH_MASK = common dso_local global i32 0, align 4
@V4L2_DV_VSYNC_POS_POL = common dso_local global i32 0, align 4
@V4L2_DV_HSYNC_POS_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_dv_timings*)* @adv748x_hdmi_query_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_hdmi_query_dv_timings(%struct.v4l2_subdev* %0, %struct.v4l2_dv_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_dv_timings*, align 8
  %6 = alloca %struct.adv748x_hdmi*, align 8
  %7 = alloca %struct.adv748x_state*, align 8
  %8 = alloca %struct.v4l2_bt_timings*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_dv_timings* %1, %struct.v4l2_dv_timings** %5, align 8
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev* %11)
  store %struct.adv748x_hdmi* %12, %struct.adv748x_hdmi** %6, align 8
  %13 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %14 = call %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi* %13)
  store %struct.adv748x_state* %14, %struct.adv748x_state** %7, align 8
  %15 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %16 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %15, i32 0, i32 1
  store %struct.v4l2_bt_timings* %16, %struct.v4l2_bt_timings** %8, align 8
  %17 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %18 = icmp ne %struct.v4l2_dv_timings* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %169

22:                                               ; preds = %2
  %23 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %24 = call i32 @memset(%struct.v4l2_dv_timings* %23, i32 0, i32 72)
  %25 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %26 = call i32 @adv748x_hdmi_has_signal(%struct.adv748x_state* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @ENOLINK, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %169

31:                                               ; preds = %22
  %32 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %33 = call i32 @adv748x_hdmi_read_pixelclock(%struct.adv748x_state* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENODATA, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %169

39:                                               ; preds = %31
  %40 = load i32, i32* @V4L2_DV_BT_656_1120, align 4
  %41 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %42 = getelementptr inbounds %struct.v4l2_dv_timings, %struct.v4l2_dv_timings* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %45 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %47 = load i32, i32* @ADV748X_HDMI_F1H1, align 4
  %48 = call i32 @hdmi_read(%struct.adv748x_state* %46, i32 %47)
  %49 = load i32, i32* @ADV748X_HDMI_F1H1_INTERLACED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %39
  %53 = load i64, i64* @V4L2_DV_INTERLACED, align 8
  br label %56

54:                                               ; preds = %39
  %55 = load i64, i64* @V4L2_DV_PROGRESSIVE, align 8
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i64 [ %53, %52 ], [ %55, %54 ]
  %58 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %59 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %61 = load i32, i32* @ADV748X_HDMI_LW1, align 4
  %62 = load i32, i32* @ADV748X_HDMI_LW1_WIDTH_MASK, align 4
  %63 = call i32 @hdmi_read16(%struct.adv748x_state* %60, i32 %61, i32 %62)
  %64 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %65 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %67 = load i32, i32* @ADV748X_HDMI_F0H1, align 4
  %68 = load i32, i32* @ADV748X_HDMI_F0H1_HEIGHT_MASK, align 4
  %69 = call i32 @hdmi_read16(%struct.adv748x_state* %66, i32 %67, i32 %68)
  %70 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %71 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %73 = load i32, i32* @ADV748X_HDMI_HFRONT_PORCH, align 4
  %74 = load i32, i32* @ADV748X_HDMI_HFRONT_PORCH_MASK, align 4
  %75 = call i32 @hdmi_read16(%struct.adv748x_state* %72, i32 %73, i32 %74)
  %76 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %77 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 8
  %78 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %79 = load i32, i32* @ADV748X_HDMI_HSYNC_WIDTH, align 4
  %80 = load i32, i32* @ADV748X_HDMI_HSYNC_WIDTH_MASK, align 4
  %81 = call i32 @hdmi_read16(%struct.adv748x_state* %78, i32 %79, i32 %80)
  %82 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %83 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 4
  %84 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %85 = load i32, i32* @ADV748X_HDMI_HBACK_PORCH, align 4
  %86 = load i32, i32* @ADV748X_HDMI_HBACK_PORCH_MASK, align 4
  %87 = call i32 @hdmi_read16(%struct.adv748x_state* %84, i32 %85, i32 %86)
  %88 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %89 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %91 = load i32, i32* @ADV748X_HDMI_VFRONT_PORCH, align 4
  %92 = load i32, i32* @ADV748X_HDMI_VFRONT_PORCH_MASK, align 4
  %93 = call i32 @hdmi_read16(%struct.adv748x_state* %90, i32 %91, i32 %92)
  %94 = sdiv i32 %93, 2
  %95 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %96 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %95, i32 0, i32 7
  store i32 %94, i32* %96, align 4
  %97 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %98 = load i32, i32* @ADV748X_HDMI_VSYNC_WIDTH, align 4
  %99 = load i32, i32* @ADV748X_HDMI_VSYNC_WIDTH_MASK, align 4
  %100 = call i32 @hdmi_read16(%struct.adv748x_state* %97, i32 %98, i32 %99)
  %101 = sdiv i32 %100, 2
  %102 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %103 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %105 = load i32, i32* @ADV748X_HDMI_VBACK_PORCH, align 4
  %106 = load i32, i32* @ADV748X_HDMI_VBACK_PORCH_MASK, align 4
  %107 = call i32 @hdmi_read16(%struct.adv748x_state* %104, i32 %105, i32 %106)
  %108 = sdiv i32 %107, 2
  %109 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %112 = call i32 @hdmi_read(%struct.adv748x_state* %111, i32 5)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @BIT(i32 4)
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %56
  %118 = load i32, i32* @V4L2_DV_VSYNC_POS_POL, align 4
  br label %120

119:                                              ; preds = %56
  br label %120

120:                                              ; preds = %119, %117
  %121 = phi i32 [ %118, %117 ], [ 0, %119 ]
  %122 = load i32, i32* %10, align 4
  %123 = call i32 @BIT(i32 5)
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120
  %127 = load i32, i32* @V4L2_DV_HSYNC_POS_POL, align 4
  br label %129

128:                                              ; preds = %120
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = or i32 %121, %130
  %132 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %133 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %132, i32 0, i32 10
  store i32 %131, i32* %133, align 8
  %134 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %135 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @V4L2_DV_INTERLACED, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %129
  %140 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %141 = call i32 @hdmi_read16(%struct.adv748x_state* %140, i32 11, i32 8191)
  %142 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %143 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, %141
  store i32 %145, i32* %143, align 4
  %146 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %147 = call i32 @hdmi_read16(%struct.adv748x_state* %146, i32 44, i32 16383)
  %148 = sdiv i32 %147, 2
  %149 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %150 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %149, i32 0, i32 11
  store i32 %148, i32* %150, align 4
  %151 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %152 = call i32 @hdmi_read16(%struct.adv748x_state* %151, i32 48, i32 16383)
  %153 = sdiv i32 %152, 2
  %154 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %155 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %154, i32 0, i32 12
  store i32 %153, i32* %155, align 8
  %156 = load %struct.adv748x_state*, %struct.adv748x_state** %7, align 8
  %157 = call i32 @hdmi_read16(%struct.adv748x_state* %156, i32 52, i32 16383)
  %158 = sdiv i32 %157, 2
  %159 = load %struct.v4l2_bt_timings*, %struct.v4l2_bt_timings** %8, align 8
  %160 = getelementptr inbounds %struct.v4l2_bt_timings, %struct.v4l2_bt_timings* %159, i32 0, i32 13
  store i32 %158, i32* %160, align 4
  br label %161

161:                                              ; preds = %139, %129
  %162 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %163 = call i32 @adv748x_fill_optional_dv_timings(%struct.v4l2_dv_timings* %162)
  %164 = load %struct.adv748x_hdmi*, %struct.adv748x_hdmi** %6, align 8
  %165 = getelementptr inbounds %struct.adv748x_hdmi, %struct.adv748x_hdmi* %164, i32 0, i32 0
  %166 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %5, align 8
  %167 = bitcast %struct.v4l2_dv_timings* %165 to i8*
  %168 = bitcast %struct.v4l2_dv_timings* %166 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %167, i8* align 8 %168, i64 72, i1 false)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %161, %36, %28, %19
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.adv748x_hdmi* @adv748x_sd_to_hdmi(%struct.v4l2_subdev*) #1

declare dso_local %struct.adv748x_state* @adv748x_hdmi_to_state(%struct.adv748x_hdmi*) #1

declare dso_local i32 @memset(%struct.v4l2_dv_timings*, i32, i32) #1

declare dso_local i32 @adv748x_hdmi_has_signal(%struct.adv748x_state*) #1

declare dso_local i32 @adv748x_hdmi_read_pixelclock(%struct.adv748x_state*) #1

declare dso_local i32 @hdmi_read(%struct.adv748x_state*, i32) #1

declare dso_local i32 @hdmi_read16(%struct.adv748x_state*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @adv748x_fill_optional_dv_timings(%struct.v4l2_dv_timings*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

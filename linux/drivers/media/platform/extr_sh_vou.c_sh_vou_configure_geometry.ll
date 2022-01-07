; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_configure_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_vou.c_sh_vou_configure_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_vou_fmt = type { i32, i32, i32, i32 }
%struct.sh_vou_device = type { i32, %struct.TYPE_2__, %struct.v4l2_pix_format, %struct.v4l2_rect }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_pix_format = type { i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@vou_fmt = common dso_local global %struct.sh_vou_fmt* null, align 8
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@VOU_MAX_IMAGE_WIDTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"image %ux%u, black %u:%u, offset %u:%u, display %ux%u\0A\00", align 1
@VOUISR = common dso_local global i32 0, align 4
@VOUVPR = common dso_local global i32 0, align 4
@VOUDPR = common dso_local global i32 0, align 4
@VOUDSR = common dso_local global i32 0, align 4
@vou_scale_h_fld = common dso_local global i32* null, align 8
@vou_scale_v_fld = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"0x%08x: scaling 0x%x\0A\00", align 1
@VOUVCR = common dso_local global i32 0, align 4
@VOUDFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_vou_device*, i32, i32, i32)* @sh_vou_configure_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_vou_configure_geometry(%struct.sh_vou_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sh_vou_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sh_vou_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.v4l2_rect*, align 8
  %17 = alloca %struct.v4l2_pix_format*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.sh_vou_device* %0, %struct.sh_vou_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %21 = load %struct.sh_vou_fmt*, %struct.sh_vou_fmt** @vou_fmt, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.sh_vou_fmt, %struct.sh_vou_fmt* %21, i64 %23
  store %struct.sh_vou_fmt* %24, %struct.sh_vou_fmt** %9, align 8
  %25 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %26 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %25, i32 0, i32 3
  store %struct.v4l2_rect* %26, %struct.v4l2_rect** %16, align 8
  %27 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %28 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %27, i32 0, i32 2
  store %struct.v4l2_pix_format* %28, %struct.v4l2_pix_format** %17, align 8
  store i32 0, i32* %18, align 4
  %29 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %30 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @V4L2_STD_525_60, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 858, i32* %12, align 4
  br label %37

36:                                               ; preds = %4
  store i32 864, i32* %12, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %17, align 8
  %39 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 2
  store i32 %41, i32* %13, align 4
  %42 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %43 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  store i32 %45, i32* %14, align 4
  %46 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %47 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 2
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @VOU_MAX_IMAGE_WIDTH, align 4
  %52 = sub i32 %50, %51
  store i32 %52, i32* %10, align 4
  store i32 20, i32* %11, align 4
  %53 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %54 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %55, %58
  store i32 %59, i32* %19, align 4
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = add i32 %60, %61
  store i32 %62, i32* %20, align 4
  %63 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %64 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %17, align 8
  %68 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %74 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* %20, align 4
  %79 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %66, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %70, i32 %71, i32 %72, i32 %75, i32 %76, i32 %77, i32 %78)
  %80 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %81 = load i32, i32* @VOUISR, align 4
  %82 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %17, align 8
  %83 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 16
  %86 = load i32, i32* %13, align 4
  %87 = or i32 %85, %86
  %88 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %80, i32 %81, i32 %87)
  %89 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %90 = load i32, i32* @VOUVPR, align 4
  %91 = load i32, i32* %10, align 4
  %92 = shl i32 %91, 16
  %93 = load i32, i32* %11, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %89, i32 %90, i32 %94)
  %96 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %97 = load i32, i32* @VOUDPR, align 4
  %98 = load %struct.v4l2_rect*, %struct.v4l2_rect** %16, align 8
  %99 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = load i32, i32* %15, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %96, i32 %97, i32 %103)
  %105 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %106 = load i32, i32* @VOUDSR, align 4
  %107 = load i32, i32* %19, align 4
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %20, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %105, i32 %106, i32 %110)
  %112 = load i32, i32* %7, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %125

114:                                              ; preds = %37
  %115 = load i32*, i32** @vou_scale_h_fld, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = shl i32 %120, 4
  %122 = or i32 32768, %121
  %123 = load i32, i32* %18, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %18, align 4
  br label %125

125:                                              ; preds = %114, %37
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32*, i32** @vou_scale_v_fld, align 8
  %130 = load i32, i32* %8, align 4
  %131 = sub nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %129, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = or i32 16384, %134
  %136 = load i32, i32* %18, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %18, align 4
  br label %138

138:                                              ; preds = %128, %125
  %139 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %140 = getelementptr inbounds %struct.sh_vou_device, %struct.sh_vou_device* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.sh_vou_fmt*, %struct.sh_vou_fmt** %9, align 8
  %144 = getelementptr inbounds %struct.sh_vou_fmt, %struct.sh_vou_fmt* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* %18, align 4
  %147 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %142, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %145, i32 %146)
  %148 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %149 = load i32, i32* @VOUVCR, align 4
  %150 = load i32, i32* %18, align 4
  %151 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %148, i32 %149, i32 %150)
  %152 = load %struct.sh_vou_device*, %struct.sh_vou_device** %5, align 8
  %153 = load i32, i32* @VOUDFR, align 4
  %154 = load %struct.sh_vou_fmt*, %struct.sh_vou_fmt** %9, align 8
  %155 = getelementptr inbounds %struct.sh_vou_fmt, %struct.sh_vou_fmt* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.sh_vou_fmt*, %struct.sh_vou_fmt** %9, align 8
  %158 = getelementptr inbounds %struct.sh_vou_fmt, %struct.sh_vou_fmt* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = shl i32 %159, 8
  %161 = or i32 %156, %160
  %162 = load %struct.sh_vou_fmt*, %struct.sh_vou_fmt** %9, align 8
  %163 = getelementptr inbounds %struct.sh_vou_fmt, %struct.sh_vou_fmt* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 %164, 16
  %166 = or i32 %161, %165
  %167 = call i32 @sh_vou_reg_ab_write(%struct.sh_vou_device* %152, i32 %153, i32 %166)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @sh_vou_reg_ab_write(%struct.sh_vou_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

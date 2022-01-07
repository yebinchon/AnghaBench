; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_hw_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_renesas-ceu.c_ceu_hw_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceu_device = type { %struct.ceu_subdev*, %struct.v4l2_pix_format_mplane }
%struct.ceu_subdev = type { i32, %struct.ceu_mbus_fmt }
%struct.ceu_mbus_fmt = type { i32, i32, i32, i32 }
%struct.v4l2_pix_format_mplane = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CEU_CAIFR = common dso_local global i32 0, align 4
@CEU_CFWCR = common dso_local global i32 0, align 4
@CEU_CRCNTR = common dso_local global i32 0, align 4
@CEU_CRCMPR = common dso_local global i32 0, align 4
@CEU_CDOCR_SWAP_ENDIANNESS = common dso_local global i32 0, align 4
@CEU_CAMCR_JPEG = common dso_local global i32 0, align 4
@CEU_CDOCR_NO_DOWSAMPLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@CEU_CAMCR = common dso_local global i32 0, align 4
@CEU_CDOCR = common dso_local global i32 0, align 4
@CEU_CAPCR = common dso_local global i32 0, align 4
@CEU_CAPCR_BUS_WIDTH256 = common dso_local global i32 0, align 4
@CEU_CAMOR = common dso_local global i32 0, align 4
@CEU_CAPWR = common dso_local global i32 0, align 4
@CEU_CFSZR = common dso_local global i32 0, align 4
@CEU_CDWDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceu_device*)* @ceu_hw_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceu_hw_config(%struct.ceu_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceu_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_pix_format_mplane*, align 8
  %10 = alloca %struct.ceu_subdev*, align 8
  %11 = alloca %struct.ceu_mbus_fmt*, align 8
  %12 = alloca i32, align 4
  store %struct.ceu_device* %0, %struct.ceu_device** %3, align 8
  %13 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %14 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %13, i32 0, i32 1
  store %struct.v4l2_pix_format_mplane* %14, %struct.v4l2_pix_format_mplane** %9, align 8
  %15 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %16 = getelementptr inbounds %struct.ceu_device, %struct.ceu_device* %15, i32 0, i32 0
  %17 = load %struct.ceu_subdev*, %struct.ceu_subdev** %16, align 8
  store %struct.ceu_subdev* %17, %struct.ceu_subdev** %10, align 8
  %18 = load %struct.ceu_subdev*, %struct.ceu_subdev** %10, align 8
  %19 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %18, i32 0, i32 1
  store %struct.ceu_mbus_fmt* %19, %struct.ceu_mbus_fmt** %11, align 8
  %20 = load %struct.ceu_subdev*, %struct.ceu_subdev** %10, align 8
  %21 = getelementptr inbounds %struct.ceu_subdev, %struct.ceu_subdev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %24 = load i32, i32* @CEU_CAIFR, align 4
  %25 = call i32 @ceu_write(%struct.ceu_device* %23, i32 %24, i32 0)
  %26 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %27 = load i32, i32* @CEU_CFWCR, align 4
  %28 = call i32 @ceu_write(%struct.ceu_device* %26, i32 %27, i32 0)
  %29 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %30 = load i32, i32* @CEU_CRCNTR, align 4
  %31 = call i32 @ceu_write(%struct.ceu_device* %29, i32 %30, i32 0)
  %32 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %33 = load i32, i32* @CEU_CRCMPR, align 4
  %34 = call i32 @ceu_write(%struct.ceu_device* %32, i32 %33, i32 0)
  %35 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %36 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = shl i32 %37, 16
  %39 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %40 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %43 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = mul nsw i32 %41, %44
  %46 = sdiv i32 %45, 8
  %47 = or i32 %38, %46
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @CEU_CDOCR_SWAP_ENDIANNESS, align 4
  store i32 %48, i32* %5, align 4
  %49 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %129 [
    i32 129, label %52
    i32 128, label %52
    i32 131, label %52
    i32 130, label %52
    i32 134, label %71
    i32 135, label %75
    i32 132, label %100
    i32 133, label %104
  ]

52:                                               ; preds = %1, %1, %1, %1
  %53 = load i32, i32* @CEU_CAMCR_JPEG, align 4
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @CEU_CDOCR_NO_DOWSAMPLE, align 4
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  %57 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %58 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = shl i32 %59, 16
  %61 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %62 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %60, %63
  store i32 %64, i32* %6, align 4
  %65 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %66 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %7, align 4
  br label %132

71:                                               ; preds = %1
  %72 = load i32, i32* @CEU_CDOCR_NO_DOWSAMPLE, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %1, %71
  %76 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %77 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %75
  %81 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %82 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %4, align 4
  br label %88

84:                                               ; preds = %75
  %85 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %86 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %90 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = shl i32 %91, 16
  %93 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %94 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %92, %95
  store i32 %96, i32* %6, align 4
  %97 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %7, align 4
  br label %132

100:                                              ; preds = %1
  %101 = load i32, i32* @CEU_CDOCR_NO_DOWSAMPLE, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %1, %100
  %105 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %106 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %111 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %4, align 4
  br label %117

113:                                              ; preds = %104
  %114 = load %struct.ceu_mbus_fmt*, %struct.ceu_mbus_fmt** %11, align 8
  %115 = getelementptr inbounds %struct.ceu_mbus_fmt, %struct.ceu_mbus_fmt* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %4, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %119 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = shl i32 %120, 16
  %122 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %123 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %121, %124
  store i32 %125, i32* %6, align 4
  %126 = load %struct.v4l2_pix_format_mplane*, %struct.v4l2_pix_format_mplane** %9, align 8
  %127 = getelementptr inbounds %struct.v4l2_pix_format_mplane, %struct.v4l2_pix_format_mplane* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %7, align 4
  br label %132

129:                                              ; preds = %1
  %130 = load i32, i32* @EINVAL, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %176

132:                                              ; preds = %117, %88, %52
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i32 2, i32 0
  %139 = load i32, i32* %4, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %12, align 4
  %142 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = load i32, i32* %4, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %4, align 4
  %149 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %150 = load i32, i32* @CEU_CAMCR, align 4
  %151 = load i32, i32* %4, align 4
  %152 = call i32 @ceu_write(%struct.ceu_device* %149, i32 %150, i32 %151)
  %153 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %154 = load i32, i32* @CEU_CDOCR, align 4
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @ceu_write(%struct.ceu_device* %153, i32 %154, i32 %155)
  %157 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %158 = load i32, i32* @CEU_CAPCR, align 4
  %159 = load i32, i32* @CEU_CAPCR_BUS_WIDTH256, align 4
  %160 = call i32 @ceu_write(%struct.ceu_device* %157, i32 %158, i32 %159)
  %161 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %162 = load i32, i32* @CEU_CAMOR, align 4
  %163 = call i32 @ceu_write(%struct.ceu_device* %161, i32 %162, i32 0)
  %164 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %165 = load i32, i32* @CEU_CAPWR, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @ceu_write(%struct.ceu_device* %164, i32 %165, i32 %166)
  %168 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %169 = load i32, i32* @CEU_CFSZR, align 4
  %170 = load i32, i32* %6, align 4
  %171 = call i32 @ceu_write(%struct.ceu_device* %168, i32 %169, i32 %170)
  %172 = load %struct.ceu_device*, %struct.ceu_device** %3, align 8
  %173 = load i32, i32* @CEU_CDWDR, align 4
  %174 = load i32, i32* %7, align 4
  %175 = call i32 @ceu_write(%struct.ceu_device* %172, i32 %173, i32 %174)
  store i32 0, i32* %2, align 4
  br label %176

176:                                              ; preds = %132, %129
  %177 = load i32, i32* %2, align 4
  ret i32 %177
}

declare dso_local i32 @ceu_write(%struct.ceu_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

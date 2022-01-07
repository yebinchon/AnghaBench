; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_config_image_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/am437x/extr_am437x-vpfe.c_vpfe_config_image_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.vpfe_device = type { i32, %struct.TYPE_9__, i32, %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i32, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }

@vpfe_standards = common dso_local global %struct.TYPE_10__* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"standard not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpfe_device*, i32)* @vpfe_config_image_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_config_image_format(%struct.vpfe_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vpfe_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_pix_format*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vpfe_device* %0, %struct.vpfe_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %10 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  store %struct.v4l2_pix_format* %12, %struct.v4l2_pix_format** %6, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %60, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vpfe_standards, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %13
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vpfe_standards, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %18
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vpfe_standards, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %36 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vpfe_standards, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %45 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vpfe_standards, align 8
  %48 = load i32, i32* %7, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %54 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %58 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %13

63:                                               ; preds = %28, %13
  %64 = load i32, i32* %7, align 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** @vpfe_standards, align 8
  %66 = call i32 @ARRAY_SIZE(%struct.TYPE_10__* %65)
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %70 = call i32 @vpfe_err(%struct.vpfe_device* %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %148

73:                                               ; preds = %63
  %74 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %75 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %78 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 3
  store i64 0, i64* %79, align 8
  %80 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %81 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %85 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  %87 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %88 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %92 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %95 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %99 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %101 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %105 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %107 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %108 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %107, i32 0, i32 3
  store i32 %106, i32* %108, align 4
  %109 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %110 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %109, i32 0, i32 4
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %73
  %115 = load i32, i32* @V4L2_FIELD_INTERLACED, align 4
  %116 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %117 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %116, i32 0, i32 2
  store i32 %115, i32* %117, align 4
  br label %122

118:                                              ; preds = %73
  %119 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %120 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %121 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %120, i32 0, i32 2
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %124 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %125 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %124, i32 0, i32 3
  %126 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %127 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %126, i32 0, i32 2
  %128 = call i32 @__vpfe_get_format(%struct.vpfe_device* %123, %struct.TYPE_11__* %125, i32* %127)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %8, align 4
  store i32 %132, i32* %3, align 4
  br label %148

133:                                              ; preds = %122
  %134 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %135 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %138 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  store i32 %136, i32* %139, align 4
  %140 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %6, align 8
  %141 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %144 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  store i32 %142, i32* %145, align 8
  %146 = load %struct.vpfe_device*, %struct.vpfe_device** %4, align 8
  %147 = call i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device* %146)
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %133, %131, %68
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_10__*) #1

declare dso_local i32 @vpfe_err(%struct.vpfe_device*, i8*) #1

declare dso_local i32 @__vpfe_get_format(%struct.vpfe_device*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_s3c244x_hw_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_s3c244x_hw_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i64, i32, %struct.TYPE_2__*, %struct.camif_scaler, %struct.camif_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.camif_scaler = type { i32, i32, i64, i64, i64 }
%struct.camif_dev = type { i32 }

@CISCCTRL_SCALEUP_MASK = common dso_local global i32 0, align 4
@CISCCTRL_SCALERBYPASS = common dso_local global i32 0, align 4
@CISCCTRL_MAIN_RATIO_MASK = common dso_local global i32 0, align 4
@CIPRSCCTRL_RGB_FORMAT_24BIT = common dso_local global i32 0, align 4
@VP_CODEC = common dso_local global i64 0, align 8
@CISCCTRL_SCALEUP_H = common dso_local global i32 0, align 4
@CIPRSCCTRL_SCALEUP_H = common dso_local global i32 0, align 4
@CISCCTRL_SCALEUP_V = common dso_local global i32 0, align 4
@CIPRSCCTRL_SCALEUP_V = common dso_local global i32 0, align 4
@VP_PREVIEW = common dso_local global i64 0, align 8
@IMG_FMT_XRGB8888 = common dso_local global i32 0, align 4
@CIPRSCCTRL_SAMPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"main: h_ratio: %#x, v_ratio: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_vp*)* @camif_s3c244x_hw_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_s3c244x_hw_set_scaler(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca %struct.camif_scaler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %7 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %8 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %7, i32 0, i32 4
  %9 = load %struct.camif_dev*, %struct.camif_dev** %8, align 8
  store %struct.camif_dev* %9, %struct.camif_dev** %3, align 8
  %10 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %11 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %10, i32 0, i32 3
  store %struct.camif_scaler* %11, %struct.camif_scaler** %4, align 8
  %12 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %13 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %18 = call i32 @camif_hw_set_prescaler(%struct.camif_vp* %17)
  %19 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %20 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %21 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %24 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @S3C_CAMIF_REG_CISCCTRL(i64 %22, i32 %25)
  %27 = call i32 @camif_read(%struct.camif_dev* %19, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @CISCCTRL_SCALEUP_MASK, align 4
  %29 = load i32, i32* @CISCCTRL_SCALERBYPASS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CISCCTRL_MAIN_RATIO_MASK, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CIPRSCCTRL_RGB_FORMAT_24BIT, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %39 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %1
  %43 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %44 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %49 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @VP_CODEC, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load i32, i32* @CISCCTRL_SCALEUP_H, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %47
  %58 = load i32, i32* @CIPRSCCTRL_SCALEUP_H, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %42
  %63 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %64 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %82

67:                                               ; preds = %62
  %68 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %69 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VP_CODEC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @CISCCTRL_SCALEUP_V, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %81

77:                                               ; preds = %67
  %78 = load i32, i32* @CIPRSCCTRL_SCALEUP_V, align 4
  %79 = load i32, i32* %6, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %6, align 4
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %81, %62
  br label %94

83:                                               ; preds = %1
  %84 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %85 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @VP_CODEC, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  %90 = load i32, i32* @CISCCTRL_SCALERBYPASS, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %89, %83
  br label %94

94:                                               ; preds = %93, %82
  %95 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %96 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, 511
  %99 = shl i32 %98, 16
  %100 = load i32, i32* %6, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %6, align 4
  %102 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %103 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 511
  %106 = load i32, i32* %6, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %6, align 4
  %108 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %109 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @VP_PREVIEW, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %125

113:                                              ; preds = %94
  %114 = load i32, i32* %5, align 4
  %115 = load i32, i32* @IMG_FMT_XRGB8888, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* @CIPRSCCTRL_RGB_FORMAT_24BIT, align 4
  %119 = load i32, i32* %6, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* @CIPRSCCTRL_SAMPLE, align 4
  %123 = load i32, i32* %6, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %121, %94
  %126 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %127 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %128 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %131 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @S3C_CAMIF_REG_CISCCTRL(i64 %129, i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @camif_write(%struct.camif_dev* %126, i32 %133, i32 %134)
  %136 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %137 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %140 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %138, i32 %141)
  ret void
}

declare dso_local i32 @camif_hw_set_prescaler(%struct.camif_vp*) #1

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CISCCTRL(i64, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

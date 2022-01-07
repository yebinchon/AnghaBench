; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_s3c64xx_hw_set_scaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_s3c64xx_hw_set_scaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, %struct.TYPE_2__*, %struct.camif_scaler, %struct.camif_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.camif_scaler = type { i32, i32, i64, i64, i64, i32 }
%struct.camif_dev = type { i32 }

@CISCCTRL_CSCR2Y_WIDE = common dso_local global i32 0, align 4
@CISCCTRL_CSCY2R_WIDE = common dso_local global i32 0, align 4
@CISCCTRL_SCALEUP_H = common dso_local global i32 0, align 4
@CISCCTRL_SCALEUP_V = common dso_local global i32 0, align 4
@CISCCTRL_SCALERBYPASS = common dso_local global i32 0, align 4
@CISCCTRL_ONE2ONE = common dso_local global i32 0, align 4
@CISCCTRL_INRGB_FMT_MASK = common dso_local global i32 0, align 4
@CISCCTRL_OUTRGB_FMT_MASK = common dso_local global i32 0, align 4
@CISCCTRL_INTERLACE = common dso_local global i32 0, align 4
@CISCCTRL_EXTRGB_EXTENSION = common dso_local global i32 0, align 4
@CISCCTRL_MAIN_RATIO_MASK = common dso_local global i32 0, align 4
@CISCCTRL_OUTRGB_FMT_RGB666 = common dso_local global i32 0, align 4
@CISCCTRL_OUTRGB_FMT_RGB888 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"main: h_ratio: %#x, v_ratio: %#x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_vp*)* @camif_s3c64xx_hw_set_scaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_s3c64xx_hw_set_scaler(%struct.camif_vp* %0) #0 {
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
  %21 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %24 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @S3C_CAMIF_REG_CISCCTRL(i32 %22, i32 %25)
  %27 = call i32 @camif_read(%struct.camif_dev* %19, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @CISCCTRL_CSCR2Y_WIDE, align 4
  %29 = load i32, i32* @CISCCTRL_CSCY2R_WIDE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @CISCCTRL_SCALEUP_H, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @CISCCTRL_SCALEUP_V, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CISCCTRL_SCALERBYPASS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @CISCCTRL_ONE2ONE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @CISCCTRL_INRGB_FMT_MASK, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @CISCCTRL_OUTRGB_FMT_MASK, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @CISCCTRL_INTERLACE, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CISCCTRL_EXTRGB_EXTENSION, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CISCCTRL_MAIN_RATIO_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @CISCCTRL_CSCR2Y_WIDE, align 4
  %53 = load i32, i32* @CISCCTRL_CSCY2R_WIDE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %58 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %1
  %62 = load i32, i32* @CISCCTRL_SCALERBYPASS, align 4
  %63 = load i32, i32* %6, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %6, align 4
  br label %93

65:                                               ; preds = %1
  %66 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %67 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* @CISCCTRL_SCALEUP_H, align 4
  %72 = load i32, i32* %6, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %76 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @CISCCTRL_SCALEUP_V, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %85 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @CISCCTRL_ONE2ONE, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %83
  br label %93

93:                                               ; preds = %92, %61
  %94 = load i32, i32* %5, align 4
  switch i32 %94, label %103 [
    i32 129, label %95
    i32 128, label %99
  ]

95:                                               ; preds = %93
  %96 = load i32, i32* @CISCCTRL_OUTRGB_FMT_RGB666, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %103

99:                                               ; preds = %93
  %100 = load i32, i32* @CISCCTRL_OUTRGB_FMT_RGB888, align 4
  %101 = load i32, i32* %6, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %93, %99, %95
  %104 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %105 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, 511
  %108 = shl i32 %107, 16
  %109 = load i32, i32* %6, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %112 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, 511
  %115 = load i32, i32* %6, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %6, align 4
  %117 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %118 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %119 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %122 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @S3C_CAMIF_REG_CISCCTRL(i32 %120, i32 %123)
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @camif_write(%struct.camif_dev* %117, i32 %124, i32 %125)
  %127 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %128 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %131 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %132)
  ret void
}

declare dso_local i32 @camif_hw_set_prescaler(%struct.camif_vp*) #1

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CISCCTRL(i32, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

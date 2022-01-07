; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-core.c_cx18_av_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.cx18_av_state = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cx18 = type { i32 }

@CXADEC_DL_CTL = common dso_local global i32 0, align 4
@CXADEC_HOST_REG1 = common dso_local global i32 0, align 4
@CXADEC_DLL1_DIAG_CTRL = common dso_local global i32 0, align 4
@CXADEC_DLL2_DIAG_CTRL = common dso_local global i32 0, align 4
@CXADEC_AFE_DIAG_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_AFE_DIAG_CTRL3 = common dso_local global i32 0, align 4
@CXADEC_PIN_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_PIN_CTRL2 = common dso_local global i32 0, align 4
@CXADEC_SOFT_RST_CTRL = common dso_local global i32 0, align 4
@CXADEC_CHIP_CTRL = common dso_local global i32 0, align 4
@CXADEC_MODE_CTRL = common dso_local global i32 0, align 4
@CXADEC_CRUSH_CTRL = common dso_local global i32 0, align 4
@CXADEC_DFE_CTRL2 = common dso_local global i32 0, align 4
@CXADEC_OUT_CTRL1 = common dso_local global i32 0, align 4
@CXADEC_AFE_CTRL = common dso_local global i32 0, align 4
@CXADEC_SRC_COMB_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*)* @cx18_av_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_av_initialize(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.cx18_av_state*, align 8
  %4 = alloca %struct.cx18*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = call %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev* %7)
  store %struct.cx18_av_state* %8, %struct.cx18_av_state** %3, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %10 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %9)
  store %struct.cx18* %10, %struct.cx18** %4, align 8
  %11 = load %struct.cx18*, %struct.cx18** %4, align 8
  %12 = call i32 @cx18_av_loadfw(%struct.cx18* %11)
  %13 = load %struct.cx18*, %struct.cx18** %4, align 8
  %14 = load i32, i32* @CXADEC_DL_CTL, align 4
  %15 = call i32 @cx18_av_write4_expect(%struct.cx18* %13, i32 %14, i32 50331648, i32 50331648, i32 318767104)
  %16 = load %struct.cx18*, %struct.cx18** %4, align 8
  %17 = load i32, i32* @CXADEC_HOST_REG1, align 4
  %18 = call i32 @cx18_av_read4(%struct.cx18* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.cx18*, %struct.cx18** %4, align 8
  %20 = load i32, i32* @CXADEC_HOST_REG1, align 4
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, 1
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @cx18_av_write4_expect(%struct.cx18* %19, i32 %20, i32 %22, i32 %23, i32 65534)
  %25 = load %struct.cx18*, %struct.cx18** %4, align 8
  %26 = load i32, i32* @CXADEC_HOST_REG1, align 4
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 65534
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, 65534
  %31 = call i32 @cx18_av_write4_expect(%struct.cx18* %25, i32 %26, i32 %28, i32 %30, i32 65535)
  %32 = load %struct.cx18*, %struct.cx18** %4, align 8
  %33 = load i32, i32* @CXADEC_DLL1_DIAG_CTRL, align 4
  %34 = call i32 @cx18_av_read4(%struct.cx18* %32, i32 %33)
  %35 = and i32 %34, -503316737
  store i32 %35, i32* %6, align 4
  %36 = load %struct.cx18*, %struct.cx18** %4, align 8
  %37 = load i32, i32* @CXADEC_DLL1_DIAG_CTRL, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @cx18_av_write4(%struct.cx18* %36, i32 %37, i32 %38)
  %40 = load %struct.cx18*, %struct.cx18** %4, align 8
  %41 = load i32, i32* @CXADEC_DLL1_DIAG_CTRL, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, 268435712
  %44 = call i32 @cx18_av_write4(%struct.cx18* %40, i32 %41, i32 %43)
  %45 = load %struct.cx18*, %struct.cx18** %4, align 8
  %46 = load i32, i32* @CXADEC_DLL2_DIAG_CTRL, align 4
  %47 = call i32 @cx18_av_read4(%struct.cx18* %45, i32 %46)
  %48 = and i32 %47, -503316737
  store i32 %48, i32* %6, align 4
  %49 = load %struct.cx18*, %struct.cx18** %4, align 8
  %50 = load i32, i32* @CXADEC_DLL2_DIAG_CTRL, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cx18_av_write4(%struct.cx18* %49, i32 %50, i32 %51)
  %53 = load %struct.cx18*, %struct.cx18** %4, align 8
  %54 = load i32, i32* @CXADEC_DLL2_DIAG_CTRL, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, 100663552
  %57 = call i32 @cx18_av_write4(%struct.cx18* %53, i32 %54, i32 %56)
  %58 = load %struct.cx18*, %struct.cx18** %4, align 8
  %59 = load i32, i32* @CXADEC_AFE_DIAG_CTRL1, align 4
  %60 = call i32 @cx18_av_write4(%struct.cx18* %58, i32 %59, i32 661506)
  %61 = load %struct.cx18*, %struct.cx18** %4, align 8
  %62 = load i32, i32* @CXADEC_AFE_DIAG_CTRL3, align 4
  %63 = call i32 @cx18_av_read4(%struct.cx18* %61, i32 %62)
  %64 = or i32 %63, 1
  store i32 %64, i32* %6, align 4
  %65 = load %struct.cx18*, %struct.cx18** %4, align 8
  %66 = load i32, i32* @CXADEC_AFE_DIAG_CTRL3, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @cx18_av_write4_expect(%struct.cx18* %65, i32 %66, i32 %67, i32 %68, i32 50372367)
  %70 = load %struct.cx18*, %struct.cx18** %4, align 8
  %71 = load i32, i32* @CXADEC_AFE_DIAG_CTRL3, align 4
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, -2
  %74 = load i32, i32* %6, align 4
  %75 = and i32 %74, -2
  %76 = call i32 @cx18_av_write4_expect(%struct.cx18* %70, i32 %71, i32 %73, i32 %75, i32 50372367)
  %77 = load %struct.cx18*, %struct.cx18** %4, align 8
  %78 = load i32, i32* @CXADEC_PIN_CTRL1, align 4
  %79 = call i32 @cx18_av_and_or4(%struct.cx18* %77, i32 %78, i32 -1, i32 265216)
  %80 = load %struct.cx18*, %struct.cx18** %4, align 8
  %81 = load i32, i32* @CXADEC_PIN_CTRL2, align 4
  %82 = call i32 @cx18_av_and_or4(%struct.cx18* %80, i32 %81, i32 -1, i32 2)
  %83 = load %struct.cx18*, %struct.cx18** %4, align 8
  %84 = load i32, i32* @CXADEC_SOFT_RST_CTRL, align 4
  %85 = call i32 @cx18_av_write4(%struct.cx18* %83, i32 %84, i32 32768)
  %86 = load %struct.cx18*, %struct.cx18** %4, align 8
  %87 = load i32, i32* @CXADEC_SOFT_RST_CTRL, align 4
  %88 = call i32 @cx18_av_write4(%struct.cx18* %86, i32 %87, i32 0)
  %89 = load %struct.cx18*, %struct.cx18** %4, align 8
  %90 = load i32, i32* @CXADEC_CHIP_CTRL, align 4
  %91 = call i32 @cx18_av_and_or4(%struct.cx18* %89, i32 %90, i32 -262145, i32 1179648)
  %92 = load %struct.cx18*, %struct.cx18** %4, align 8
  %93 = call i32 @cx18_av_init(%struct.cx18* %92)
  %94 = load %struct.cx18*, %struct.cx18** %4, align 8
  %95 = load i32, i32* @CXADEC_MODE_CTRL, align 4
  %96 = call i32 @cx18_av_and_or4(%struct.cx18* %94, i32 %95, i32 -530448, i32 33818624)
  %97 = load %struct.cx18*, %struct.cx18** %4, align 8
  %98 = load i32, i32* @CXADEC_CRUSH_CTRL, align 4
  %99 = call i32 @cx18_av_and_or4(%struct.cx18* %97, i32 %98, i32 -1, i32 5242880)
  %100 = load %struct.cx18*, %struct.cx18** %4, align 8
  %101 = load i32, i32* @CXADEC_DFE_CTRL2, align 4
  %102 = call i32 @cx18_av_and_or4(%struct.cx18* %100, i32 %101, i32 -65281, i32 8192)
  %103 = load %struct.cx18*, %struct.cx18** %4, align 8
  %104 = load i32, i32* @CXADEC_OUT_CTRL1, align 4
  %105 = call i32 @cx18_av_write4(%struct.cx18* %103, i32 %104, i32 1074996526)
  %106 = load %struct.cx18*, %struct.cx18** %4, align 8
  %107 = load i32, i32* @CXADEC_AFE_CTRL, align 4
  %108 = call i32 @cx18_av_and_or4(%struct.cx18* %106, i32 %107, i32 -16777216, i32 23808)
  %109 = load %struct.cx18*, %struct.cx18** %4, align 8
  %110 = load i32, i32* @CXADEC_SRC_COMB_CFG, align 4
  %111 = call i32 @cx18_av_write4(%struct.cx18* %109, i32 %110, i32 1713898015)
  %112 = load %struct.cx18*, %struct.cx18** %4, align 8
  %113 = call i32 @cx18_av_read(%struct.cx18* %112, i32 2260)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp sgt i32 %114, 228
  br i1 %115, label %116, label %119

116:                                              ; preds = %1
  store i32 228, i32* %5, align 4
  %117 = load %struct.cx18*, %struct.cx18** %4, align 8
  %118 = call i32 @cx18_av_write(%struct.cx18* %117, i32 2260, i32 228)
  br label %126

119:                                              ; preds = %1
  %120 = load i32, i32* %5, align 4
  %121 = icmp slt i32 %120, 20
  br i1 %121, label %122, label %125

122:                                              ; preds = %119
  store i32 20, i32* %5, align 4
  %123 = load %struct.cx18*, %struct.cx18** %4, align 8
  %124 = call i32 @cx18_av_write(%struct.cx18* %123, i32 2260, i32 20)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %116
  %127 = load i32, i32* %5, align 4
  %128 = sub nsw i32 228, %127
  %129 = ashr i32 %128, 1
  %130 = add nsw i32 %129, 23
  %131 = shl i32 %130, 9
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %134 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %133, i32 0, i32 1
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %132, i32* %136, align 4
  %137 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %138 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %137, i32 0, i32 1
  %139 = load %struct.TYPE_4__*, %struct.TYPE_4__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i32 %132, i32* %141, align 4
  %142 = load %struct.cx18_av_state*, %struct.cx18_av_state** %3, align 8
  %143 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %142, i32 0, i32 0
  %144 = call i32 @v4l2_ctrl_handler_setup(i32* %143)
  ret void
}

declare dso_local %struct.cx18_av_state* @to_cx18_av_state(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @cx18_av_loadfw(%struct.cx18*) #1

declare dso_local i32 @cx18_av_write4_expect(%struct.cx18*, i32, i32, i32, i32) #1

declare dso_local i32 @cx18_av_read4(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write4(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_av_and_or4(%struct.cx18*, i32, i32, i32) #1

declare dso_local i32 @cx18_av_init(%struct.cx18*) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

declare dso_local i32 @cx18_av_write(%struct.cx18*, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

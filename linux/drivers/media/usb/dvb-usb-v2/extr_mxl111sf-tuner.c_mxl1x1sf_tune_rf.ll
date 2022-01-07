; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-tuner.c_mxl1x1sf_tune_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-tuner.c_mxl1x1sf_tune_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_reg_ctrl_info = type { i32 }
%struct.dvb_frontend = type { %struct.mxl111sf_tuner_state* }
%struct.mxl111sf_tuner_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*)* }

@mxl1x1sf_tune_rf.reg_ctrl_array = internal global %struct.mxl111sf_reg_ctrl_info* null, align 8
@.str = private unnamed_addr constant [23 x i8] c"(freq = %d, bw = 0x%x)\00", align 1
@START_TUNE_REG = common dso_local global i32 0, align 4
@MXL_MODE_REG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MXL_DEV_MODE_MASK = common dso_local global i32 0, align 4
@MXL_TUNER_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32)* @mxl1x1sf_tune_rf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl1x1sf_tune_rf(%struct.dvb_frontend* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_frontend*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mxl111sf_tuner_state*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %12, align 8
  store %struct.mxl111sf_tuner_state* %13, %struct.mxl111sf_tuner_state** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @mxl_dbg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %18 = load i32, i32* @START_TUNE_REG, align 4
  %19 = call i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state* %17, i32 %18, i32 0)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @mxl_fail(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %86

24:                                               ; preds = %3
  %25 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %26 = load i32, i32* @MXL_MODE_REG, align 4
  %27 = call i32 @mxl111sf_tuner_read_reg(%struct.mxl111sf_tuner_state* %25, i32 %26, i32* %10)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i64 @mxl_fail(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %86

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.mxl111sf_reg_ctrl_info* @mxl111sf_calc_phy_tune_regs(i32 %33, i32 %34)
  store %struct.mxl111sf_reg_ctrl_info* %35, %struct.mxl111sf_reg_ctrl_info** @mxl1x1sf_tune_rf.reg_ctrl_array, align 8
  %36 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** @mxl1x1sf_tune_rf.reg_ctrl_array, align 8
  %37 = icmp ne %struct.mxl111sf_reg_ctrl_info* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %88

41:                                               ; preds = %32
  %42 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %43 = load %struct.mxl111sf_reg_ctrl_info*, %struct.mxl111sf_reg_ctrl_info** @mxl1x1sf_tune_rf.reg_ctrl_array, align 8
  %44 = call i32 @mxl111sf_tuner_program_regs(%struct.mxl111sf_tuner_state* %42, %struct.mxl111sf_reg_ctrl_info* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @mxl_fail(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %86

49:                                               ; preds = %41
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @MXL_DEV_MODE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @MXL_TUNER_MODE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %49
  %56 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %57 = call i32 @mxl1x1sf_tuner_top_master_ctrl(%struct.mxl111sf_tuner_state* %56, i32 0)
  %58 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %59 = call i32 @mxl1x1sf_tuner_top_master_ctrl(%struct.mxl111sf_tuner_state* %58, i32 1)
  %60 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %61 = call i32 @mxl1x1sf_tuner_set_if_output_freq(%struct.mxl111sf_tuner_state* %60)
  br label %62

62:                                               ; preds = %55, %49
  %63 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %64 = load i32, i32* @START_TUNE_REG, align 4
  %65 = call i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state* %63, i32 %64, i32 1)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i64 @mxl_fail(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %86

70:                                               ; preds = %62
  %71 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %72 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %74, align 8
  %76 = icmp ne i32 (%struct.dvb_frontend*)* %75, null
  br i1 %76, label %77, label %85

77:                                               ; preds = %70
  %78 = load %struct.mxl111sf_tuner_state*, %struct.mxl111sf_tuner_state** %8, align 8
  %79 = getelementptr inbounds %struct.mxl111sf_tuner_state, %struct.mxl111sf_tuner_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32 (%struct.dvb_frontend*)*, i32 (%struct.dvb_frontend*)** %81, align 8
  %83 = load %struct.dvb_frontend*, %struct.dvb_frontend** %5, align 8
  %84 = call i32 %82(%struct.dvb_frontend* %83)
  br label %85

85:                                               ; preds = %77, %70
  br label %86

86:                                               ; preds = %85, %69, %48, %31, %23
  %87 = load i32, i32* %9, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %38
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @mxl_dbg(i8*, i32, i32) #1

declare dso_local i32 @mxl111sf_tuner_write_reg(%struct.mxl111sf_tuner_state*, i32, i32) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_tuner_read_reg(%struct.mxl111sf_tuner_state*, i32, i32*) #1

declare dso_local %struct.mxl111sf_reg_ctrl_info* @mxl111sf_calc_phy_tune_regs(i32, i32) #1

declare dso_local i32 @mxl111sf_tuner_program_regs(%struct.mxl111sf_tuner_state*, %struct.mxl111sf_reg_ctrl_info*) #1

declare dso_local i32 @mxl1x1sf_tuner_top_master_ctrl(%struct.mxl111sf_tuner_state*, i32) #1

declare dso_local i32 @mxl1x1sf_tuner_set_if_output_freq(%struct.mxl111sf_tuner_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_init_i2s_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_init_i2s_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_reg_ctrl_info = type { i32, i32, i32 }
%struct.mxl111sf_state = type { i32 }

@mxl111sf_init_i2s_port.init_i2s = internal global [7 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i32 27, i32 255, i32 30 }, %struct.mxl111sf_reg_ctrl_info { i32 21, i32 96, i32 96 }, %struct.mxl111sf_reg_ctrl_info { i32 23, i32 224, i32 32 }, %struct.mxl111sf_reg_ctrl_info { i32 0, i32 255, i32 2 }, %struct.mxl111sf_reg_ctrl_info { i32 38, i32 13, i32 13 }, %struct.mxl111sf_reg_ctrl_info { i32 0, i32 255, i32 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], align 16
@.str = private unnamed_addr constant [9 x i8] c"(0x%02x)\00", align 1
@V6_I2S_NUM_SAMPLES_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_init_i2s_port(%struct.mxl111sf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @mxl_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %9 = call i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state* %8, %struct.mxl111sf_reg_ctrl_info* getelementptr inbounds ([7 x %struct.mxl111sf_reg_ctrl_info], [7 x %struct.mxl111sf_reg_ctrl_info]* @mxl111sf_init_i2s_port.init_i2s, i64 0, i64 0))
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @mxl_fail(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %16 = load i32, i32* @V6_I2S_NUM_SAMPLES_REG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @mxl_fail(i32 %19)
  br label %21

21:                                               ; preds = %14, %13
  %22 = load i32, i32* %5, align 4
  ret i32 %22
}

declare dso_local i32 @mxl_debug(i8*, i32) #1

declare dso_local i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state*, %struct.mxl111sf_reg_ctrl_info*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

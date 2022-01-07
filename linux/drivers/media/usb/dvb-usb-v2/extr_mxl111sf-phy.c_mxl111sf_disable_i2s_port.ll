; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_disable_i2s_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_disable_i2s_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_reg_ctrl_info = type { i32, i32, i32 }
%struct.mxl111sf_state = type { i32 }

@mxl111sf_disable_i2s_port.disable_i2s = internal global [2 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i32 21, i32 64, i32 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_disable_i2s_port(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  %3 = call i32 @mxl_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %5 = call i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state* %4, %struct.mxl111sf_reg_ctrl_info* getelementptr inbounds ([2 x %struct.mxl111sf_reg_ctrl_info], [2 x %struct.mxl111sf_reg_ctrl_info]* @mxl111sf_disable_i2s_port.disable_i2s, i64 0, i64 0))
  ret i32 %5
}

declare dso_local i32 @mxl_debug(i8*) #1

declare dso_local i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state*, %struct.mxl111sf_reg_ctrl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

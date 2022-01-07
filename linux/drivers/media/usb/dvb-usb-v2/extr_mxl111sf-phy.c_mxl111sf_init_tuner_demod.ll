; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_init_tuner_demod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-phy.c_mxl111sf_init_tuner_demod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_reg_ctrl_info = type { i32, i32, i32 }
%struct.mxl111sf_state = type { i32 }

@__const.mxl111sf_init_tuner_demod.mxl_111_overwrite_default = private unnamed_addr constant [21 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i32 7, i32 255, i32 12 }, %struct.mxl111sf_reg_ctrl_info { i32 88, i32 255, i32 157 }, %struct.mxl111sf_reg_ctrl_info { i32 9, i32 255, i32 0 }, %struct.mxl111sf_reg_ctrl_info { i32 6, i32 255, i32 6 }, %struct.mxl111sf_reg_ctrl_info { i32 200, i32 255, i32 64 }, %struct.mxl111sf_reg_ctrl_info { i32 141, i32 1, i32 1 }, %struct.mxl111sf_reg_ctrl_info { i32 50, i32 255, i32 172 }, %struct.mxl111sf_reg_ctrl_info { i32 66, i32 255, i32 67 }, %struct.mxl111sf_reg_ctrl_info { i32 116, i32 255, i32 196 }, %struct.mxl111sf_reg_ctrl_info { i32 113, i32 255, i32 230 }, %struct.mxl111sf_reg_ctrl_info { i32 131, i32 255, i32 100 }, %struct.mxl111sf_reg_ctrl_info { i32 133, i32 255, i32 100 }, %struct.mxl111sf_reg_ctrl_info { i32 136, i32 255, i32 240 }, %struct.mxl111sf_reg_ctrl_info { i32 111, i32 240, i32 176 }, %struct.mxl111sf_reg_ctrl_info { i32 0, i32 255, i32 1 }, %struct.mxl111sf_reg_ctrl_info { i32 129, i32 255, i32 17 }, %struct.mxl111sf_reg_ctrl_info { i32 244, i32 255, i32 7 }, %struct.mxl111sf_reg_ctrl_info { i32 212, i32 31, i32 15 }, %struct.mxl111sf_reg_ctrl_info { i32 214, i32 255, i32 12 }, %struct.mxl111sf_reg_ctrl_info { i32 0, i32 255, i32 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mxl111sf_init_tuner_demod(%struct.mxl111sf_state* %0) #0 {
  %2 = alloca %struct.mxl111sf_state*, align 8
  %3 = alloca [21 x %struct.mxl111sf_reg_ctrl_info], align 16
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %2, align 8
  %4 = bitcast [21 x %struct.mxl111sf_reg_ctrl_info]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %4, i8* align 16 bitcast ([21 x %struct.mxl111sf_reg_ctrl_info]* @__const.mxl111sf_init_tuner_demod.mxl_111_overwrite_default to i8*), i64 252, i1 false)
  %5 = call i32 @mxl_debug(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %2, align 8
  %7 = getelementptr inbounds [21 x %struct.mxl111sf_reg_ctrl_info], [21 x %struct.mxl111sf_reg_ctrl_info]* %3, i64 0, i64 0
  %8 = call i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state* %6, %struct.mxl111sf_reg_ctrl_info* %7)
  ret i32 %8
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mxl_debug(i8*) #2

declare dso_local i32 @mxl111sf_ctrl_program_regs(%struct.mxl111sf_state*, %struct.mxl111sf_reg_ctrl_info*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

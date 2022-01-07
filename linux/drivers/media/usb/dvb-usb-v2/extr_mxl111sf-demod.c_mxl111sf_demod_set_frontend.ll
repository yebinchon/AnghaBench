; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_set_frontend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-demod.c_mxl111sf_demod_set_frontend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_reg_ctrl_info = type { i32, i32, i32 }
%struct.dvb_frontend = type { %struct.TYPE_4__, %struct.mxl111sf_demod_state* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.dvb_frontend.0*)* }
%struct.dvb_frontend.0 = type opaque
%struct.mxl111sf_demod_state = type { i32 }

@__const.mxl111sf_demod_set_frontend.phy_pll_patch = private unnamed_addr constant [7 x %struct.mxl111sf_reg_ctrl_info] [%struct.mxl111sf_reg_ctrl_info { i32 0, i32 255, i32 1 }, %struct.mxl111sf_reg_ctrl_info { i32 64, i32 255, i32 5 }, %struct.mxl111sf_reg_ctrl_info { i32 64, i32 255, i32 1 }, %struct.mxl111sf_reg_ctrl_info { i32 65, i32 255, i32 202 }, %struct.mxl111sf_reg_ctrl_info { i32 65, i32 255, i32 192 }, %struct.mxl111sf_reg_ctrl_info { i32 0, i32 255, i32 0 }, %struct.mxl111sf_reg_ctrl_info zeroinitializer], align 16
@.str = private unnamed_addr constant [3 x i8] c"()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mxl111sf_demod_set_frontend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_demod_set_frontend(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.mxl111sf_demod_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [7 x %struct.mxl111sf_reg_ctrl_info], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 1
  %8 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %7, align 8
  store %struct.mxl111sf_demod_state* %8, %struct.mxl111sf_demod_state** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = bitcast [7 x %struct.mxl111sf_reg_ctrl_info]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([7 x %struct.mxl111sf_reg_ctrl_info]* @__const.mxl111sf_demod_set_frontend.phy_pll_patch to i8*), i64 84, i1 false)
  %10 = call i32 @mxl_dbg(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %14, align 8
  %16 = icmp ne i32 (%struct.dvb_frontend.0*)* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %19 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.dvb_frontend.0*)*, i32 (%struct.dvb_frontend.0*)** %21, align 8
  %23 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %24 = bitcast %struct.dvb_frontend* %23 to %struct.dvb_frontend.0*
  %25 = call i32 %22(%struct.dvb_frontend.0* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @mxl_fail(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %17
  br label %44

30:                                               ; preds = %17
  %31 = call i32 @msleep(i32 50)
  br label %32

32:                                               ; preds = %30, %1
  %33 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %3, align 8
  %34 = getelementptr inbounds [7 x %struct.mxl111sf_reg_ctrl_info], [7 x %struct.mxl111sf_reg_ctrl_info]* %5, i64 0, i64 0
  %35 = call i32 @mxl111sf_demod_program_regs(%struct.mxl111sf_demod_state* %33, %struct.mxl111sf_reg_ctrl_info* %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i64 @mxl_fail(i32 %36)
  %38 = call i32 @msleep(i32 50)
  %39 = load %struct.mxl111sf_demod_state*, %struct.mxl111sf_demod_state** %3, align 8
  %40 = call i32 @mxl1x1sf_demod_reset_irq_status(%struct.mxl111sf_demod_state* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @mxl_fail(i32 %41)
  %43 = call i32 @msleep(i32 100)
  br label %44

44:                                               ; preds = %32, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mxl_dbg(i8*) #2

declare dso_local i64 @mxl_fail(i32) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @mxl111sf_demod_program_regs(%struct.mxl111sf_demod_state*, %struct.mxl111sf_reg_ctrl_info*) #2

declare dso_local i32 @mxl1x1sf_demod_reset_irq_status(%struct.mxl111sf_demod_state*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

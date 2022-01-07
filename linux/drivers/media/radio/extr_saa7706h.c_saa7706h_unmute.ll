; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_saa7706h.c_saa7706h_unmute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_saa7706h.c_saa7706h_unmute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.saa7706h_state = type { i64 }

@SAA7706H_REG_CTRL = common dso_local global i32 0, align 4
@SAA7706H_CTRL_PLL3_62975MHZ = common dso_local global i32 0, align 4
@SAA7706H_CTRL_PC_RESET_DSP1 = common dso_local global i32 0, align 4
@SAA7706H_CTRL_PC_RESET_DSP2 = common dso_local global i32 0, align 4
@SAA7706H_REG_EVALUATION = common dso_local global i32 0, align 4
@SAA7706H_REG_CL_GEN1 = common dso_local global i32 0, align 4
@SAA7706H_REG_CL_GEN2 = common dso_local global i32 0, align 4
@SAA7706H_CL_GEN2_WSEDGE_FALLING = common dso_local global i32 0, align 4
@SAA7706H_REG_CL_GEN4 = common dso_local global i32 0, align 4
@SAA7706H_REG_SEL = common dso_local global i32 0, align 4
@SAA7706H_REG_IAC = common dso_local global i32 0, align 4
@SAA7706H_REG_CLK_SET = common dso_local global i32 0, align 4
@SAA7706H_REG_CLK_COEFF = common dso_local global i32 0, align 4
@SAA7706H_REG_INPUT_SENS = common dso_local global i32 0, align 4
@SAA7706H_REG_PHONE_NAV_AUDIO = common dso_local global i32 0, align 4
@SAA7706H_REG_IO_CONF_DSP2 = common dso_local global i32 0, align 4
@SAA7706H_REG_STATUS_DSP2 = common dso_local global i32 0, align 4
@SAA7706H_REG_PC_DSP2 = common dso_local global i32 0, align 4
@SAA7706H_DSP1_MOD0 = common dso_local global i32 0, align 4
@SAA7706H_DSP2_MPTR0 = common dso_local global i32 0, align 4
@SAA7706H_DSP1_MODPNTR = common dso_local global i32 0, align 4
@SAA7706H_DSP2_XMEM_CONTLLCW = common dso_local global i32 0, align 4
@SAA7706H_DSP2_XMEM_BUSAMP = common dso_local global i32 0, align 4
@SAA7706H_DSP2_XMEM_FDACPNTR = common dso_local global i32 0, align 4
@SAA7706H_DSP2_XMEM_IIS1PNTR = common dso_local global i32 0, align 4
@SAA7706H_DSP2_YMEM_PVGA = common dso_local global i32 0, align 4
@SAA7706H_DSP2_YMEM_PVAT1 = common dso_local global i32 0, align 4
@SAA7706H_DSP2_YMEM_PVAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @saa7706h_unmute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7706h_unmute(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.saa7706h_state*, align 8
  %4 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.saa7706h_state* @to_state(%struct.v4l2_subdev* %5)
  store %struct.saa7706h_state* %6, %struct.saa7706h_state** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %8 = load i32, i32* @SAA7706H_REG_CTRL, align 4
  %9 = load i32, i32* @SAA7706H_CTRL_PLL3_62975MHZ, align 4
  %10 = load i32, i32* @SAA7706H_CTRL_PC_RESET_DSP1, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SAA7706H_CTRL_PC_RESET_DSP2, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev* %7, i32 %8, i32 %13, i32* %4)
  store i32 %14, i32* %4, align 4
  %15 = call i32 @msleep(i32 1)
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %17 = load i32, i32* @SAA7706H_REG_CTRL, align 4
  %18 = load i32, i32* @SAA7706H_CTRL_PLL3_62975MHZ, align 4
  %19 = call i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev* %16, i32 %17, i32 %18, i32* %4)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %21 = load i32, i32* @SAA7706H_REG_EVALUATION, align 4
  %22 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %20, i32 %21, i32 0, i32* %4)
  store i32 %22, i32* %4, align 4
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %24 = load i32, i32* @SAA7706H_REG_CL_GEN1, align 4
  %25 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %23, i32 %24, i32 262178, i32* %4)
  store i32 %25, i32* %4, align 4
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %27 = load i32, i32* @SAA7706H_REG_CL_GEN2, align 4
  %28 = load i32, i32* @SAA7706H_CL_GEN2_WSEDGE_FALLING, align 4
  %29 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %26, i32 %27, i32 %28, i32* %4)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %31 = load i32, i32* @SAA7706H_REG_CL_GEN4, align 4
  %32 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %30, i32 %31, i32 147584, i32* %4)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %34 = load i32, i32* @SAA7706H_REG_SEL, align 4
  %35 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %33, i32 %34, i32 2097280, i32* %4)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %37 = load i32, i32* @SAA7706H_REG_IAC, align 4
  %38 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %36, i32 %37, i32 16042733, i32* %4)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %40 = load i32, i32* @SAA7706H_REG_CLK_SET, align 4
  %41 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %39, i32 %40, i32 1196852, i32* %4)
  store i32 %41, i32* %4, align 4
  %42 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %43 = load i32, i32* @SAA7706H_REG_CLK_COEFF, align 4
  %44 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %42, i32 %43, i32 18970, i32* %4)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %46 = load i32, i32* @SAA7706H_REG_INPUT_SENS, align 4
  %47 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %45, i32 %46, i32 29127, i32* %4)
  store i32 %47, i32* %4, align 4
  %48 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %49 = load i32, i32* @SAA7706H_REG_PHONE_NAV_AUDIO, align 4
  %50 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %48, i32 %49, i32 926463, i32* %4)
  store i32 %50, i32* %4, align 4
  %51 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %52 = load i32, i32* @SAA7706H_REG_IO_CONF_DSP2, align 4
  %53 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %51, i32 %52, i32 8184, i32* %4)
  store i32 %53, i32* %4, align 4
  %54 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %55 = load i32, i32* @SAA7706H_REG_STATUS_DSP2, align 4
  %56 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %54, i32 %55, i32 524291, i32* %4)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %58 = load i32, i32* @SAA7706H_REG_PC_DSP2, align 4
  %59 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %57, i32 %58, i32 4, i32* %4)
  store i32 %59, i32* %4, align 4
  %60 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %61 = load i32, i32* @SAA7706H_DSP1_MOD0, align 4
  %62 = call i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev* %60, i32 %61, i32 3180, i32* %4)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %64 = load i32, i32* @SAA7706H_DSP2_MPTR0, align 4
  %65 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %63, i32 %64, i32 2891, i32* %4)
  store i32 %65, i32* %4, align 4
  %66 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %67 = load i32, i32* @SAA7706H_DSP1_MODPNTR, align 4
  %68 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %66, i32 %67, i32 1536, i32* %4)
  store i32 %68, i32* %4, align 4
  %69 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %70 = load i32, i32* @SAA7706H_DSP1_MODPNTR, align 4
  %71 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %69, i32 %70, i32 192, i32* %4)
  store i32 %71, i32* %4, align 4
  %72 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %73 = load i32, i32* @SAA7706H_DSP2_XMEM_CONTLLCW, align 4
  %74 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %72, i32 %73, i32 2073, i32* %4)
  store i32 %74, i32* %4, align 4
  %75 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %76 = load i32, i32* @SAA7706H_DSP2_XMEM_CONTLLCW, align 4
  %77 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %75, i32 %76, i32 2138, i32* %4)
  store i32 %77, i32* %4, align 4
  %78 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %79 = load i32, i32* @SAA7706H_DSP2_XMEM_BUSAMP, align 4
  %80 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %78, i32 %79, i32 8388607, i32* %4)
  store i32 %80, i32* %4, align 4
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %82 = load i32, i32* @SAA7706H_DSP2_XMEM_FDACPNTR, align 4
  %83 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %81, i32 %82, i32 2097355, i32* %4)
  store i32 %83, i32* %4, align 4
  %84 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %85 = load i32, i32* @SAA7706H_DSP2_XMEM_IIS1PNTR, align 4
  %86 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %84, i32 %85, i32 2097355, i32* %4)
  store i32 %86, i32* %4, align 4
  %87 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %88 = load i32, i32* @SAA7706H_DSP2_YMEM_PVGA, align 4
  %89 = call i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev* %87, i32 %88, i32 3968, i32* %4)
  store i32 %89, i32* %4, align 4
  %90 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %91 = load i32, i32* @SAA7706H_DSP2_YMEM_PVAT1, align 4
  %92 = call i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev* %90, i32 %91, i32 2048, i32* %4)
  store i32 %92, i32* %4, align 4
  %93 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %94 = load i32, i32* @SAA7706H_DSP2_YMEM_PVAT, align 4
  %95 = call i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev* %93, i32 %94, i32 2048, i32* %4)
  store i32 %95, i32* %4, align 4
  %96 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %97 = load i32, i32* @SAA7706H_DSP2_XMEM_CONTLLCW, align 4
  %98 = call i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev* %96, i32 %97, i32 2309, i32* %4)
  store i32 %98, i32* %4, align 4
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %104, label %101

101:                                              ; preds = %1
  %102 = load %struct.saa7706h_state*, %struct.saa7706h_state** %3, align 8
  %103 = getelementptr inbounds %struct.saa7706h_state, %struct.saa7706h_state* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %101, %1
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local %struct.saa7706h_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @saa7706h_set_reg16_err(%struct.v4l2_subdev*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @saa7706h_set_reg24_err(%struct.v4l2_subdev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

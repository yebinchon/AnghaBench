; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-firmware.c_ivtv_halt_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-firmware.c_ivtv_halt_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Preparing for firmware halt.\0A\00", align 1
@CX2341X_DEC_HALT_FW = common dso_local global i32 0, align 4
@CX2341X_ENC_HALT_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Stopping VDM\0A\00", align 1
@IVTV_CMD_VDM_STOP = common dso_local global i32 0, align 4
@IVTV_REG_VDM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"Stopping AO\0A\00", align 1
@IVTV_CMD_AO_STOP = common dso_local global i32 0, align 4
@IVTV_REG_AO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"pinging (?) APU\0A\00", align 1
@IVTV_CMD_APU_PING = common dso_local global i32 0, align 4
@IVTV_REG_APU = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c"Stopping VPU\0A\00", align 1
@IVTV_CMD_VPU_STOP16 = common dso_local global i32 0, align 4
@IVTV_REG_VPU = common dso_local global i32 0, align 4
@IVTV_CMD_VPU_STOP15 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Resetting Hw Blocks\0A\00", align 1
@IVTV_CMD_HW_BLOCKS_RST = common dso_local global i32 0, align 4
@IVTV_REG_HW_BLOCKS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"Stopping SPU\0A\00", align 1
@IVTV_CMD_SPU_STOP = common dso_local global i32 0, align 4
@IVTV_REG_SPU = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"init Encoder SDRAM pre-charge\0A\00", align 1
@IVTV_CMD_SDRAM_PRECHARGE_INIT = common dso_local global i32 0, align 4
@IVTV_REG_ENC_SDRAM_PRECHARGE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [35 x i8] c"init Encoder SDRAM refresh to 1us\0A\00", align 1
@IVTV_CMD_SDRAM_REFRESH_INIT = common dso_local global i32 0, align 4
@IVTV_REG_ENC_SDRAM_REFRESH = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"init Decoder SDRAM pre-charge\0A\00", align 1
@IVTV_REG_DEC_SDRAM_PRECHARGE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [35 x i8] c"init Decoder SDRAM refresh to 1us\0A\00", align 1
@IVTV_REG_DEC_SDRAM_REFRESH = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [19 x i8] c"Sleeping for %dms\0A\00", align 1
@IVTV_SDRAM_SLEEPTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_halt_firmware(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %3 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %18

8:                                                ; preds = %1
  %9 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %8
  %15 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %16 = load i32, i32* @CX2341X_DEC_HALT_FW, align 4
  %17 = call i32 @ivtv_vapi(%struct.ivtv* %15, i32 %16, i32 0)
  br label %18

18:                                               ; preds = %14, %8, %1
  %19 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %26 = load i32, i32* @CX2341X_ENC_HALT_FW, align 4
  %27 = call i32 @ivtv_vapi(%struct.ivtv* %25, i32 %26, i32 0)
  br label %28

28:                                               ; preds = %24, %18
  %29 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  %30 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %31 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32* null, i32** %32, align 8
  %33 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %34 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @IVTV_CMD_VDM_STOP, align 4
  %38 = load i32, i32* @IVTV_REG_VDM, align 4
  %39 = call i32 @write_reg(i32 %37, i32 %38)
  %40 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %41 = load i32, i32* @IVTV_CMD_AO_STOP, align 4
  %42 = load i32, i32* @IVTV_REG_AO, align 4
  %43 = call i32 @write_reg(i32 %41, i32 %42)
  %44 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %45 = load i32, i32* @IVTV_CMD_APU_PING, align 4
  %46 = load i32, i32* @IVTV_REG_APU, align 4
  %47 = call i32 @write_reg(i32 %45, i32 %46)
  %48 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %50 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %28
  %54 = load i32, i32* @IVTV_CMD_VPU_STOP16, align 4
  %55 = load i32, i32* @IVTV_REG_VPU, align 4
  %56 = call i32 @write_reg(i32 %54, i32 %55)
  br label %61

57:                                               ; preds = %28
  %58 = load i32, i32* @IVTV_CMD_VPU_STOP15, align 4
  %59 = load i32, i32* @IVTV_REG_VPU, align 4
  %60 = call i32 @write_reg(i32 %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %53
  %62 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32, i32* @IVTV_CMD_HW_BLOCKS_RST, align 4
  %64 = load i32, i32* @IVTV_REG_HW_BLOCKS, align 4
  %65 = call i32 @write_reg(i32 %63, i32 %64)
  %66 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %67 = load i32, i32* @IVTV_CMD_SPU_STOP, align 4
  %68 = load i32, i32* @IVTV_REG_SPU, align 4
  %69 = call i32 @write_reg(i32 %67, i32 %68)
  %70 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  %71 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %72 = load i32, i32* @IVTV_CMD_SDRAM_PRECHARGE_INIT, align 4
  %73 = load i32, i32* @IVTV_REG_ENC_SDRAM_PRECHARGE, align 4
  %74 = call i32 @write_reg(i32 %72, i32 %73)
  %75 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %76 = load i32, i32* @IVTV_CMD_SDRAM_REFRESH_INIT, align 4
  %77 = load i32, i32* @IVTV_REG_ENC_SDRAM_REFRESH, align 4
  %78 = call i32 @write_reg(i32 %76, i32 %77)
  %79 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %61
  %84 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  %85 = load i32, i32* @IVTV_CMD_SDRAM_PRECHARGE_INIT, align 4
  %86 = load i32, i32* @IVTV_REG_DEC_SDRAM_PRECHARGE, align 4
  %87 = call i32 @write_reg(i32 %85, i32 %86)
  %88 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %89 = load i32, i32* @IVTV_CMD_SDRAM_REFRESH_INIT, align 4
  %90 = load i32, i32* @IVTV_REG_DEC_SDRAM_REFRESH, align 4
  %91 = call i32 @write_reg(i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %83, %61
  %93 = load i32, i32* @IVTV_SDRAM_SLEEPTIME, align 4
  %94 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @IVTV_SDRAM_SLEEPTIME, align 4
  %96 = call i32 @ivtv_msleep_timeout(i32 %95, i32 0)
  ret void
}

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32) #1

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #1

declare dso_local i32 @write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

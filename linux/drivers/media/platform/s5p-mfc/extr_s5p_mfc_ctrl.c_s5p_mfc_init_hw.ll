; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Firmware memory is not allocated.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"MFC reset..\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to reset MFC - timeout\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Done MFC reset..\0A\00", align 1
@S5P_FIMV_RISC_ON_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_SW_RESET = common dso_local global i32 0, align 4
@S5P_FIMV_MFC_CLOCK_OFF_V10 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"Will now wait for completion of firmware transfer\0A\00", align 1
@S5P_MFC_R2H_CMD_FW_STATUS_RET = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to load firmware\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@sys_init_cmd = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Failed to send command to MFC - timeout\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"Ok, now will wait for completion of hardware init\0A\00", align 1
@S5P_MFC_R2H_CMD_SYS_INIT_RET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"Failed to init hardware\0A\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Failed to init firmware - error: %d int: %d\0A\00", align 1
@S5P_FIMV_FW_VERSION_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_FW_VERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [42 x i8] c"MFC F/W version : %02xyy, %02xmm, %02xdd\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_init_hw(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %6 = call i32 (...) @mfc_debug_enter()
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %150

16:                                               ; preds = %1
  %17 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %18 = call i32 (...) @s5p_mfc_clock_on()
  %19 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %20 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %22 = call i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %150

28:                                               ; preds = %16
  %29 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %31 = call i32 @s5p_mfc_init_memctrl(%struct.s5p_mfc_dev* %30)
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %33 = call i32 @s5p_mfc_clear_cmds(%struct.s5p_mfc_dev* %32)
  %34 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %35 = call i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev* %34)
  %36 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %37 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %41 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %43 = load i32, i32* @S5P_FIMV_RISC_ON_V6, align 4
  %44 = call i32 @mfc_write(%struct.s5p_mfc_dev* %42, i32 1, i32 %43)
  br label %49

45:                                               ; preds = %28
  %46 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %47 = load i32, i32* @S5P_FIMV_SW_RESET, align 4
  %48 = call i32 @mfc_write(%struct.s5p_mfc_dev* %46, i32 1023, i32 %47)
  br label %49

49:                                               ; preds = %45, %39
  %50 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %51 = call i64 @IS_MFCV10(%struct.s5p_mfc_dev* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %55 = load i32, i32* @S5P_FIMV_MFC_CLOCK_OFF_V10, align 4
  %56 = call i32 @mfc_write(%struct.s5p_mfc_dev* %54, i32 0, i32 %55)
  br label %57

57:                                               ; preds = %53, %49
  %58 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %60 = load i64, i64* @S5P_MFC_R2H_CMD_FW_STATUS_RET, align 8
  %61 = call i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %59, i64 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %57
  %64 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %66 = call i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %65)
  %67 = call i32 (...) @s5p_mfc_clock_off()
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %150

70:                                               ; preds = %57
  %71 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %72 = call i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev* %71)
  %73 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %74 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @sys_init_cmd, align 4
  %77 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %78 = call i32 @s5p_mfc_hw_call(i32 %75, i32 %76, %struct.s5p_mfc_dev* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %70
  %82 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %83 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %84 = call i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %83)
  %85 = call i32 (...) @s5p_mfc_clock_off()
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %150

87:                                               ; preds = %70
  %88 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  %89 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %90 = load i64, i64* @S5P_MFC_R2H_CMD_SYS_INIT_RET, align 8
  %91 = call i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %89, i64 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %87
  %94 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %95 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %96 = call i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %95)
  %97 = call i32 (...) @s5p_mfc_clock_off()
  %98 = load i32, i32* @EIO, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %2, align 4
  br label %150

100:                                              ; preds = %87
  %101 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %102 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %101, i32 0, i32 3
  store i64 0, i64* %102, align 8
  %103 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %104 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %113, label %107

107:                                              ; preds = %100
  %108 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %109 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @S5P_MFC_R2H_CMD_SYS_INIT_RET, align 8
  %112 = icmp ne i64 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %107, %100
  %114 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %115 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %118 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0), i64 %116, i64 %119)
  %121 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %122 = call i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %121)
  %123 = call i32 (...) @s5p_mfc_clock_off()
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %2, align 4
  br label %150

126:                                              ; preds = %107
  %127 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %128 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %132 = load i32, i32* @S5P_FIMV_FW_VERSION_V6, align 4
  %133 = call i32 @mfc_read(%struct.s5p_mfc_dev* %131, i32 %132)
  store i32 %133, i32* %4, align 4
  br label %138

134:                                              ; preds = %126
  %135 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %136 = load i32, i32* @S5P_FIMV_FW_VERSION, align 4
  %137 = call i32 @mfc_read(%struct.s5p_mfc_dev* %135, i32 %136)
  store i32 %137, i32* %4, align 4
  br label %138

138:                                              ; preds = %134, %130
  %139 = load i32, i32* %4, align 4
  %140 = lshr i32 %139, 16
  %141 = and i32 %140, 255
  %142 = load i32, i32* %4, align 4
  %143 = lshr i32 %142, 8
  %144 = and i32 %143, 255
  %145 = load i32, i32* %4, align 4
  %146 = and i32 %145, 255
  %147 = call i32 (i32, i8*, ...) @mfc_debug(i32 2, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.10, i64 0, i64 0), i32 %141, i32 %144, i32 %146)
  %148 = call i32 (...) @s5p_mfc_clock_off()
  %149 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %138, %113, %93, %81, %63, %25, %12
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @mfc_debug(i32, i8*, ...) #1

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @s5p_mfc_reset(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_init_memctrl(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_clear_cmds(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i64 @IS_MFCV10(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev*, i64) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

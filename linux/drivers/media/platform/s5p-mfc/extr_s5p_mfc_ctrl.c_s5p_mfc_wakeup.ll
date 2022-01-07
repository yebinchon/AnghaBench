; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [13 x i8] c"MFC reset..\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to reset MFC - timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Done MFC reset..\0A\00", align 1
@S5P_MFC_R2H_CMD_WAKEUP_RET = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"Failed to wakeup - error: %d int: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_wakeup(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %5 = call i32 (...) @mfc_debug_enter()
  %6 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @s5p_mfc_clock_on()
  %8 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %9 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %11 = call i32 @s5p_mfc_reset(%struct.s5p_mfc_dev* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 (...) @s5p_mfc_clock_off()
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %66

18:                                               ; preds = %1
  %19 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %21 = call i32 @s5p_mfc_init_memctrl(%struct.s5p_mfc_dev* %20)
  %22 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %23 = call i32 @s5p_mfc_clear_cmds(%struct.s5p_mfc_dev* %22)
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %25 = call i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev* %24)
  %26 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %27 = call i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %31 = call i32 @s5p_mfc_v8_wait_wakeup(%struct.s5p_mfc_dev* %30)
  store i32 %31, i32* %4, align 4
  br label %35

32:                                               ; preds = %18
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %34 = call i32 @s5p_mfc_wait_wakeup(%struct.s5p_mfc_dev* %33)
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = call i32 (...) @s5p_mfc_clock_off()
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %66

41:                                               ; preds = %35
  %42 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %43 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %50 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @S5P_MFC_R2H_CMD_WAKEUP_RET, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %48, %41
  %55 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %56 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %59 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i64 %57, i64 %60)
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %66

64:                                               ; preds = %48
  %65 = call i32 (...) @mfc_debug_leave()
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %54, %39, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @s5p_mfc_reset(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

declare dso_local i32 @s5p_mfc_init_memctrl(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_clear_cmds(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev*) #1

declare dso_local i64 @IS_MFCV8_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_v8_wait_wakeup(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_wait_wakeup(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i64, i64, i64, i32 }

@sleep_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to send command to MFC - timeout\0A\00", align 1
@S5P_MFC_R2H_CMD_SLEEP_RET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Failed to sleep\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed to sleep - error: %d int: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5p_mfc_sleep(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %5 = call i32 (...) @mfc_debug_enter()
  %6 = call i32 (...) @s5p_mfc_clock_on()
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %8 = call i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev* %7)
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @sleep_cmd, align 4
  %13 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %14 = call i32 @s5p_mfc_hw_call(i32 %11, i32 %12, %struct.s5p_mfc_dev* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %22 = load i64, i64* @S5P_MFC_R2H_CMD_SLEEP_RET, align 8
  %23 = call i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %56

29:                                               ; preds = %20
  %30 = call i32 (...) @s5p_mfc_clock_off()
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %39 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @S5P_MFC_R2H_CMD_SLEEP_RET, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %37, %29
  %44 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %45 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %48 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 (i8*, ...) @mfc_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i64 %46, i64 %49)
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %56

53:                                               ; preds = %37
  %54 = call i32 (...) @mfc_debug_leave()
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %53, %43, %25, %17
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @mfc_debug_enter(...) #1

declare dso_local i32 @s5p_mfc_clock_on(...) #1

declare dso_local i32 @s5p_mfc_clean_dev_int_flags(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_err(i8*, ...) #1

declare dso_local i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev*, i64) #1

declare dso_local i32 @s5p_mfc_clock_off(...) #1

declare dso_local i32 @mfc_debug_leave(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_v8_wait_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_v8_wait_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32 }

@S5P_FIMV_RISC_ON_V6 = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_FW_STATUS_RET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to reset MFCV8\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Write command to wakeup MFCV8\0A\00", align 1
@wakeup_cmd = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to send command to MFCV8 - timeout\0A\00", align 1
@S5P_MFC_R2H_CMD_WAKEUP_RET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Failed to wakeup MFC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_v8_wait_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_v8_wait_wakeup(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %5 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %5, i32 0, i32 0
  store i32 1, i32* %6, align 4
  %7 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %8 = load i32, i32* @S5P_FIMV_RISC_ON_V6, align 4
  %9 = call i32 @mfc_write(%struct.s5p_mfc_dev* %7, i32 1, i32 %8)
  %10 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %11 = load i32, i32* @S5P_MFC_R2H_CMD_FW_STATUS_RET, align 4
  %12 = call i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = call i32 @mfc_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EIO, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %42

18:                                               ; preds = %1
  %19 = call i32 @mfc_debug(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @wakeup_cmd, align 4
  %24 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %25 = call i32 @s5p_mfc_hw_call(i32 %22, i32 %23, %struct.s5p_mfc_dev* %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = call i32 @mfc_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %42

31:                                               ; preds = %18
  %32 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %33 = load i32, i32* @S5P_MFC_R2H_CMD_WAKEUP_RET, align 4
  %34 = call i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = call i32 @mfc_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* %4, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %36, %28, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev*, i32) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_debug(i32, i8*) #1

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

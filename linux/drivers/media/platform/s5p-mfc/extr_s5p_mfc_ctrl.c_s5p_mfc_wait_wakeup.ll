; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_wait_wakeup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_wait_wakeup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32, i32 }

@wakeup_cmd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Failed to send command to MFC - timeout\0A\00", align 1
@S5P_FIMV_RISC_ON_V6 = common dso_local global i32 0, align 4
@S5P_FIMV_SW_RESET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_WAKEUP_RET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to wakeup MFC\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_wait_wakeup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_wait_wakeup(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %5 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @wakeup_cmd, align 4
  %9 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %10 = call i32 @s5p_mfc_hw_call(i32 %7, i32 %8, %struct.s5p_mfc_dev* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = call i32 @mfc_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %41

16:                                               ; preds = %1
  %17 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %18 = call i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %22 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %21, i32 0, i32 0
  store i32 1, i32* %22, align 4
  %23 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %24 = load i32, i32* @S5P_FIMV_RISC_ON_V6, align 4
  %25 = call i32 @mfc_write(%struct.s5p_mfc_dev* %23, i32 1, i32 %24)
  br label %30

26:                                               ; preds = %16
  %27 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %28 = load i32, i32* @S5P_FIMV_SW_RESET, align 4
  %29 = call i32 @mfc_write(%struct.s5p_mfc_dev* %27, i32 1023, i32 %28)
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %32 = load i32, i32* @S5P_MFC_R2H_CMD_WAKEUP_RET, align 4
  %33 = call i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev* %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = call i32 @mfc_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %35, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @s5p_mfc_hw_call(i32, i32, %struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i64 @IS_MFCV6_PLUS(%struct.s5p_mfc_dev*) #1

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i64 @s5p_mfc_wait_for_done_dev(%struct.s5p_mfc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

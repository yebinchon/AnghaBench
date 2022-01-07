; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_get_int_reason_v5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_opr_v5.c_s5p_mfc_get_int_reason_v5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_RISC2HOST_CMD = common dso_local global i32 0, align 4
@S5P_FIMV_RISC2HOST_CMD_MASK = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_SEQ_DONE_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_FRAME_DONE_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_SLICE_DONE_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_SYS_INIT_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_FW_STATUS_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_SLEEP_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_WAKEUP_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_INIT_BUFFERS_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_COMPLETE_SEQ_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_ERR_RET = common dso_local global i32 0, align 4
@S5P_MFC_R2H_CMD_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_get_int_reason_v5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_get_int_reason_v5(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca %struct.s5p_mfc_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %2, align 8
  %4 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %2, align 8
  %5 = load i32, i32* @S5P_FIMV_RISC2HOST_CMD, align 4
  %6 = call i32 @mfc_read(%struct.s5p_mfc_dev* %4, i32 %5)
  %7 = load i32, i32* @S5P_FIMV_RISC2HOST_CMD_MASK, align 4
  %8 = and i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %34 [
    i32 133, label %10
    i32 139, label %12
    i32 132, label %14
    i32 136, label %16
    i32 130, label %18
    i32 129, label %20
    i32 135, label %22
    i32 131, label %24
    i32 128, label %26
    i32 134, label %28
    i32 138, label %30
    i32 137, label %32
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @S5P_MFC_R2H_CMD_OPEN_INSTANCE_RET, align 4
  store i32 %11, i32* %3, align 4
  br label %36

12:                                               ; preds = %1
  %13 = load i32, i32* @S5P_MFC_R2H_CMD_CLOSE_INSTANCE_RET, align 4
  store i32 %13, i32* %3, align 4
  br label %36

14:                                               ; preds = %1
  %15 = load i32, i32* @S5P_MFC_R2H_CMD_SEQ_DONE_RET, align 4
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @S5P_MFC_R2H_CMD_FRAME_DONE_RET, align 4
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %1
  %19 = load i32, i32* @S5P_MFC_R2H_CMD_SLICE_DONE_RET, align 4
  store i32 %19, i32* %3, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @S5P_MFC_R2H_CMD_SYS_INIT_RET, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %1
  %23 = load i32, i32* @S5P_MFC_R2H_CMD_FW_STATUS_RET, align 4
  store i32 %23, i32* %3, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @S5P_MFC_R2H_CMD_SLEEP_RET, align 4
  store i32 %25, i32* %3, align 4
  br label %36

26:                                               ; preds = %1
  %27 = load i32, i32* @S5P_MFC_R2H_CMD_WAKEUP_RET, align 4
  store i32 %27, i32* %3, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load i32, i32* @S5P_MFC_R2H_CMD_INIT_BUFFERS_RET, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32, i32* @S5P_MFC_R2H_CMD_COMPLETE_SEQ_RET, align 4
  store i32 %31, i32* %3, align 4
  br label %36

32:                                               ; preds = %1
  %33 = load i32, i32* @S5P_MFC_R2H_CMD_ERR_RET, align 4
  store i32 %33, i32* %3, align 4
  br label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @S5P_MFC_R2H_CMD_EMPTY, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

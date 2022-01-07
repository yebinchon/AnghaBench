; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_bus_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_ctrl.c_s5p_mfc_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_mfc_dev = type { i32 }

@S5P_FIMV_MFC_BUS_RESET_CTRL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MFC_BW_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Timeout while resetting MFC.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5p_mfc_dev*)* @s5p_mfc_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5p_mfc_bus_reset(%struct.s5p_mfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5p_mfc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.s5p_mfc_dev* %0, %struct.s5p_mfc_dev** %3, align 8
  %6 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %7 = load i32, i32* @S5P_FIMV_MFC_BUS_RESET_CTRL, align 4
  %8 = call i32 @mfc_write(%struct.s5p_mfc_dev* %6, i32 1, i32 %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i32, i32* @MFC_BW_TIMEOUT, align 4
  %11 = call i64 @msecs_to_jiffies(i32 %10)
  %12 = add i64 %9, %11
  store i64 %12, i64* %5, align 8
  br label %13

13:                                               ; preds = %26, %1
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* %5, align 8
  %16 = call i64 @time_after(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @mfc_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %31

22:                                               ; preds = %13
  %23 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %3, align 8
  %24 = load i32, i32* @S5P_FIMV_MFC_BUS_RESET_CTRL, align 4
  %25 = call i32 @mfc_read(%struct.s5p_mfc_dev* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %13, label %30

30:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %18
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @mfc_write(%struct.s5p_mfc_dev*, i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @mfc_err(i8*) #1

declare dso_local i32 @mfc_read(%struct.s5p_mfc_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

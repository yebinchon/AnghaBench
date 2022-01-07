; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_pwrsrc_switch_to_vmain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_pwrsrc_switch_to_vmain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@IS_NIC = common dso_local global i32 0, align 4
@ASIC_REV_5717 = common dso_local global i64 0, align 8
@ASIC_REV_5719 = common dso_local global i64 0, align 8
@ASIC_REV_5720 = common dso_local global i64 0, align 8
@TG3_APE_LOCK_GPIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TG3_GPIO_MSG_DRVR_PRES = common dso_local global i32 0, align 4
@GRC_LOCAL_CTRL = common dso_local global i32 0, align 4
@TG3_GRC_LCLCTL_PWRSW_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_pwrsrc_switch_to_vmain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_pwrsrc_switch_to_vmain(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %4 = load %struct.tg3*, %struct.tg3** %3, align 8
  %5 = load i32, i32* @IS_NIC, align 4
  %6 = call i32 @tg3_flag(%struct.tg3* %4, i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %53

9:                                                ; preds = %1
  %10 = load %struct.tg3*, %struct.tg3** %3, align 8
  %11 = call i64 @tg3_asic_rev(%struct.tg3* %10)
  %12 = load i64, i64* @ASIC_REV_5717, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %24, label %14

14:                                               ; preds = %9
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = call i64 @tg3_asic_rev(%struct.tg3* %15)
  %17 = load i64, i64* @ASIC_REV_5719, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %24, label %19

19:                                               ; preds = %14
  %20 = load %struct.tg3*, %struct.tg3** %3, align 8
  %21 = call i64 @tg3_asic_rev(%struct.tg3* %20)
  %22 = load i64, i64* @ASIC_REV_5720, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %19, %14, %9
  %25 = load %struct.tg3*, %struct.tg3** %3, align 8
  %26 = load i32, i32* @TG3_APE_LOCK_GPIO, align 4
  %27 = call i64 @tg3_ape_lock(%struct.tg3* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %53

32:                                               ; preds = %24
  %33 = load %struct.tg3*, %struct.tg3** %3, align 8
  %34 = load i32, i32* @TG3_GPIO_MSG_DRVR_PRES, align 4
  %35 = call i32 @tg3_set_function_status(%struct.tg3* %33, i32 %34)
  %36 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %37 = load %struct.tg3*, %struct.tg3** %3, align 8
  %38 = getelementptr inbounds %struct.tg3, %struct.tg3* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %41 = call i32 @tw32_wait_f(i32 %36, i32 %39, i32 %40)
  %42 = load %struct.tg3*, %struct.tg3** %3, align 8
  %43 = load i32, i32* @TG3_APE_LOCK_GPIO, align 4
  %44 = call i32 @tg3_ape_unlock(%struct.tg3* %42, i32 %43)
  br label %52

45:                                               ; preds = %19
  %46 = load i32, i32* @GRC_LOCAL_CTRL, align 4
  %47 = load %struct.tg3*, %struct.tg3** %3, align 8
  %48 = getelementptr inbounds %struct.tg3, %struct.tg3* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @TG3_GRC_LCLCTL_PWRSW_DELAY, align 4
  %51 = call i32 @tw32_wait_f(i32 %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %45, %32
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %29, %8
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @tg3_flag(%struct.tg3*, i32) #1

declare dso_local i64 @tg3_asic_rev(%struct.tg3*) #1

declare dso_local i64 @tg3_ape_lock(%struct.tg3*, i32) #1

declare dso_local i32 @tg3_set_function_status(%struct.tg3*, i32) #1

declare dso_local i32 @tw32_wait_f(i32, i32, i32) #1

declare dso_local i32 @tg3_ape_unlock(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

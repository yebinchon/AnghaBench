; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_bmi_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_pci.c_ath10k_pci_bmi_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ce_pipe = type { i32 }
%struct.bmi_xfer = type { i64, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@BMI_COMMUNICATION_TIMEOUT_HZ = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@ATH10K_DBG_BMI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"bmi cmd took %lu jiffies hz %d ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe*, %struct.bmi_xfer*)* @ath10k_pci_bmi_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_pci_bmi_wait(%struct.ath10k* %0, %struct.ath10k_ce_pipe* %1, %struct.ath10k_ce_pipe* %2, %struct.bmi_xfer* %3) #0 {
  %5 = alloca %struct.ath10k*, align 8
  %6 = alloca %struct.ath10k_ce_pipe*, align 8
  %7 = alloca %struct.ath10k_ce_pipe*, align 8
  %8 = alloca %struct.bmi_xfer*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %5, align 8
  store %struct.ath10k_ce_pipe* %1, %struct.ath10k_ce_pipe** %6, align 8
  store %struct.ath10k_ce_pipe* %2, %struct.ath10k_ce_pipe** %7, align 8
  store %struct.bmi_xfer* %3, %struct.bmi_xfer** %8, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @BMI_COMMUNICATION_TIMEOUT_HZ, align 8
  %15 = add i64 %13, %14
  store i64 %15, i64* %9, align 8
  %16 = load i64, i64* @jiffies, align 8
  store i64 %16, i64* %10, align 8
  br label %17

17:                                               ; preds = %40, %4
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i64 @time_before_eq(i64 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %42

22:                                               ; preds = %17
  %23 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %24 = call i32 @ath10k_pci_bmi_send_done(%struct.ath10k_ce_pipe* %23)
  %25 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %7, align 8
  %26 = call i32 @ath10k_pci_bmi_recv_data(%struct.ath10k_ce_pipe* %25)
  %27 = load %struct.bmi_xfer*, %struct.bmi_xfer** %8, align 8
  %28 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %22
  %32 = load %struct.bmi_xfer*, %struct.bmi_xfer** %8, align 8
  %33 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.bmi_xfer*, %struct.bmi_xfer** %8, align 8
  %36 = getelementptr inbounds %struct.bmi_xfer, %struct.bmi_xfer* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %45

40:                                               ; preds = %31, %22
  %41 = call i32 (...) @schedule()
  br label %17

42:                                               ; preds = %17
  %43 = load i32, i32* @ETIMEDOUT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i64, i64* @jiffies, align 8
  %47 = load i64, i64* %10, align 8
  %48 = sub i64 %46, %47
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @HZ, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %54 = load i32, i32* @ATH10K_DBG_BMI, align 4
  %55 = load i64, i64* %11, align 8
  %56 = load i64, i64* @HZ, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @ath10k_dbg(%struct.ath10k* %53, i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %55, i64 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %45
  %60 = load i32, i32* %12, align 4
  ret i32 %60
}

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @ath10k_pci_bmi_send_done(%struct.ath10k_ce_pipe*) #1

declare dso_local i32 @ath10k_pci_bmi_recv_data(%struct.ath10k_ce_pipe*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

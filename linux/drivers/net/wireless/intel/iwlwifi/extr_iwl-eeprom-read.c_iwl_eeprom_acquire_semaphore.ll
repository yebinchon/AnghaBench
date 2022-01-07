; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_eeprom_acquire_semaphore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-eeprom-read.c_iwl_eeprom_acquire_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@EEPROM_SEM_RETRY_LIMIT = common dso_local global i64 0, align 8
@CSR_HW_IF_CONFIG_REG = common dso_local global i32 0, align 4
@CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM = common dso_local global i32 0, align 4
@EEPROM_SEM_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Acquired semaphore after %d tries.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_eeprom_acquire_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_eeprom_acquire_semaphore(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store i64 0, i64* %4, align 8
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @EEPROM_SEM_RETRY_LIMIT, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %12 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %13 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM, align 4
  %14 = call i32 @iwl_set_bit(%struct.iwl_trans* %11, i32 %12, i32 %13)
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %16 = load i32, i32* @CSR_HW_IF_CONFIG_REG, align 4
  %17 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM, align 4
  %18 = load i32, i32* @CSR_HW_IF_CONFIG_REG_BIT_EEPROM_OWN_SEM, align 4
  %19 = load i32, i32* @EEPROM_SEM_TIMEOUT, align 4
  %20 = call i32 @iwl_poll_bit(%struct.iwl_trans* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %10
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  %29 = call i32 @IWL_DEBUG_EEPROM(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %37

31:                                               ; preds = %10
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %4, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %23
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

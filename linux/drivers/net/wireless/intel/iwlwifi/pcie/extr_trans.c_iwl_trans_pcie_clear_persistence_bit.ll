; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_clear_persistence_bit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_clear_persistence_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PREG_PRPH_WPROT_9000 = common dso_local global i32 0, align 4
@PREG_PRPH_WPROT_22000 = common dso_local global i32 0, align 4
@HPM_DEBUG = common dso_local global i32 0, align 4
@PERSISTENCE_BIT = common dso_local global i32 0, align 4
@PREG_WFPM_ACCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error, can not clear persistence bit\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_trans_pcie_clear_persistence_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_clear_persistence_bit(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %7 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %8 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %16 [
    i32 128, label %12
    i32 129, label %14
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @PREG_PRPH_WPROT_9000, align 4
  store i32 %13, i32* %5, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @PREG_PRPH_WPROT_22000, align 4
  store i32 %15, i32* %5, align 4
  br label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

17:                                               ; preds = %14, %12
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %19 = load i32, i32* @HPM_DEBUG, align 4
  %20 = call i32 @iwl_read_umac_prph_no_grab(%struct.iwl_trans* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, -1515870816
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @PERSISTENCE_BIT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %23
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @iwl_read_umac_prph_no_grab(%struct.iwl_trans* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PREG_WFPM_ACCESS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %38 = call i32 @IWL_ERR(%struct.iwl_trans* %37, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %50

41:                                               ; preds = %28
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %43 = load i32, i32* @HPM_DEBUG, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PERSISTENCE_BIT, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i32 @iwl_write_umac_prph_no_grab(%struct.iwl_trans* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %41, %23, %17
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %36, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @iwl_read_umac_prph_no_grab(%struct.iwl_trans*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_write_umac_prph_no_grab(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

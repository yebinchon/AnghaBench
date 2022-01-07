; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_nvm_no_wide_in_5ghz.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-nvm-parse.c_iwl_nvm_no_wide_in_5ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_cfg = type { i32 }

@IWL_DEVICE_FAMILY_7000 = common dso_local global i64 0, align 8
@SUBSYSTEM_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"disabling wide channels in 5GHz (0x%0x %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_cfg*, i32*)* @iwl_nvm_no_wide_in_5ghz to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_nvm_no_wide_in_5ghz(%struct.iwl_trans* %0, %struct.iwl_cfg* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_cfg*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_cfg* %1, %struct.iwl_cfg** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IWL_DEVICE_FAMILY_7000, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %39

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* @SUBSYSTEM_ID, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @be16_to_cpup(i32* %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, 30
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* %9, align 4
  %30 = icmp eq i32 %29, 9
  br i1 %30, label %31, label %38

31:                                               ; preds = %28, %17
  %32 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %33 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @IWL_DEBUG_EEPROM(i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36)
  store i32 1, i32* %4, align 4
  br label %40

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %3
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @be16_to_cpup(i32*) #1

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

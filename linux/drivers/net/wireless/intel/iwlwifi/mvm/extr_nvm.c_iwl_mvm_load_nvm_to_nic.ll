; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_mvm_load_nvm_to_nic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_mvm_load_nvm_to_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.iwl_nvm_section*, %struct.TYPE_2__* }
%struct.iwl_nvm_section = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"'Write to NVM\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"iwl_mvm_send_cmd failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_load_nvm_to_nic(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_nvm_section*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %6, i32 0, i32 0
  %8 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %7, align 8
  store %struct.iwl_nvm_section* %8, %struct.iwl_nvm_section** %5, align 8
  %9 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %10 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IWL_DEBUG_EEPROM(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %66, %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %18 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %17, i32 0, i32 0
  %19 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %18, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.iwl_nvm_section* %19)
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %69

22:                                               ; preds = %15
  %23 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %23, i32 0, i32 0
  %25 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %25, i64 %27
  %29 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %22
  %33 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %33, i32 0, i32 0
  %35 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %35, i64 %37
  %39 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %32, %22
  br label %66

43:                                               ; preds = %32
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %5, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %46, i64 %48
  %50 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.iwl_nvm_section*, %struct.iwl_nvm_section** %5, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %52, i64 %54
  %56 = getelementptr inbounds %struct.iwl_nvm_section, %struct.iwl_nvm_section* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @iwl_nvm_write_section(%struct.iwl_mvm* %44, i32 %45, i32 %51, i32 %57)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %43
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @IWL_ERR(%struct.iwl_mvm* %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  br label %69

65:                                               ; preds = %43
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* %3, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %15

69:                                               ; preds = %61, %15
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @IWL_DEBUG_EEPROM(i32, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iwl_nvm_section*) #1

declare dso_local i32 @iwl_nvm_write_section(%struct.iwl_mvm*, i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

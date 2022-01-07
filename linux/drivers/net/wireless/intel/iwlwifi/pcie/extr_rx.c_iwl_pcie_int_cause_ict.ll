; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_int_cause_ict.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_rx.c_iwl_pcie_int_cause_ict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i64, i64* }

@.str = private unnamed_addr constant [27 x i8] c"ICT index %d value 0x%08X\0A\00", align 1
@ICT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*)* @iwl_pcie_int_cause_ict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_int_cause_ict(%struct.iwl_trans* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_trans_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @trace_iwlwifi_dev_irq(i32 %12)
  %14 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %15 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %18 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64, i64* %16, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @le32_to_cpu(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %24 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %27 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @trace_iwlwifi_dev_ict_read(i32 %25, i64 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

34:                                               ; preds = %1
  br label %35

35:                                               ; preds = %79, %34
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %40 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %41 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @IWL_DEBUG_ISR(%struct.iwl_trans* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %42, i32 %43)
  %45 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %46 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %49 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %53 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add i64 %54, 1
  %56 = load i32, i32* @ICT_COUNT, align 4
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = and i64 %55, %58
  %60 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %61 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %63 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %66 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds i64, i64* %64, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @le32_to_cpu(i64 %69)
  store i32 %70, i32* %7, align 4
  %71 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %4, align 8
  %75 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @trace_iwlwifi_dev_ict_read(i32 %73, i64 %76, i32 %77)
  br label %79

79:                                               ; preds = %35
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %35, label %82

82:                                               ; preds = %79
  %83 = load i32, i32* %6, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i32 0, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %6, align 4
  %88 = and i32 %87, 786432
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, 32768
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %86
  %94 = load i32, i32* %6, align 4
  %95 = and i32 255, %94
  %96 = load i32, i32* %6, align 4
  %97 = and i32 65280, %96
  %98 = shl i32 %97, 16
  %99 = or i32 %95, %98
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %93, %33
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @trace_iwlwifi_dev_irq(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @trace_iwlwifi_dev_ict_read(i32, i64, i32) #1

declare dso_local i32 @IWL_DEBUG_ISR(%struct.iwl_trans*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

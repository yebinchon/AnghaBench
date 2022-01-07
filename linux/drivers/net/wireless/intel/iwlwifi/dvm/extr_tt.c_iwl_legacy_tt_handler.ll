; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_legacy_tt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_legacy_tt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, %struct.iwl_tt_mgmt }
%struct.iwl_tt_mgmt = type { i64, i32, i64, i32 }

@IWL_MINIMAL_POWER_THRESHOLD = common dso_local global i64 0, align 8
@IWL_TI_CT_KILL = common dso_local global i32 0, align 4
@IWL_REDUCED_PERFORMANCE_THRESHOLD_2 = common dso_local global i64 0, align 8
@IWL_REDUCED_PERFORMANCE_THRESHOLD_1 = common dso_local global i64 0, align 8
@IWL_POWER_INDEX_3 = common dso_local global i64 0, align 8
@IWL_POWER_INDEX_4 = common dso_local global i64 0, align 8
@IWL_POWER_INDEX_5 = common dso_local global i64 0, align 8
@STATUS_CT_KILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Cannot update power mode, TT state not updated\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Temperature state changed %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Power Index change to %u\0A\00", align 1
@IWL_TT_INCREASE_MARGIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, i64, i32)* @iwl_legacy_tt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_legacy_tt_handler(%struct.iwl_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_tt_mgmt*, align 8
  %8 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %10 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %9, i32 0, i32 2
  store %struct.iwl_tt_mgmt* %10, %struct.iwl_tt_mgmt** %7, align 8
  %11 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %8, align 4
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @IWL_MINIMAL_POWER_THRESHOLD, align 8
  %16 = icmp sge i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %19 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %40

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @IWL_REDUCED_PERFORMANCE_THRESHOLD_2, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %27 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %26, i32 0, i32 1
  store i32 128, i32* %27, align 8
  br label %39

28:                                               ; preds = %21
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* @IWL_REDUCED_PERFORMANCE_THRESHOLD_1, align 8
  %31 = icmp sge i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %34 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %33, i32 0, i32 1
  store i32 129, i32* %34, align 8
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %37 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %36, i32 0, i32 1
  store i32 130, i32* %37, align 8
  br label %38

38:                                               ; preds = %35, %32
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %42, i32 0, i32 3
  %44 = call i32 @del_timer_sync(i32* %43)
  %45 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %151

50:                                               ; preds = %40
  %51 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %52 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %63 [
    i32 130, label %54
    i32 129, label %55
    i32 128, label %59
  ]

54:                                               ; preds = %50
  br label %67

55:                                               ; preds = %50
  %56 = load i64, i64* @IWL_POWER_INDEX_3, align 8
  %57 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %58 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %57, i32 0, i32 2
  store i64 %56, i64* %58, align 8
  br label %67

59:                                               ; preds = %50
  %60 = load i64, i64* @IWL_POWER_INDEX_4, align 8
  %61 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %62 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %61, i32 0, i32 2
  store i64 %60, i64* %62, align 8
  br label %67

63:                                               ; preds = %50
  %64 = load i64, i64* @IWL_POWER_INDEX_5, align 8
  %65 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %66 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %59, %55, %54
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %69 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %68, i32 0, i32 0
  %70 = call i32 @mutex_lock(i32* %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %67
  %75 = load i32, i32* @STATUS_CT_KILL, align 4
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 1
  %78 = call i32 @clear_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %67
  %80 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %81 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %104

85:                                               ; preds = %79
  %86 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %87 = call i64 @iwl_power_update_mode(%struct.iwl_priv* %86, i32 1)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %89
  %94 = load i32, i32* @STATUS_CT_KILL, align 4
  %95 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %96 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %95, i32 0, i32 1
  %97 = call i32 @set_bit(i32 %94, i32* %96)
  br label %98

98:                                               ; preds = %93, %89
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %101 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %103 = call i32 @IWL_ERR(%struct.iwl_priv* %102, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %147

104:                                              ; preds = %85, %79
  %105 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %106 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %127

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = load i32, i32* @STATUS_CT_KILL, align 4
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %116 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %115, i32 0, i32 1
  %117 = call i32 @set_bit(i32 %114, i32* %116)
  %118 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %119 = call i32 @iwl_perform_ct_kill_task(%struct.iwl_priv* %118, i32 1)
  br label %126

120:                                              ; preds = %110
  %121 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %122 = call i32 @iwl_prepare_ct_kill_task(%struct.iwl_priv* %121)
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %125 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 8
  br label %126

126:                                              ; preds = %120, %113
  br label %135

127:                                              ; preds = %104
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %127
  %132 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %133 = call i32 @iwl_perform_ct_kill_task(%struct.iwl_priv* %132, i32 0)
  br label %134

134:                                              ; preds = %131, %127
  br label %135

135:                                              ; preds = %134, %126
  %136 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %137 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %138 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %136, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %140)
  %142 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %143 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %7, align 8
  %144 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %145)
  br label %147

147:                                              ; preds = %135, %98
  %148 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %149 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %148, i32 0, i32 0
  %150 = call i32 @mutex_unlock(i32* %149)
  br label %151

151:                                              ; preds = %147, %40
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @iwl_power_update_mode(%struct.iwl_priv*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_perform_ct_kill_task(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_prepare_ct_kill_task(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

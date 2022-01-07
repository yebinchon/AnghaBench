; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_tt_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tt.c_iwl_tt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.iwl_tt_mgmt, %struct.TYPE_2__*, i32, i32, i32 }
%struct.iwl_tt_mgmt = type { i32, i32, %struct.iwl_tt_trans*, %struct.iwl_tt_trans*, i32, i32 }
%struct.iwl_tt_trans = type { i32 }
%struct.TYPE_2__ = type { i64 }

@IWL_TI_STATE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Initialize Thermal Throttling\0A\00", align 1
@IWL_TI_0 = common dso_local global i32 0, align 4
@iwl_tt_check_exit_ct_kill = common dso_local global i32 0, align 4
@iwl_tt_ready_for_ct_kill = common dso_local global i32 0, align 4
@iwl_bg_tt_work = common dso_local global i32 0, align 4
@iwl_bg_ct_enter = common dso_local global i32 0, align 4
@iwl_bg_ct_exit = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Advanced Thermal Throttling\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Fallback to Legacy Throttling\0A\00", align 1
@tt_range_0 = common dso_local global i32* null, align 8
@IWL_TI_1 = common dso_local global i32 0, align 4
@tt_range_1 = common dso_local global i32* null, align 8
@IWL_TI_2 = common dso_local global i32 0, align 4
@tt_range_2 = common dso_local global i32* null, align 8
@IWL_TI_CT_KILL = common dso_local global i32 0, align 4
@tt_range_3 = common dso_local global i32* null, align 8
@restriction_range = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [27 x i8] c"Legacy Thermal Throttling\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_tt_initialize(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_tt_mgmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_tt_trans*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 0
  store %struct.iwl_tt_mgmt* %7, %struct.iwl_tt_mgmt** %3, align 8
  %8 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %9 = sub nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %14 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %13, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %16 = call i32 @memset(%struct.iwl_tt_mgmt* %15, i32 0, i32 32)
  %17 = load i32, i32* @IWL_TI_0, align 4
  %18 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %21, i32 0, i32 5
  %23 = load i32, i32* @iwl_tt_check_exit_ct_kill, align 4
  %24 = call i32 @timer_setup(i32* %22, i32 %23, i32 0)
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %26, i32 0, i32 4
  %28 = load i32, i32* @iwl_tt_ready_for_ct_kill, align 4
  %29 = call i32 @timer_setup(i32* %27, i32 %28, i32 0)
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %31 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %30, i32 0, i32 4
  %32 = load i32, i32* @iwl_bg_tt_work, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 3
  %36 = load i32, i32* @iwl_bg_ct_enter, align 4
  %37 = call i32 @INIT_WORK(i32* %35, i32 %36)
  %38 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %39 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %38, i32 0, i32 2
  %40 = load i32, i32* @iwl_bg_ct_exit, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %165

48:                                               ; preds = %1
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %50 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %49, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = call i8* @kcalloc(i32 %51, i32 4, i32 %52)
  %54 = bitcast i8* %53 to %struct.iwl_tt_trans*
  %55 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %55, i32 0, i32 2
  store %struct.iwl_tt_trans* %54, %struct.iwl_tt_trans** %56, align 8
  %57 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %58 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %59 = sub nsw i32 %58, 1
  %60 = mul nsw i32 %57, %59
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kcalloc(i32 %60, i32 4, i32 %61)
  %63 = bitcast i8* %62 to %struct.iwl_tt_trans*
  %64 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %65 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %64, i32 0, i32 3
  store %struct.iwl_tt_trans* %63, %struct.iwl_tt_trans** %65, align 8
  %66 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %66, i32 0, i32 2
  %68 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %67, align 8
  %69 = icmp ne %struct.iwl_tt_trans* %68, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %48
  %71 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %72 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %71, i32 0, i32 3
  %73 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %72, align 8
  %74 = icmp ne %struct.iwl_tt_trans* %73, null
  br i1 %74, label %93, label %75

75:                                               ; preds = %70, %48
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %77 = call i32 @IWL_ERR(%struct.iwl_priv* %76, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %79 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %79, i32 0, i32 1
  store i32 0, i32* %80, align 4
  %81 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %82 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %81, i32 0, i32 2
  %83 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %82, align 8
  %84 = call i32 @kfree(%struct.iwl_tt_trans* %83)
  %85 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %86 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %85, i32 0, i32 2
  store %struct.iwl_tt_trans* null, %struct.iwl_tt_trans** %86, align 8
  %87 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %88 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %87, i32 0, i32 3
  %89 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %88, align 8
  %90 = call i32 @kfree(%struct.iwl_tt_trans* %89)
  %91 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %92 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %91, i32 0, i32 3
  store %struct.iwl_tt_trans* null, %struct.iwl_tt_trans** %92, align 8
  br label %164

93:                                               ; preds = %70
  %94 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %95 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %94, i32 0, i32 3
  %96 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %95, align 8
  %97 = load i32, i32* @IWL_TI_0, align 4
  %98 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %99 = sub nsw i32 %98, 1
  %100 = mul nsw i32 %97, %99
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %96, i64 %101
  store %struct.iwl_tt_trans* %102, %struct.iwl_tt_trans** %5, align 8
  %103 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %104 = load i32*, i32** @tt_range_0, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @memcpy(%struct.iwl_tt_trans* %103, i32* %105, i32 %106)
  %108 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %109 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %108, i32 0, i32 3
  %110 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %109, align 8
  %111 = load i32, i32* @IWL_TI_1, align 4
  %112 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %113 = sub nsw i32 %112, 1
  %114 = mul nsw i32 %111, %113
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %110, i64 %115
  store %struct.iwl_tt_trans* %116, %struct.iwl_tt_trans** %5, align 8
  %117 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %118 = load i32*, i32** @tt_range_1, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %4, align 4
  %121 = call i32 @memcpy(%struct.iwl_tt_trans* %117, i32* %119, i32 %120)
  %122 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %123 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %122, i32 0, i32 3
  %124 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %123, align 8
  %125 = load i32, i32* @IWL_TI_2, align 4
  %126 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %127 = sub nsw i32 %126, 1
  %128 = mul nsw i32 %125, %127
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %124, i64 %129
  store %struct.iwl_tt_trans* %130, %struct.iwl_tt_trans** %5, align 8
  %131 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %132 = load i32*, i32** @tt_range_2, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 0
  %134 = load i32, i32* %4, align 4
  %135 = call i32 @memcpy(%struct.iwl_tt_trans* %131, i32* %133, i32 %134)
  %136 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %137 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %136, i32 0, i32 3
  %138 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %137, align 8
  %139 = load i32, i32* @IWL_TI_CT_KILL, align 4
  %140 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %141 = sub nsw i32 %140, 1
  %142 = mul nsw i32 %139, %141
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.iwl_tt_trans, %struct.iwl_tt_trans* %138, i64 %143
  store %struct.iwl_tt_trans* %144, %struct.iwl_tt_trans** %5, align 8
  %145 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %5, align 8
  %146 = load i32*, i32** @tt_range_3, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @memcpy(%struct.iwl_tt_trans* %145, i32* %147, i32 %148)
  %150 = load i32, i32* @IWL_TI_STATE_MAX, align 4
  %151 = sext i32 %150 to i64
  %152 = mul i64 4, %151
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %4, align 4
  %154 = load %struct.iwl_tt_mgmt*, %struct.iwl_tt_mgmt** %3, align 8
  %155 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %154, i32 0, i32 2
  %156 = load %struct.iwl_tt_trans*, %struct.iwl_tt_trans** %155, align 8
  %157 = load i32*, i32** @restriction_range, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %4, align 4
  %160 = call i32 @memcpy(%struct.iwl_tt_trans* %156, i32* %158, i32 %159)
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %162 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %162, i32 0, i32 1
  store i32 1, i32* %163, align 4
  br label %164

164:                                              ; preds = %93, %75
  br label %171

165:                                              ; preds = %1
  %166 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %167 = call i32 @IWL_DEBUG_TEMP(%struct.iwl_priv* %166, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %168 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %169 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.iwl_tt_mgmt, %struct.iwl_tt_mgmt* %169, i32 0, i32 1
  store i32 0, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %164
  ret void
}

declare dso_local i32 @IWL_DEBUG_TEMP(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @memset(%struct.iwl_tt_mgmt*, i32, i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @kfree(%struct.iwl_tt_trans*) #1

declare dso_local i32 @memcpy(%struct.iwl_tt_trans*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

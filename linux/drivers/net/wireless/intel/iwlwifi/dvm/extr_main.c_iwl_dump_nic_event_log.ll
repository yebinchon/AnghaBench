; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_dump_nic_event_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_dump_nic_event_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.iwl_trans* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_trans = type { i32 }

@IWL_UCODE_INIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Invalid event log pointer 0x%08X for %s uCode\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Init\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RT\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Log capacity %d is bogus, limit to %d entries\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Log write index %d is bogus, limit to %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Start IWL Event Log Dump: nothing in log\0A\00", align 1
@IWL_DL_FW = common dso_local global i32 0, align 4
@DEFAULT_DUMP_EVENT_LOG_ENTRIES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [51 x i8] c"Start IWL Event Log Dump: display last %u entries\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_dump_nic_event_log(%struct.iwl_priv* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %19 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %18, i32 0, i32 3
  %20 = load %struct.iwl_trans*, %struct.iwl_trans** %19, align 8
  store %struct.iwl_trans* %20, %struct.iwl_trans** %17, align 8
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IWL_UCODE_INIT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %3
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %38, %30
  br label %60

45:                                               ; preds = %3
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %45
  %54 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %53, %45
  br label %60

60:                                               ; preds = %59, %44
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @iwlagn_hw_valid_rtc_data_addr(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %60
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %68 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IWL_UCODE_INIT, align 8
  %71 = icmp eq i64 %69, %70
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %74 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %65, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %166

77:                                               ; preds = %60
  %78 = load %struct.iwl_trans*, %struct.iwl_trans** %17, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %17, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = add i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %81, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load %struct.iwl_trans*, %struct.iwl_trans** %17, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 8
  %91 = trunc i64 %90 to i32
  %92 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %87, i32 %91)
  store i32 %92, i32* %11, align 4
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %17, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, 12
  %97 = trunc i64 %96 to i32
  %98 = call i32 @iwl_trans_read_mem32(%struct.iwl_trans* %93, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %77
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %14, align 4
  %106 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %103, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %104, i32 %105)
  %107 = load i32, i32* %14, align 4
  store i32 %107, i32* %9, align 4
  br label %108

108:                                              ; preds = %102, %77
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp sgt i32 %109, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %108
  %113 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %114 = load i32, i32* %12, align 4
  %115 = load i32, i32* %14, align 4
  %116 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %113, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load i32, i32* %14, align 4
  store i32 %117, i32* %12, align 4
  br label %118

118:                                              ; preds = %112, %108
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = load i32, i32* %9, align 4
  br label %125

123:                                              ; preds = %118
  %124 = load i32, i32* %12, align 4
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %122, %121 ], [ %124, %123 ]
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.iwl_trans*, %struct.iwl_trans** %17, align 8
  %131 = bitcast %struct.iwl_trans* %130 to %struct.iwl_priv*
  %132 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %131, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %133 = load i32, i32* %15, align 4
  store i32 %133, i32* %4, align 4
  br label %166

134:                                              ; preds = %125
  %135 = load i32, i32* @IWL_DL_FW, align 4
  %136 = call i64 @iwl_have_debug_level(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %151, label %138

138:                                              ; preds = %134
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %151, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* @DEFAULT_DUMP_EVENT_LOG_ENTRIES, align 4
  %144 = icmp sgt i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = load i32, i32* @DEFAULT_DUMP_EVENT_LOG_ENTRIES, align 4
  br label %149

147:                                              ; preds = %141
  %148 = load i32, i32* %13, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  store i32 %150, i32* %13, align 4
  br label %151

151:                                              ; preds = %149, %138, %134
  %152 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %153 = load i32, i32* %13, align 4
  %154 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_ERR(%struct.iwl_priv* %152, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i32 %153)
  %155 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %15, align 4
  %162 = load i8**, i8*** %7, align 8
  %163 = load i64, i64* %16, align 8
  %164 = call i32 @iwl_print_last_event_logs(%struct.iwl_priv* %155, i32 %156, i32 %157, i32 %158, i32 %159, i32 %160, i32 %161, i8** %162, i64 %163)
  store i32 %164, i32* %15, align 4
  %165 = load i32, i32* %15, align 4
  store i32 %165, i32* %4, align 4
  br label %166

166:                                              ; preds = %151, %129, %64
  %167 = load i32, i32* %4, align 4
  ret i32 %167
}

declare dso_local i32 @iwlagn_hw_valid_rtc_data_addr(i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @iwl_trans_read_mem32(%struct.iwl_trans*, i32) #1

declare dso_local i64 @iwl_have_debug_level(i32) #1

declare dso_local i32 @iwl_print_last_event_logs(%struct.iwl_priv*, i32, i32, i32, i32, i32, i32, i8**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

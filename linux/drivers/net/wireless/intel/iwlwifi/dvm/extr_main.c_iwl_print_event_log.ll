; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_print_event_log.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_print_event_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__, %struct.iwl_trans* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_trans = type { i32 }

@IWL_UCODE_INIT = common dso_local global i64 0, align 8
@EVENT_START_OFFSET = common dso_local global i64 0, align 8
@HBUS_TARG_MEM_RADDR = common dso_local global i32 0, align 4
@HBUS_TARG_MEM_RDAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"EVT_LOG:0x%08x:%04u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"EVT_LOGT:%010u:0x%08x:%04u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i64, i64, i64, i32, i8**, i64)* @iwl_print_event_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_print_event_log(%struct.iwl_priv* %0, i64 %1, i64 %2, i64 %3, i32 %4, i8** %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8**, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store i8** %5, i8*** %14, align 8
  store i64 %6, i64* %15, align 8
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 3
  %27 = load %struct.iwl_trans*, %struct.iwl_trans** %26, align 8
  store %struct.iwl_trans* %27, %struct.iwl_trans** %24, align 8
  %28 = load i64, i64* %11, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* %13, align 4
  store i32 %31, i32* %8, align 4
  br label %176

32:                                               ; preds = %7
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %17, align 8
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %38 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IWL_UCODE_INIT, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %17, align 8
  br label %51

51:                                               ; preds = %45, %42
  br label %62

52:                                               ; preds = %32
  %53 = load i64, i64* %17, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %57 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %56, i32 0, i32 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %17, align 8
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %51
  %63 = load i64, i64* %12, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  store i64 16, i64* %18, align 8
  br label %67

66:                                               ; preds = %62
  store i64 24, i64* %18, align 8
  br label %67

67:                                               ; preds = %66, %65
  %68 = load i64, i64* %17, align 8
  %69 = load i64, i64* @EVENT_START_OFFSET, align 8
  %70 = add nsw i64 %68, %69
  %71 = load i64, i64* %10, align 8
  %72 = load i64, i64* %18, align 8
  %73 = mul nsw i64 %71, %72
  %74 = add nsw i64 %70, %73
  store i64 %74, i64* %19, align 8
  %75 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %76 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %75, i64* %23)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %8, align 4
  br label %176

80:                                               ; preds = %67
  %81 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %82 = load i32, i32* @HBUS_TARG_MEM_RADDR, align 4
  %83 = load i64, i64* %19, align 8
  %84 = call i32 @iwl_write32(%struct.iwl_trans* %81, i32 %82, i64 %83)
  store i64 0, i64* %16, align 8
  br label %85

85:                                               ; preds = %169, %80
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp slt i64 %86, %87
  br i1 %88, label %89, label %172

89:                                               ; preds = %85
  %90 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %91 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %92 = call i64 @iwl_read32(%struct.iwl_trans* %90, i32 %91)
  store i64 %92, i64* %20, align 8
  %93 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %94 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %95 = call i64 @iwl_read32(%struct.iwl_trans* %93, i32 %94)
  store i64 %95, i64* %21, align 8
  %96 = load i64, i64* %12, align 8
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %130

98:                                               ; preds = %89
  %99 = load i64, i64* %15, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %98
  %102 = load i8**, i8*** %14, align 8
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* %13, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i64, i64* %15, align 8
  %108 = load i32, i32* %13, align 4
  %109 = sext i32 %108 to i64
  %110 = sub i64 %107, %109
  %111 = load i64, i64* %21, align 8
  %112 = load i64, i64* %20, align 8
  %113 = call i64 (i8*, i64, i8*, i64, i64, ...) @scnprintf(i8* %106, i64 %110, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %111, i64 %112)
  %114 = load i32, i32* %13, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %13, align 4
  br label %129

118:                                              ; preds = %98
  %119 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %120 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %21, align 8
  %123 = load i64, i64* %20, align 8
  %124 = call i32 @trace_iwlwifi_dev_ucode_event(i32 %121, i64 0, i64 %122, i64 %123)
  %125 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %126 = load i64, i64* %21, align 8
  %127 = load i64, i64* %20, align 8
  %128 = call i32 (%struct.iwl_priv*, i8*, i64, i64, ...) @IWL_ERR(%struct.iwl_priv* %125, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %126, i64 %127)
  br label %129

129:                                              ; preds = %118, %101
  br label %168

130:                                              ; preds = %89
  %131 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %132 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %133 = call i64 @iwl_read32(%struct.iwl_trans* %131, i32 %132)
  store i64 %133, i64* %22, align 8
  %134 = load i64, i64* %15, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %130
  %137 = load i8**, i8*** %14, align 8
  %138 = load i8*, i8** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i64, i64* %15, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = sub i64 %142, %144
  %146 = load i64, i64* %21, align 8
  %147 = load i64, i64* %22, align 8
  %148 = load i64, i64* %20, align 8
  %149 = call i64 (i8*, i64, i8*, i64, i64, ...) @scnprintf(i8* %141, i64 %145, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %146, i64 %147, i64 %148)
  %150 = load i32, i32* %13, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %149
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %13, align 4
  br label %167

154:                                              ; preds = %130
  %155 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %156 = load i64, i64* %21, align 8
  %157 = load i64, i64* %22, align 8
  %158 = load i64, i64* %20, align 8
  %159 = call i32 (%struct.iwl_priv*, i8*, i64, i64, ...) @IWL_ERR(%struct.iwl_priv* %155, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %156, i64 %157, i64 %158)
  %160 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %161 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64, i64* %21, align 8
  %164 = load i64, i64* %22, align 8
  %165 = load i64, i64* %20, align 8
  %166 = call i32 @trace_iwlwifi_dev_ucode_event(i32 %162, i64 %163, i64 %164, i64 %165)
  br label %167

167:                                              ; preds = %154, %136
  br label %168

168:                                              ; preds = %167, %129
  br label %169

169:                                              ; preds = %168
  %170 = load i64, i64* %16, align 8
  %171 = add nsw i64 %170, 1
  store i64 %171, i64* %16, align 8
  br label %85

172:                                              ; preds = %85
  %173 = load %struct.iwl_trans*, %struct.iwl_trans** %24, align 8
  %174 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %173, i64* %23)
  %175 = load i32, i32* %13, align 4
  store i32 %175, i32* %8, align 4
  br label %176

176:                                              ; preds = %172, %78, %30
  %177 = load i32, i32* %8, align 4
  ret i32 %177
}

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i64) #1

declare dso_local i64 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64, i64, ...) #1

declare dso_local i32 @trace_iwlwifi_dev_ucode_event(i32, i64, i64, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i64, i64, ...) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

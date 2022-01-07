; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_process_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_process_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.qed_dcbx_results = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i64 }
%struct.dcbx_app_priority_entry = type { i32 }

@QED_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Num APP entries = %d\0A\00", align 1
@DCBX_CONFIG_VERSION_IEEE = common dso_local global i64 0, align 8
@DCBX_APP_PROTOCOL_ID = common dso_local global i32 0, align 4
@DCBX_APP_PRI_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Invalid priority\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DCBX_PROTOCOL_ETH = common dso_local global i32 0, align 4
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@DCBX_MAX_PROTOCOL_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_dcbx_results*, %struct.dcbx_app_priority_entry*, i32, i32, i64)* @qed_dcbx_process_tlv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_dcbx_process_tlv(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.qed_dcbx_results* %2, %struct.dcbx_app_priority_entry* %3, i32 %4, i32 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.qed_hwfn*, align 8
  %10 = alloca %struct.qed_ptt*, align 8
  %11 = alloca %struct.qed_dcbx_results*, align 8
  %12 = alloca %struct.dcbx_app_priority_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %9, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %10, align 8
  store %struct.qed_dcbx_results* %2, %struct.qed_dcbx_results** %11, align 8
  store %struct.dcbx_app_priority_entry* %3, %struct.dcbx_app_priority_entry** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i64 %6, i64* %15, align 8
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %26 = load i32, i32* @QED_MSG_DCB, align 4
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %25, i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i64, i64* %15, align 8
  %30 = load i64, i64* @DCBX_CONFIG_VERSION_IEEE, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %24, align 4
  br label %33

33:                                               ; preds = %96, %7
  %34 = load i32, i32* %24, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %99

37:                                               ; preds = %33
  %38 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %12, align 8
  %39 = load i32, i32* %24, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @DCBX_APP_PROTOCOL_ID, align 4
  %45 = call i8* @QED_MFW_GET_FIELD(i32 %43, i32 %44)
  store i8* %45, i8** %22, align 8
  %46 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %12, align 8
  %47 = load i32, i32* %24, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %46, i64 %48
  %50 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DCBX_APP_PRI_MAP, align 4
  %53 = call i8* @QED_MFW_GET_FIELD(i32 %51, i32 %52)
  %54 = ptrtoint i8* %53 to i64
  store i64 %54, i64* %21, align 8
  %55 = load i64, i64* %21, align 8
  %56 = call i32 @ffs(i64 %55)
  %57 = sub nsw i32 %56, 1
  store i32 %57, i32* %23, align 4
  %58 = load i32, i32* %23, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %37
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %62 = call i32 @DP_ERR(%struct.qed_hwfn* %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %179

65:                                               ; preds = %37
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* %23, align 4
  %68 = call i64 @QED_DCBX_PRIO2TC(i32 %66, i32 %67)
  store i64 %68, i64* %20, align 8
  %69 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %70 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %12, align 8
  %71 = load i32, i32* %24, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %70, i64 %72
  %74 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i8*, i8** %22, align 8
  %77 = load i32, i32* %18, align 4
  %78 = call i64 @qed_dcbx_get_app_protocol_type(%struct.qed_hwfn* %69, i32 %75, i8* %76, i32* %16, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %65
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 0, i32* %17, align 4
  store i32 1, i32* %19, align 4
  br label %86

85:                                               ; preds = %80
  store i32 1, i32* %17, align 4
  br label %86

86:                                               ; preds = %85, %84
  %87 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %11, align 8
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %89 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %90 = load i32, i32* %17, align 4
  %91 = load i32, i32* %23, align 4
  %92 = load i64, i64* %20, align 8
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @qed_dcbx_update_app_info(%struct.qed_dcbx_results* %87, %struct.qed_hwfn* %88, %struct.qed_ptt* %89, i32 1, i32 %90, i32 %91, i64 %92, i32 %93)
  br label %95

95:                                               ; preds = %86, %65
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %24, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %24, align 4
  br label %33

99:                                               ; preds = %33
  %100 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %101 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %102 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %101, i32 0, i32 1
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = call i64 @test_bit(i32 %100, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %99
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %107
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %112 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %11, align 8
  %116 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  store i64 %114, i64* %121, align 8
  br label %122

122:                                              ; preds = %110, %107, %99
  %123 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %11, align 8
  %124 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  store i64 %130, i64* %20, align 8
  %131 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %11, align 8
  %132 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %131, i32 0, i32 0
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %132, align 8
  %134 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  store i32 %138, i32* %23, align 4
  store i32 0, i32* %16, align 4
  br label %139

139:                                              ; preds = %175, %122
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* @DCBX_MAX_PROTOCOL_TYPE, align 4
  %142 = icmp ult i32 %140, %141
  br i1 %142, label %143, label %178

143:                                              ; preds = %139
  %144 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %11, align 8
  %145 = getelementptr inbounds %struct.qed_dcbx_results, %struct.qed_dcbx_results* %144, i32 0, i32 0
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %145, align 8
  %147 = load i32, i32* %16, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %143
  br label %175

154:                                              ; preds = %143
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* @DCBX_PROTOCOL_ETH, align 4
  %157 = icmp eq i32 %155, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %165

159:                                              ; preds = %154
  %160 = load i64, i64* %15, align 8
  %161 = icmp ne i64 %160, 0
  %162 = xor i1 %161, true
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  br label %165

165:                                              ; preds = %159, %158
  %166 = phi i32 [ 0, %158 ], [ %164, %159 ]
  store i32 %166, i32* %17, align 4
  %167 = load %struct.qed_dcbx_results*, %struct.qed_dcbx_results** %11, align 8
  %168 = load %struct.qed_hwfn*, %struct.qed_hwfn** %9, align 8
  %169 = load %struct.qed_ptt*, %struct.qed_ptt** %10, align 8
  %170 = load i32, i32* %17, align 4
  %171 = load i32, i32* %23, align 4
  %172 = load i64, i64* %20, align 8
  %173 = load i32, i32* %16, align 4
  %174 = call i32 @qed_dcbx_update_app_info(%struct.qed_dcbx_results* %167, %struct.qed_hwfn* %168, %struct.qed_ptt* %169, i32 0, i32 %170, i32 %171, i64 %172, i32 %173)
  br label %175

175:                                              ; preds = %165, %153
  %176 = load i32, i32* %16, align 4
  %177 = add i32 %176, 1
  store i32 %177, i32* %16, align 4
  br label %139

178:                                              ; preds = %139
  store i32 0, i32* %8, align 4
  br label %179

179:                                              ; preds = %178, %60
  %180 = load i32, i32* %8, align 4
  ret i32 %180
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i8* @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i32 @ffs(i64) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i64 @QED_DCBX_PRIO2TC(i32, i32) #1

declare dso_local i64 @qed_dcbx_get_app_protocol_type(%struct.qed_hwfn*, i32, i8*, i32*, i32) #1

declare dso_local i32 @qed_dcbx_update_app_info(%struct.qed_dcbx_results*, %struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i64, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

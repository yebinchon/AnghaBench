; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_app_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dcbx.c_qed_dcbx_get_app_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.dcbx_app_priority_feature = type { i32 }
%struct.dcbx_app_priority_entry = type { i32 }
%struct.qed_dcbx_params = type { i8*, i8*, i8*, %struct.qed_app_entry*, i8* }
%struct.qed_app_entry = type { i32, i32, i8*, i64, i8* }

@DCBX_APP_WILLING = common dso_local global i32 0, align 4
@DCBX_APP_ENABLED = common dso_local global i32 0, align 4
@DCBX_APP_ERROR = common dso_local global i32 0, align 4
@DCBX_APP_NUM_ENTRIES = common dso_local global i32 0, align 4
@DCBX_MAX_APP_PROTOCOL = common dso_local global i32 0, align 4
@DCBX_APP_SF_IEEE = common dso_local global i32 0, align 4
@DCBX_APP_SF = common dso_local global i32 0, align 4
@QED_DCBX_SF_IEEE_TCP_UDP_PORT = common dso_local global i8* null, align 8
@QED_DCBX_SF_IEEE_ETHTYPE = common dso_local global i8* null, align 8
@QED_DCBX_SF_IEEE_TCP_PORT = common dso_local global i8* null, align 8
@QED_DCBX_SF_IEEE_UDP_PORT = common dso_local global i8* null, align 8
@DCBX_APP_PRI_MAP = common dso_local global i32 0, align 4
@DCBX_APP_PROTOCOL_ID = common dso_local global i32 0, align 4
@QED_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"APP params: willing %d, valid %d error = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_entry*, %struct.qed_dcbx_params*, i32)* @qed_dcbx_get_app_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_dcbx_get_app_data(%struct.qed_hwfn* %0, %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_entry* %2, %struct.qed_dcbx_params* %3, i32 %4) #0 {
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.dcbx_app_priority_feature*, align 8
  %8 = alloca %struct.dcbx_app_priority_entry*, align 8
  %9 = alloca %struct.qed_dcbx_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_app_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.dcbx_app_priority_feature* %1, %struct.dcbx_app_priority_feature** %7, align 8
  store %struct.dcbx_app_priority_entry* %2, %struct.dcbx_app_priority_entry** %8, align 8
  store %struct.qed_dcbx_params* %3, %struct.qed_dcbx_params** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %17 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DCBX_APP_WILLING, align 4
  %20 = call i8* @QED_MFW_GET_FIELD(i32 %18, i32 %19)
  %21 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %22 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %24 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DCBX_APP_ENABLED, align 4
  %27 = call i8* @QED_MFW_GET_FIELD(i32 %25, i32 %26)
  %28 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %29 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %31 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DCBX_APP_ERROR, align 4
  %34 = call i8* @QED_MFW_GET_FIELD(i32 %32, i32 %33)
  %35 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %36 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = load %struct.dcbx_app_priority_feature*, %struct.dcbx_app_priority_feature** %7, align 8
  %38 = getelementptr inbounds %struct.dcbx_app_priority_feature, %struct.dcbx_app_priority_feature* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @DCBX_APP_NUM_ENTRIES, align 4
  %41 = call i8* @QED_MFW_GET_FIELD(i32 %39, i32 %40)
  %42 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %43 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %13, align 4
  br label %44

44:                                               ; preds = %157, %5
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @DCBX_MAX_APP_PROTOCOL, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %160

48:                                               ; preds = %44
  %49 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %50 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %49, i32 0, i32 3
  %51 = load %struct.qed_app_entry*, %struct.qed_app_entry** %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %51, i64 %53
  store %struct.qed_app_entry* %54, %struct.qed_app_entry** %11, align 8
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %104

57:                                               ; preds = %48
  %58 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %59 = load i32, i32* %13, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %58, i64 %60
  %62 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @DCBX_APP_SF_IEEE, align 4
  %65 = call i8* @QED_MFW_GET_FIELD(i32 %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  switch i32 %67, label %103 [
    i32 131, label %68
    i32 132, label %87
    i32 130, label %91
    i32 128, label %95
    i32 129, label %99
  ]

68:                                               ; preds = %57
  %69 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %69, i64 %71
  %73 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @DCBX_APP_SF, align 4
  %76 = call i8* @QED_MFW_GET_FIELD(i32 %74, i32 %75)
  store i8* %76, i8** %15, align 8
  %77 = load i8*, i8** %15, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i8*, i8** @QED_DCBX_SF_IEEE_TCP_UDP_PORT, align 8
  br label %83

81:                                               ; preds = %68
  %82 = load i8*, i8** @QED_DCBX_SF_IEEE_ETHTYPE, align 8
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i8* [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %86 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %85, i32 0, i32 4
  store i8* %84, i8** %86, align 8
  br label %103

87:                                               ; preds = %57
  %88 = load i8*, i8** @QED_DCBX_SF_IEEE_ETHTYPE, align 8
  %89 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %90 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  br label %103

91:                                               ; preds = %57
  %92 = load i8*, i8** @QED_DCBX_SF_IEEE_TCP_PORT, align 8
  %93 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %94 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %93, i32 0, i32 4
  store i8* %92, i8** %94, align 8
  br label %103

95:                                               ; preds = %57
  %96 = load i8*, i8** @QED_DCBX_SF_IEEE_UDP_PORT, align 8
  %97 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %98 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %97, i32 0, i32 4
  store i8* %96, i8** %98, align 8
  br label %103

99:                                               ; preds = %57
  %100 = load i8*, i8** @QED_DCBX_SF_IEEE_TCP_UDP_PORT, align 8
  %101 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %102 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %101, i32 0, i32 4
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %57, %99, %95, %91, %87, %83
  br label %118

104:                                              ; preds = %48
  %105 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %105, i64 %107
  %109 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @DCBX_APP_SF, align 4
  %112 = call i8* @QED_MFW_GET_FIELD(i32 %110, i32 %111)
  %113 = icmp ne i8* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %117 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %104, %103
  %119 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %119, i64 %121
  %123 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @DCBX_APP_PRI_MAP, align 4
  %126 = call i8* @QED_MFW_GET_FIELD(i32 %124, i32 %125)
  %127 = ptrtoint i8* %126 to i32
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @ffs(i32 %128)
  %130 = sub nsw i64 %129, 1
  %131 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %132 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %131, i32 0, i32 3
  store i64 %130, i64* %132, align 8
  %133 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %133, i64 %135
  %137 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @DCBX_APP_PROTOCOL_ID, align 4
  %140 = call i8* @QED_MFW_GET_FIELD(i32 %138, i32 %139)
  %141 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %142 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %144 = load %struct.dcbx_app_priority_entry*, %struct.dcbx_app_priority_entry** %8, align 8
  %145 = load i32, i32* %13, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %144, i64 %146
  %148 = getelementptr inbounds %struct.dcbx_app_priority_entry, %struct.dcbx_app_priority_entry* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %151 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %150, i32 0, i32 2
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.qed_app_entry*, %struct.qed_app_entry** %11, align 8
  %154 = getelementptr inbounds %struct.qed_app_entry, %struct.qed_app_entry* %153, i32 0, i32 1
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @qed_dcbx_get_app_protocol_type(%struct.qed_hwfn* %143, i32 %149, i8* %152, i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %118
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %44

160:                                              ; preds = %44
  %161 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %162 = load i32, i32* @QED_MSG_DCB, align 4
  %163 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %164 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %163, i32 0, i32 2
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %167 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %166, i32 0, i32 1
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.qed_dcbx_params*, %struct.qed_dcbx_params** %9, align 8
  %170 = getelementptr inbounds %struct.qed_dcbx_params, %struct.qed_dcbx_params* %169, i32 0, i32 0
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %161, i32 %162, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %165, i8* %168, i8* %171)
  ret void
}

declare dso_local i8* @QED_MFW_GET_FIELD(i32, i32) #1

declare dso_local i64 @ffs(i32) #1

declare dso_local i32 @qed_dcbx_get_app_protocol_type(%struct.qed_hwfn*, i32, i8*, i32*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

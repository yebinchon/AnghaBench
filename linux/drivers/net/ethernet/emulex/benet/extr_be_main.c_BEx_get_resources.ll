; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_BEx_get_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_BEx_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i64, i32, i32, i64 }
%struct.be_resources = type { i32, i32, i32, i32, i64, i64, i32, i32, i32 }

@BE_UC_PMAC_COUNT = common dso_local global i32 0, align 4
@BE_VF_UC_PMAC_COUNT = common dso_local global i32 0, align 4
@BE_NUM_VLANS_SUPPORTED = common dso_local global i32 0, align 4
@BE_MAX_MC = common dso_local global i32 0, align 4
@BE_FUNCTION_CAPS_RSS = common dso_local global i32 0, align 4
@BE_FUNCTION_CAPS_SUPER_NIC = common dso_local global i32 0, align 4
@ACTIVE_PROFILE_TYPE = common dso_local global i32 0, align 4
@RESOURCE_LIMITS = common dso_local global i32 0, align 4
@BE3_MAX_TX_QS = common dso_local global i8* null, align 8
@BE3_MAX_RSS_QS = common dso_local global i64 0, align 8
@BE2_MAX_RSS_QS = common dso_local global i64 0, align 8
@BE3_SRIOV_MAX_EVT_QS = common dso_local global i32 0, align 4
@BE3_MAX_EVT_QS = common dso_local global i32 0, align 4
@BE_IF_CAP_FLAGS_WANT = common dso_local global i32 0, align 4
@BE_IF_FLAGS_DEFQ_RSS = common dso_local global i32 0, align 4
@BE_IF_FLAGS_RSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, %struct.be_resources*)* @BEx_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BEx_get_resources(%struct.be_adapter* %0, %struct.be_resources* %1) #0 {
  %3 = alloca %struct.be_adapter*, align 8
  %4 = alloca %struct.be_resources*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_resources, align 8
  store %struct.be_adapter* %0, %struct.be_adapter** %3, align 8
  store %struct.be_resources* %1, %struct.be_resources** %4, align 8
  %7 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %7, i32 0, i32 5
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 1, i32 0
  store i32 %12, i32* %5, align 4
  %13 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %14 = call i64 @be_physfn(%struct.be_adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @BE_UC_PMAC_COUNT, align 4
  %18 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %19 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 8
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @BE_VF_UC_PMAC_COUNT, align 4
  %22 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %23 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @be_convert_mc_type(i32 %27)
  %29 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %32 = call i64 @be_is_mc(%struct.be_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %24
  %35 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %36 = call i64 @be_is_qnq_mode(%struct.be_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %40 = sdiv i32 %39, 8
  %41 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %42 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %49

43:                                               ; preds = %34
  %44 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %45 = sdiv i32 %44, 4
  %46 = sub nsw i32 %45, 1
  %47 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %48 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %38
  br label %54

50:                                               ; preds = %24
  %51 = load i32, i32* @BE_NUM_VLANS_SUPPORTED, align 4
  %52 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %53 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %50, %49
  %55 = load i32, i32* @BE_MAX_MC, align 4
  %56 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %57 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %56, i32 0, i32 7
  store i32 %55, i32* %57, align 4
  %58 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %59 = call i64 @BE2_chip(%struct.be_adapter* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %84, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %61
  %65 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %67, 1
  br i1 %68, label %84, label %69

69:                                               ; preds = %64
  %70 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %71 = call i64 @be_virtfn(%struct.be_adapter* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %84, label %73

73:                                               ; preds = %69
  %74 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %75 = call i64 @be_is_mc(%struct.be_adapter* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %73
  %78 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @BE_FUNCTION_CAPS_RSS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %77, %69, %64, %61, %54
  %85 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %86 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %119

87:                                               ; preds = %77, %73
  %88 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %89 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @BE_FUNCTION_CAPS_SUPER_NIC, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %113

94:                                               ; preds = %87
  %95 = bitcast %struct.be_resources* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %95, i8 0, i64 48, i1 false)
  %96 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %97 = load i32, i32* @ACTIVE_PROFILE_TYPE, align 4
  %98 = load i32, i32* @RESOURCE_LIMITS, align 4
  %99 = call i32 @be_cmd_get_profile_config(%struct.be_adapter* %96, %struct.be_resources* %6, i32* null, i32 %97, i32 %98, i32 0)
  %100 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %6, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = sext i32 %101 to i64
  %105 = inttoptr i64 %104 to i8*
  br label %108

106:                                              ; preds = %94
  %107 = load i8*, i8** @BE3_MAX_TX_QS, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i8* [ %105, %103 ], [ %107, %106 ]
  %110 = ptrtoint i8* %109 to i32
  %111 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %112 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %118

113:                                              ; preds = %87
  %114 = load i8*, i8** @BE3_MAX_TX_QS, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %117 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  br label %118

118:                                              ; preds = %113, %108
  br label %119

119:                                              ; preds = %118, %84
  %120 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %121 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @BE_FUNCTION_CAPS_RSS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %146

126:                                              ; preds = %119
  %127 = load i32, i32* %5, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %146, label %129

129:                                              ; preds = %126
  %130 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %131 = call i64 @be_physfn(%struct.be_adapter* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %146

133:                                              ; preds = %129
  %134 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %135 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %133
  %139 = load i64, i64* @BE3_MAX_RSS_QS, align 8
  br label %142

140:                                              ; preds = %133
  %141 = load i64, i64* @BE2_MAX_RSS_QS, align 8
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i64 [ %139, %138 ], [ %141, %140 ]
  %144 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %145 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %144, i32 0, i32 4
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %142, %129, %126, %119
  %147 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %148 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %147, i32 0, i32 4
  %149 = load i64, i64* %148, align 8
  %150 = add nsw i64 %149, 1
  %151 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %152 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %151, i32 0, i32 5
  store i64 %150, i64* %152, align 8
  %153 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %154 = call i64 @be_physfn(%struct.be_adapter* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %168

156:                                              ; preds = %146
  %157 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %158 = call i64 @be_max_vfs(%struct.be_adapter* %157)
  %159 = icmp sgt i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @BE3_SRIOV_MAX_EVT_QS, align 4
  br label %164

162:                                              ; preds = %156
  %163 = load i32, i32* @BE3_MAX_EVT_QS, align 4
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi i32 [ %161, %160 ], [ %163, %162 ]
  %166 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %167 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %166, i32 0, i32 2
  store i32 %165, i32* %167, align 8
  br label %171

168:                                              ; preds = %146
  %169 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %170 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %169, i32 0, i32 2
  store i32 1, i32* %170, align 8
  br label %171

171:                                              ; preds = %168, %164
  %172 = load i32, i32* @BE_IF_CAP_FLAGS_WANT, align 4
  %173 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %174 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %173, i32 0, i32 3
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %178 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 4
  %181 = load %struct.be_adapter*, %struct.be_adapter** %3, align 8
  %182 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @BE_FUNCTION_CAPS_RSS, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %171
  %188 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %189 = xor i32 %188, -1
  %190 = load %struct.be_resources*, %struct.be_resources** %4, align 8
  %191 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %187, %171
  ret void
}

declare dso_local i64 @be_physfn(%struct.be_adapter*) #1

declare dso_local i32 @be_convert_mc_type(i32) #1

declare dso_local i64 @be_is_mc(%struct.be_adapter*) #1

declare dso_local i64 @be_is_qnq_mode(%struct.be_adapter*) #1

declare dso_local i64 @BE2_chip(%struct.be_adapter*) #1

declare dso_local i64 @be_virtfn(%struct.be_adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @be_cmd_get_profile_config(%struct.be_adapter*, %struct.be_resources*, i32*, i32, i32, i32) #1

declare dso_local i64 @be_max_vfs(%struct.be_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

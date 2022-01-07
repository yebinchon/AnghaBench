; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_calculate_vf_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_calculate_vf_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.be_resources }
%struct.be_resources = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }

@SH_VF_MAX_NIC_EQS = common dso_local global i32 0, align 4
@ACTIVE_PROFILE_TYPE = common dso_local global i32 0, align 4
@RESOURCE_MODIFIABLE = common dso_local global i32 0, align 4
@BE_IF_FLAGS_RSS = common dso_local global i32 0, align 4
@IF_CAPS_FLAGS_VALID_SHIFT = common dso_local global i32 0, align 4
@BE_IF_FLAGS_DEFQ_RSS = common dso_local global i32 0, align 4
@BE_IF_FLAGS_VLAN_PROMISCUOUS = common dso_local global i32 0, align 4
@FIELD_MODIFIABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*, i32, %struct.be_resources*)* @be_calculate_vf_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_calculate_vf_res(%struct.be_adapter* %0, i32 %1, %struct.be_resources* %2) #0 {
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_resources*, align 8
  %7 = alloca %struct.be_resources, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.be_resources, align 8
  %10 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.be_resources* %2, %struct.be_resources** %6, align 8
  %11 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %11, i32 0, i32 0
  %13 = bitcast %struct.be_resources* %7 to i8*
  %14 = bitcast %struct.be_resources* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 64, i1 false)
  %15 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %8, align 4
  %17 = bitcast %struct.be_resources* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 64, i1 false)
  store i32 1, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load i32, i32* @SH_VF_MAX_NIC_EQS, align 4
  %22 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = sdiv i32 %23, %25
  %27 = call i32 @min(i32 %21, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %30 = call i32 @be_max_pf_pool_rss_tables(%struct.be_adapter* %29)
  %31 = icmp sge i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  store i32 1, i32* %10, align 4
  br label %33

33:                                               ; preds = %32, %20
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %36 = load i32, i32* @ACTIVE_PROFILE_TYPE, align 4
  %37 = load i32, i32* @RESOURCE_MODIFIABLE, align 4
  %38 = call i32 @be_cmd_get_profile_config(%struct.be_adapter* %35, %struct.be_resources* %9, i32* null, i32 %36, i32 %37, i32 0)
  %39 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %34
  %45 = load i32, i32* @IF_CAPS_FLAGS_VALID_SHIFT, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %48 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %10, align 4
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %67

53:                                               ; preds = %44
  %54 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %53
  %63 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %64 = load i32, i32* %8, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %62, %53
  br label %74

67:                                               ; preds = %44
  %68 = load i32, i32* @BE_IF_FLAGS_RSS, align 4
  %69 = load i32, i32* @BE_IF_FLAGS_DEFQ_RSS, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %67, %66
  br label %76

75:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %74
  %77 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @BE_IF_FLAGS_VLAN_PROMISCUOUS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %76
  %83 = load i32, i32* @IF_CAPS_FLAGS_VALID_SHIFT, align 4
  %84 = call i32 @BIT(i32 %83)
  %85 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %86 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  %89 = load i32, i32* @BE_IF_FLAGS_VLAN_PROMISCUOUS, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %8, align 4
  br label %93

93:                                               ; preds = %82, %76
  %94 = load i32, i32* %8, align 4
  %95 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %96 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %99 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %102 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 4
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add nsw i32 %105, 1
  %107 = sdiv i32 %104, %106
  %108 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %109 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %5, align 4
  %113 = add nsw i32 %112, 1
  %114 = sdiv i32 %111, %113
  %115 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %116 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 6
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FIELD_MODIFIABLE, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %93
  %122 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = sdiv i64 %123, %126
  %128 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %129 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %128, i32 0, i32 6
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %121, %93
  %131 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 7
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @FIELD_MODIFIABLE, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 7
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  %140 = sext i32 %139 to i64
  %141 = sdiv i64 %137, %140
  %142 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %143 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %142, i32 0, i32 7
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %135, %130
  %145 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 8
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @FIELD_MODIFIABLE, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 8
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = sdiv i64 %151, %154
  %156 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %157 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %156, i32 0, i32 8
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %149, %144
  %159 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %9, i32 0, i32 9
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @FIELD_MODIFIABLE, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %7, i32 0, i32 9
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  %168 = sext i32 %167 to i64
  %169 = sdiv i64 %165, %168
  %170 = load %struct.be_resources*, %struct.be_resources** %6, align 8
  %171 = getelementptr inbounds %struct.be_resources, %struct.be_resources* %170, i32 0, i32 9
  store i64 %169, i64* %171, align 8
  br label %172

172:                                              ; preds = %163, %158
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @be_max_pf_pool_rss_tables(%struct.be_adapter*) #2

declare dso_local i32 @be_cmd_get_profile_config(%struct.be_adapter*, %struct.be_resources*, i32*, i32, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

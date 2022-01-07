; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i64, i32, %struct.TYPE_11__, i32, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.ice_pf* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.ice_pf = type { %struct.TYPE_12__*, %struct.TYPE_10__*, i32, %struct.ice_hw }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.ice_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ice_vsi_ctx = type { i32, %struct.TYPE_11__, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_AQ_VSI_TYPE_PF = common dso_local global i32 0, align 4
@ICE_AQ_VSI_TYPE_VF = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@BRIDGE_MODE_VEB = common dso_local global i64 0, align 8
@ICE_AQ_VSI_SW_FLAG_ALLOW_LB = common dso_local global i32 0, align 4
@ICE_FLAG_RSS_ENA = common dso_local global i32 0, align 4
@ICE_AQ_VSI_PROP_SECURITY_VALID = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF = common dso_local global i32 0, align 4
@ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Add VSI failed, err %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_init(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca %struct.ice_hw*, align 8
  %6 = alloca %struct.ice_vsi_ctx*, align 8
  %7 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 7
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %4, align 8
  %11 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %12 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %11, i32 0, i32 3
  store %struct.ice_hw* %12, %struct.ice_hw** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %14 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %13, i32 0, i32 0
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i32 0, i32 0
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.ice_vsi_ctx* @devm_kzalloc(i32* %16, i32 28, i32 %17)
  store %struct.ice_vsi_ctx* %18, %struct.ice_vsi_ctx** %6, align 8
  %19 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %20 = icmp ne %struct.ice_vsi_ctx* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %182

24:                                               ; preds = %1
  %25 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %25, i32 0, i32 1
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 3
  %29 = bitcast %struct.TYPE_11__* %26 to i8*
  %30 = bitcast %struct.TYPE_11__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 16, i1 false)
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %32 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %54 [
    i32 130, label %34
    i32 129, label %34
    i32 128, label %38
  ]

34:                                               ; preds = %24, %24
  %35 = load i32, i32* @ICE_AQ_VSI_TYPE_PF, align 4
  %36 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  br label %57

38:                                               ; preds = %24
  %39 = load i32, i32* @ICE_AQ_VSI_TYPE_VF, align 4
  %40 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %43 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %46 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %44, %49
  %51 = trunc i64 %50 to i32
  %52 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %24
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %182

57:                                               ; preds = %38, %34
  %58 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %59 = call i32 @ice_set_dflt_vsi_ctx(%struct.ice_vsi_ctx* %58)
  %60 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %61 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %60, i32 0, i32 6
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BRIDGE_MODE_VEB, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i32, i32* @ICE_AQ_VSI_SW_FLAG_ALLOW_LB, align 4
  %69 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %70 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %68
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %67, %57
  %75 = load i32, i32* @ICE_FLAG_RSS_ENA, align 4
  %76 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %77 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @test_bit(i32 %75, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %83 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %84 = call i32 @ice_set_rss_vsi_ctx(%struct.ice_vsi_ctx* %82, %struct.ice_vsi* %83)
  br label %85

85:                                               ; preds = %81, %74
  %86 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %87 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %86, i32 0, i32 5
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 2
  store i32 %90, i32* %93, align 4
  %94 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %95 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %96 = call i32 @ice_vsi_setup_q_map(%struct.ice_vsi* %94, %struct.ice_vsi_ctx* %95)
  %97 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %98 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp eq i32 %99, 128
  br i1 %100, label %101, label %126

101:                                              ; preds = %85
  %102 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %103 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %106 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %101
  %113 = load i32, i32* @ICE_AQ_VSI_PROP_SECURITY_VALID, align 4
  %114 = call i32 @cpu_to_le16(i32 %113)
  %115 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %116 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = or i32 %118, %114
  store i32 %119, i32* %117, align 4
  %120 = load i32, i32* @ICE_AQ_VSI_SEC_FLAG_ENA_MAC_ANTI_SPOOF, align 4
  %121 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %122 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %120
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %112, %101, %85
  %127 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %128 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp eq i32 %129, 129
  br i1 %130, label %131, label %145

131:                                              ; preds = %126
  %132 = load i32, i32* @ICE_AQ_VSI_SEC_FLAG_ALLOW_DEST_OVRD, align 4
  %133 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %134 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %132
  store i32 %137, i32* %135, align 4
  %138 = load i32, i32* @ICE_AQ_VSI_PROP_SECURITY_VALID, align 4
  %139 = call i32 @cpu_to_le16(i32 %138)
  %140 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %141 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %131, %126
  %146 = load %struct.ice_hw*, %struct.ice_hw** %5, align 8
  %147 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %148 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %151 = call i32 @ice_add_vsi(%struct.ice_hw* %146, i32 %149, %struct.ice_vsi_ctx* %150, i32* null)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %145
  %155 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %156 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %155, i32 0, i32 0
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %159)
  %161 = load i32, i32* @EIO, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %2, align 4
  br label %182

163:                                              ; preds = %145
  %164 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %165 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %164, i32 0, i32 3
  %166 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %167 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %166, i32 0, i32 1
  %168 = bitcast %struct.TYPE_11__* %165 to i8*
  %169 = bitcast %struct.TYPE_11__* %167 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 16, i1 false)
  %170 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %171 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %174 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %173, i32 0, i32 2
  store i32 %172, i32* %174, align 8
  %175 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %176 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %175, i32 0, i32 0
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %6, align 8
  %180 = call i32 @devm_kfree(i32* %178, %struct.ice_vsi_ctx* %179)
  %181 = load i32, i32* %7, align 4
  store i32 %181, i32* %2, align 4
  br label %182

182:                                              ; preds = %163, %154, %54, %21
  %183 = load i32, i32* %2, align 4
  ret i32 %183
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ice_set_dflt_vsi_ctx(%struct.ice_vsi_ctx*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @ice_set_rss_vsi_ctx(%struct.ice_vsi_ctx*, %struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_setup_q_map(%struct.ice_vsi*, %struct.ice_vsi_ctx*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ice_add_vsi(%struct.ice_hw*, i32, %struct.ice_vsi_ctx*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

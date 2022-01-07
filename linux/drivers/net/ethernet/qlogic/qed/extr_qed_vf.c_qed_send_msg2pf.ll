; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_send_msg2pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_send_msg2pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32, %union.vfpf_tlvs* }
%union.vfpf_tlvs = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ustorm_trigger_vf_zone = type { i32 }
%struct.ustorm_vf_zone = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@PXP_VF_BAR0_START_USDM_ZONE_B = common dso_local global i64 0, align 8
@QED_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"VF -> PF [%02x] message: [%08x, %08x] --> %p, %08x --> %p\0A\00", align 1
@PXP_CONCRETE_FID_PFID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"VF <-- PF Timeout [Type %d]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"PF response: %d [Type %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i64*, i32)* @qed_send_msg2pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_send_msg2pf(%struct.qed_hwfn* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.vfpf_tlvs*, align 8
  %8 = alloca %struct.ustorm_trigger_vf_zone, align 4
  %9 = alloca %struct.ustorm_vf_zone*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %15, align 8
  store %union.vfpf_tlvs* %16, %union.vfpf_tlvs** %7, align 8
  store i32 0, i32* %10, align 4
  store i32 100, i32* %11, align 4
  %17 = load i64, i64* @PXP_VF_BAR0_START_USDM_ZONE_B, align 8
  %18 = inttoptr i64 %17 to %struct.ustorm_vf_zone*
  store %struct.ustorm_vf_zone* %18, %struct.ustorm_vf_zone** %9, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %20 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %21 = call i32 @qed_dp_tlv_list(%struct.qed_hwfn* %19, %union.vfpf_tlvs* %20)
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 4
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %6, align 4
  %26 = call i32 @memset(%struct.ustorm_trigger_vf_zone* %8, i32 0, i32 4)
  %27 = getelementptr inbounds %struct.ustorm_trigger_vf_zone, %struct.ustorm_trigger_vf_zone* %8, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = load i32, i32* @QED_MSG_IOV, align 4
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @PXP_CONCRETE_FID_PFID, align 4
  %35 = call i32 @GET_FIELD(i32 %33, i32 %34)
  %36 = sext i32 %35 to i64
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @upper_32_bits(i32 %41)
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %43, i32 0, i32 0
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %50 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = bitcast %struct.ustorm_trigger_vf_zone* %8 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %55 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %54, i32 0, i32 0
  %56 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %28, i32 %29, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i64 %36, i32 %42, i32 %48, %struct.TYPE_8__* %51, i32 %53, i32* %55)
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %59 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = ptrtoint i32* %61 to i64
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %64 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @lower_32_bits(i32 %67)
  %69 = call i32 @REG_WR(%struct.qed_hwfn* %57, i64 %62, i32 %68)
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %71 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %72 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = ptrtoint i32* %74 to i64
  %76 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %77 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @upper_32_bits(i32 %80)
  %82 = call i32 @REG_WR(%struct.qed_hwfn* %70, i64 %75, i32 %81)
  %83 = call i32 (...) @wmb()
  %84 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %85 = load %struct.ustorm_vf_zone*, %struct.ustorm_vf_zone** %9, align 8
  %86 = getelementptr inbounds %struct.ustorm_vf_zone, %struct.ustorm_vf_zone* %85, i32 0, i32 0
  %87 = ptrtoint i32* %86 to i64
  %88 = bitcast %struct.ustorm_trigger_vf_zone* %8 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @REG_WR(%struct.qed_hwfn* %84, i64 %87, i32 %89)
  br label %91

91:                                               ; preds = %100, %3
  %92 = load i64*, i64** %5, align 8
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br label %98

98:                                               ; preds = %95, %91
  %99 = phi i1 [ false, %91 ], [ %97, %95 ]
  br i1 %99, label %100, label %104

100:                                              ; preds = %98
  %101 = call i32 @msleep(i32 25)
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %11, align 4
  br label %91

104:                                              ; preds = %98
  %105 = load i64*, i64** %5, align 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %104
  %109 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %110 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %111 = bitcast %union.vfpf_tlvs* %110 to %struct.TYPE_12__*
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sext i32 %114 to i64
  %116 = call i32 (%struct.qed_hwfn*, i8*, i64, ...) @DP_NOTICE(%struct.qed_hwfn* %109, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %115)
  %117 = load i32, i32* @EBUSY, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %10, align 4
  br label %151

119:                                              ; preds = %104
  %120 = load i64*, i64** %5, align 8
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %139

124:                                              ; preds = %119
  %125 = load i64*, i64** %5, align 8
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %139

129:                                              ; preds = %124
  %130 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %131 = load i64*, i64** %5, align 8
  %132 = load i64, i64* %131, align 8
  %133 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %134 = bitcast %union.vfpf_tlvs* %133 to %struct.TYPE_12__*
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.qed_hwfn*, i8*, i64, ...) @DP_NOTICE(%struct.qed_hwfn* %130, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %132, i32 %137)
  br label %150

139:                                              ; preds = %124, %119
  %140 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %141 = load i32, i32* @QED_MSG_IOV, align 4
  %142 = load i64*, i64** %5, align 8
  %143 = load i64, i64* %142, align 8
  %144 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %7, align 8
  %145 = bitcast %union.vfpf_tlvs* %144 to %struct.TYPE_12__*
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (%struct.qed_hwfn*, i32, i8*, i64, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %140, i32 %141, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %143, i32 %148)
  br label %150

150:                                              ; preds = %139, %129
  br label %151

151:                                              ; preds = %150, %108
  %152 = load i32, i32* %10, align 4
  ret i32 %152
}

declare dso_local i32 @qed_dp_tlv_list(%struct.qed_hwfn*, %union.vfpf_tlvs*) #1

declare dso_local i32 @memset(%struct.ustorm_trigger_vf_zone*, i32, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i64, i32, ...) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @REG_WR(%struct.qed_hwfn*, i64, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

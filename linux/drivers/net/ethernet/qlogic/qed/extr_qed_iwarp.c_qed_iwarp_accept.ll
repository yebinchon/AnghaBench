; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_accept_in = type { i64, i32, i32, %struct.TYPE_6__*, i32, i32, %struct.qed_iwarp_ep* }
%struct.TYPE_6__ = type { %struct.qed_iwarp_ep*, i32 }
%struct.qed_iwarp_ep = type { i64, i32, %struct.TYPE_5__*, %struct.TYPE_4__, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.qed_hwfn = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Ep Context receive in accept is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"QP(0x%x) EP(0x%x)\0A\00", align 1
@QED_IWARP_ORD_DEFAULT = common dso_local global i64 0, align 8
@QED_IWARP_IRD_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [54 x i8] c"QP(0x%x) EP(0x%x) ERROR: Invalid ord(0x%x)/ird(0x%x)\0A\00", align 1
@MPA_NEGOTIATION_TYPE_ENHANCED = common dso_local global i64 0, align 8
@MPA_RTR_TYPE_ZERO_READ = common dso_local global i32 0, align 4
@QED_IWARP_QP_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_accept(i8* %0, %struct.qed_iwarp_accept_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_iwarp_accept_in*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_iwarp_ep*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_iwarp_accept_in* %1, %struct.qed_iwarp_accept_in** %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %11, %struct.qed_hwfn** %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %13 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %12, i32 0, i32 6
  %14 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %13, align 8
  store %struct.qed_iwarp_ep* %14, %struct.qed_iwarp_ep** %7, align 8
  %15 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %16 = icmp ne %struct.qed_iwarp_ep* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %19 = call i32 @DP_ERR(%struct.qed_hwfn* %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %183

22:                                               ; preds = %2
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = load i32, i32* @QED_MSG_RDMA, align 4
  %25 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %26 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %31 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %35 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QED_IWARP_ORD_DEFAULT, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %22
  %40 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %41 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @QED_IWARP_IRD_DEFAULT, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %39, %22
  %46 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %47 = load i32, i32* @QED_MSG_RDMA, align 4
  %48 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %49 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %54 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %57 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %60 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %46, i32 %47, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55, i64 %58, i64 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %183

65:                                               ; preds = %39
  %66 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %67 = call i32 @qed_iwarp_prealloc_ep(%struct.qed_hwfn* %66, i32 0)
  %68 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %69 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %72 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  %73 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %74 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %73, i32 0, i32 3
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %77 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %76, i32 0, i32 4
  store %struct.TYPE_6__* %75, %struct.TYPE_6__** %77, align 8
  %78 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %79 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %80 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %79, i32 0, i32 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  store %struct.qed_iwarp_ep* %78, %struct.qed_iwarp_ep** %82, align 8
  %83 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %84 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @MPA_NEGOTIATION_TYPE_ENHANCED, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %120

88:                                               ; preds = %65
  %89 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %90 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %93 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %91, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %88
  %98 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %99 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %103 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %88
  %105 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %106 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MPA_RTR_TYPE_ZERO_READ, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %104
  %112 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %113 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %111
  %117 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %118 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %117, i32 0, i32 1
  store i32 1, i32* %118, align 8
  br label %119

119:                                              ; preds = %116, %111, %104
  br label %120

120:                                              ; preds = %119, %65
  %121 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %122 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %125 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  store i64 %123, i64* %126, align 8
  %127 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %128 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %132 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  store i64 %130, i64* %133, align 8
  %134 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %135 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %136 = call i32 @qed_iwarp_mpa_v2_set_private(%struct.qed_hwfn* %134, %struct.qed_iwarp_ep* %135, i32* %8)
  %137 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %138 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %143 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 3
  store i64 %141, i64* %144, align 8
  %145 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %146 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %8, align 4
  %149 = add nsw i32 %147, %148
  %150 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %151 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  %153 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %154 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %153, i32 0, i32 2
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = inttoptr i64 %157 to i32*
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %163 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %166 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @memcpy(i32* %161, i32 %164, i32 %167)
  %169 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %170 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %171 = call i32 @qed_iwarp_mpa_offload(%struct.qed_hwfn* %169, %struct.qed_iwarp_ep* %170)
  store i32 %171, i32* %9, align 4
  %172 = load i32, i32* %9, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %120
  %175 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %176 = load %struct.qed_iwarp_accept_in*, %struct.qed_iwarp_accept_in** %5, align 8
  %177 = getelementptr inbounds %struct.qed_iwarp_accept_in, %struct.qed_iwarp_accept_in* %176, i32 0, i32 3
  %178 = load %struct.TYPE_6__*, %struct.TYPE_6__** %177, align 8
  %179 = load i32, i32* @QED_IWARP_QP_STATE_ERROR, align 4
  %180 = call i32 @qed_iwarp_modify_qp(%struct.qed_hwfn* %175, %struct.TYPE_6__* %178, i32 %179, i32 1)
  br label %181

181:                                              ; preds = %174, %120
  %182 = load i32, i32* %9, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %45, %17
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @qed_iwarp_prealloc_ep(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_iwarp_mpa_v2_set_private(%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qed_iwarp_mpa_offload(%struct.qed_hwfn*, %struct.qed_iwarp_ep*) #1

declare dso_local i32 @qed_iwarp_modify_qp(%struct.qed_hwfn*, %struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

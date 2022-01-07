; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_reject.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_reject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_reject_in = type { i32, i32, i32, %struct.qed_iwarp_ep* }
%struct.qed_iwarp_ep = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32*, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.qed_hwfn = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Ep Context receive in reject is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"EP(0x%x)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_iwarp_reject(i8* %0, %struct.qed_iwarp_reject_in* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qed_iwarp_reject_in*, align 8
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_iwarp_ep*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.qed_iwarp_reject_in* %1, %struct.qed_iwarp_reject_in** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %10, %struct.qed_hwfn** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.qed_iwarp_reject_in*, %struct.qed_iwarp_reject_in** %5, align 8
  %12 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %11, i32 0, i32 3
  %13 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %12, align 8
  store %struct.qed_iwarp_ep* %13, %struct.qed_iwarp_ep** %7, align 8
  %14 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %15 = icmp ne %struct.qed_iwarp_ep* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %18 = call i32 @DP_ERR(%struct.qed_hwfn* %17, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %73

21:                                               ; preds = %2
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %23 = load i32, i32* @QED_MSG_RDMA, align 4
  %24 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %25 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %22, i32 %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %26)
  %28 = load %struct.qed_iwarp_reject_in*, %struct.qed_iwarp_reject_in** %5, align 8
  %29 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %32 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %34 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %36 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %37 = call i32 @qed_iwarp_mpa_v2_set_private(%struct.qed_hwfn* %35, %struct.qed_iwarp_ep* %36, i32* %8)
  %38 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %39 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %44 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  store i64 %42, i64* %45, align 8
  %46 = load %struct.qed_iwarp_reject_in*, %struct.qed_iwarp_reject_in** %5, align 8
  %47 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %48, %49
  %51 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %52 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  store i32 %50, i32* %53, align 8
  %54 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %55 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to i32*
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load %struct.qed_iwarp_reject_in*, %struct.qed_iwarp_reject_in** %5, align 8
  %64 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.qed_iwarp_reject_in*, %struct.qed_iwarp_reject_in** %5, align 8
  %67 = getelementptr inbounds %struct.qed_iwarp_reject_in, %struct.qed_iwarp_reject_in* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @memcpy(i32* %62, i32 %65, i32 %68)
  %70 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %71 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %7, align 8
  %72 = call i32 @qed_iwarp_mpa_offload(%struct.qed_hwfn* %70, %struct.qed_iwarp_ep* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %21, %16
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32) #1

declare dso_local i32 @qed_iwarp_mpa_v2_set_private(%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @qed_iwarp_mpa_offload(%struct.qed_hwfn*, %struct.qed_iwarp_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

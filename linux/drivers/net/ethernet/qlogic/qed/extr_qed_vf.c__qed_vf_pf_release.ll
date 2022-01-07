; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c__qed_vf_pf_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c__qed_vf_pf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov*, %struct.TYPE_8__*, i64 }
%struct.qed_vf_iov = type { %struct.TYPE_9__, i32, %struct.TYPE_10__*, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vfpf_first_tlv = type { i32 }

@CHANNEL_TLV_RELEASE = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32)* @_qed_vf_pf_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_qed_vf_pf_release(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_vf_iov*, align 8
  %7 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %8 = alloca %struct.vfpf_first_tlv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %12, align 8
  store %struct.qed_vf_iov* %13, %struct.qed_vf_iov** %6, align 8
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load i32, i32* @CHANNEL_TLV_RELEASE, align 4
  %16 = call %struct.vfpf_first_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %14, i32 %15, i32 4)
  store %struct.vfpf_first_tlv* %16, %struct.vfpf_first_tlv** %8, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %18 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %19 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %18, i32 0, i32 5
  %20 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %21 = call i32 @qed_add_tlv(%struct.qed_hwfn* %17, i32* %19, i32 %20, i32 4)
  %22 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %23 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %22, i32 0, i32 2
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %25, %struct.pfvf_def_resp_tlv** %7, align 8
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %27 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %28 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %26, i64* %29, i32 8)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %2
  %34 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %7, align 8
  %35 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %40, %33, %2
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %122

51:                                               ; preds = %43
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %53 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %55 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %54, i32 0, i32 4
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = icmp ne %struct.TYPE_10__* %56, null
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %60 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %66 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %65, i32 0, i32 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %69 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dma_free_coherent(i32* %64, i32 4, %struct.TYPE_10__* %67, i32 %70)
  br label %72

72:                                               ; preds = %58, %51
  %73 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %74 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %73, i32 0, i32 2
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = icmp ne %struct.TYPE_10__* %75, null
  br i1 %76, label %77, label %91

77:                                               ; preds = %72
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %85 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %84, i32 0, i32 2
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %88 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @dma_free_coherent(i32* %83, i32 4, %struct.TYPE_10__* %86, i32 %89)
  br label %91

91:                                               ; preds = %77, %72
  %92 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %93 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_10__*, %struct.TYPE_10__** %94, align 8
  %96 = icmp ne %struct.TYPE_10__* %95, null
  br i1 %96, label %97, label %114

97:                                               ; preds = %91
  store i32 4, i32* %9, align 4
  %98 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %99 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %98, i32 0, i32 1
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %106 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %6, align 8
  %110 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @dma_free_coherent(i32* %103, i32 %104, %struct.TYPE_10__* %108, i32 %112)
  br label %114

114:                                              ; preds = %97, %91
  %115 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %116 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %115, i32 0, i32 0
  %117 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %116, align 8
  %118 = call i32 @kfree(%struct.qed_vf_iov* %117)
  %119 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %120 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %119, i32 0, i32 0
  store %struct.qed_vf_iov* null, %struct.qed_vf_iov** %120, align 8
  %121 = load i32, i32* %10, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %114, %49
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.vfpf_first_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @kfree(%struct.qed_vf_iov*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

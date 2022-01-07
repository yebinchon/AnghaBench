; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_vport_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_vf.c_qed_vf_pf_vport_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_vf_iov* }
%struct.qed_vf_iov = type { %struct.TYPE_7__*, i32, %struct.qed_sb_info**, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.pfvf_def_resp_tlv }
%struct.pfvf_def_resp_tlv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.qed_sb_info = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vfpf_vport_start_tlv = type { i32, i32*, i8*, i8*, i8*, i8*, i32 }

@CHANNEL_TLV_VPORT_START = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_vf_pf_vport_start(%struct.qed_hwfn* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i8* %6) #0 {
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.qed_vf_iov*, align 8
  %16 = alloca %struct.vfpf_vport_start_tlv*, align 8
  %17 = alloca %struct.pfvf_def_resp_tlv*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.qed_sb_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %22, align 8
  store %struct.qed_vf_iov* %23, %struct.qed_vf_iov** %15, align 8
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %25 = load i32, i32* @CHANNEL_TLV_VPORT_START, align 4
  %26 = call %struct.vfpf_vport_start_tlv* @qed_vf_pf_prep(%struct.qed_hwfn* %24, i32 %25, i32 56)
  store %struct.vfpf_vport_start_tlv* %26, %struct.vfpf_vport_start_tlv** %16, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %29 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %32 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %31, i32 0, i32 5
  store i8* %30, i8** %32, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %35 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %34, i32 0, i32 4
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %38 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = load i8*, i8** %13, align 8
  %40 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %41 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %44 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  store i32 0, i32* %19, align 4
  br label %45

45:                                               ; preds = %78, %7
  %46 = load i32, i32* %19, align 4
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %48 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %47, i32 0, i32 0
  %49 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %48, align 8
  %50 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %46, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %45
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %57 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %56, i32 0, i32 0
  %58 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %57, align 8
  %59 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %58, i32 0, i32 2
  %60 = load %struct.qed_sb_info**, %struct.qed_sb_info*** %59, align 8
  %61 = load i32, i32* %19, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.qed_sb_info*, %struct.qed_sb_info** %60, i64 %62
  %64 = load %struct.qed_sb_info*, %struct.qed_sb_info** %63, align 8
  store %struct.qed_sb_info* %64, %struct.qed_sb_info** %20, align 8
  %65 = load %struct.qed_sb_info*, %struct.qed_sb_info** %20, align 8
  %66 = icmp ne %struct.qed_sb_info* %65, null
  br i1 %66, label %67, label %77

67:                                               ; preds = %55
  %68 = load %struct.qed_sb_info*, %struct.qed_sb_info** %20, align 8
  %69 = getelementptr inbounds %struct.qed_sb_info, %struct.qed_sb_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vfpf_vport_start_tlv*, %struct.vfpf_vport_start_tlv** %16, align 8
  %72 = getelementptr inbounds %struct.vfpf_vport_start_tlv, %struct.vfpf_vport_start_tlv* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %19, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %55
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %19, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %19, align 4
  br label %45

81:                                               ; preds = %45
  %82 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %83 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %15, align 8
  %84 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %83, i32 0, i32 1
  %85 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %86 = call i32 @qed_add_tlv(%struct.qed_hwfn* %82, i32* %84, i32 %85, i32 4)
  %87 = load %struct.qed_vf_iov*, %struct.qed_vf_iov** %15, align 8
  %88 = getelementptr inbounds %struct.qed_vf_iov, %struct.qed_vf_iov* %87, i32 0, i32 0
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  store %struct.pfvf_def_resp_tlv* %90, %struct.pfvf_def_resp_tlv** %17, align 8
  %91 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %92 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %17, align 8
  %93 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = call i32 @qed_send_msg2pf(%struct.qed_hwfn* %91, i64* %94, i32 8)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %18, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %81
  br label %110

99:                                               ; preds = %81
  %100 = load %struct.pfvf_def_resp_tlv*, %struct.pfvf_def_resp_tlv** %17, align 8
  %101 = getelementptr inbounds %struct.pfvf_def_resp_tlv, %struct.pfvf_def_resp_tlv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %18, align 4
  br label %110

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %106, %98
  %111 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %112 = load i32, i32* %18, align 4
  %113 = call i32 @qed_vf_pf_req_end(%struct.qed_hwfn* %111, i32 %112)
  %114 = load i32, i32* %18, align 4
  ret i32 %114
}

declare dso_local %struct.vfpf_vport_start_tlv* @qed_vf_pf_prep(%struct.qed_hwfn*, i32, i32) #1

declare dso_local i32 @qed_add_tlv(%struct.qed_hwfn*, i32*, i32, i32) #1

declare dso_local i32 @qed_send_msg2pf(%struct.qed_hwfn*, i64*, i32) #1

declare dso_local i32 @qed_vf_pf_req_end(%struct.qed_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

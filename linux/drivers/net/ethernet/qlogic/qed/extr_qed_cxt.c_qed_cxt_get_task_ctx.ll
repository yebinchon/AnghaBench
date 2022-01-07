; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_get_task_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_get_task_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__, %struct.qed_cxt_mngr* }
%struct.TYPE_4__ = type { i32 }
%struct.qed_cxt_mngr = type { i64*, i64, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.qed_ilt_client_cfg* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.qed_tid_seg* }
%struct.qed_tid_seg = type { i64, i32 }
%struct.qed_ilt_client_cfg = type { %struct.qed_ilt_cli_blk*, i32 }
%struct.qed_ilt_cli_blk = type { i64, i64, i32 }

@PROTOCOLID_FCOE = common dso_local global i64 0, align 8
@QED_CXT_FCOE_TID_SEG = common dso_local global i64 0, align 8
@PROTOCOLID_ISCSI = common dso_local global i64 0, align 8
@QED_CXT_ISCSI_TID_SEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@QED_CTX_WORKING_MEM = common dso_local global i64 0, align 8
@QED_CTX_FL_MEM = common dso_local global i64 0, align 8
@PF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_get_task_ctx(%struct.qed_hwfn* %0, i64 %1, i64 %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.qed_cxt_mngr*, align 8
  %11 = alloca %struct.qed_ilt_client_cfg*, align 8
  %12 = alloca %struct.qed_tid_seg*, align 8
  %13 = alloca %struct.qed_ilt_cli_blk*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i8** %3, i8*** %9, align 8
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %21 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %20, i32 0, i32 1
  %22 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %21, align 8
  store %struct.qed_cxt_mngr* %22, %struct.qed_cxt_mngr** %10, align 8
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %24 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %33 [
    i32 129, label %27
    i32 128, label %30
  ]

27:                                               ; preds = %4
  %28 = load i64, i64* @PROTOCOLID_FCOE, align 8
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* @QED_CXT_FCOE_TID_SEG, align 8
  store i64 %29, i64* %19, align 8
  br label %36

30:                                               ; preds = %4
  %31 = load i64, i64* @PROTOCOLID_ISCSI, align 8
  store i64 %31, i64* %18, align 8
  %32 = load i64, i64* @QED_CXT_ISCSI_TID_SEG, align 8
  store i64 %32, i64* %19, align 8
  br label %36

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %5, align 4
  br label %150

36:                                               ; preds = %30, %27
  %37 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %38 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %37, i32 0, i32 4
  %39 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %38, align 8
  %40 = load i64, i64* @ILT_CLI_CDUT, align 8
  %41 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %39, i64 %40
  store %struct.qed_ilt_client_cfg* %41, %struct.qed_ilt_client_cfg** %11, align 8
  %42 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %11, align 8
  %43 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %150

49:                                               ; preds = %36
  %50 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %51 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %50, i32 0, i32 3
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i64, i64* %18, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %55, align 8
  %57 = load i64, i64* %19, align 8
  %58 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %56, i64 %57
  store %struct.qed_tid_seg* %58, %struct.qed_tid_seg** %12, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* @QED_CTX_WORKING_MEM, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %49
  %63 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %11, align 8
  %64 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %63, i32 0, i32 0
  %65 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %64, align 8
  %66 = load i64, i64* %19, align 8
  %67 = call i64 @CDUT_SEG_BLK(i64 %66)
  %68 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %65, i64 %67
  store %struct.qed_ilt_cli_blk* %68, %struct.qed_ilt_cli_blk** %13, align 8
  br label %93

69:                                               ; preds = %49
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @QED_CTX_FL_MEM, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %12, align 8
  %75 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %150

81:                                               ; preds = %73
  %82 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %11, align 8
  %83 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %82, i32 0, i32 0
  %84 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %83, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i32, i32* @PF, align 4
  %87 = call i64 @CDUT_FL_SEG_BLK(i64 %85, i32 %86)
  %88 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %84, i64 %87
  store %struct.qed_ilt_cli_blk* %88, %struct.qed_ilt_cli_blk** %13, align 8
  br label %92

89:                                               ; preds = %69
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %150

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %62
  %94 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %95 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %98 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @DIV_ROUND_UP(i32 %96, i64 %99)
  store i64 %100, i64* %17, align 8
  %101 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %102 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %101, i32 0, i32 0
  %103 = load i64*, i64** %102, align 8
  %104 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %12, align 8
  %105 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %15, align 8
  %109 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %110 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %15, align 8
  %113 = udiv i64 %111, %112
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* %17, align 8
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* %14, align 8
  %117 = udiv i64 %115, %116
  %118 = icmp ult i64 %114, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %93
  %120 = load i32, i32* @EINVAL, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %5, align 4
  br label %150

122:                                              ; preds = %93
  %123 = load i64, i64* %7, align 8
  %124 = load i64, i64* %14, align 8
  %125 = udiv i64 %123, %124
  %126 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %127 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %125, %128
  %130 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %131 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = sub i64 %129, %132
  store i64 %133, i64* %16, align 8
  %134 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %10, align 8
  %135 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %134, i32 0, i32 2
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = load i64, i64* %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i64*
  %142 = load i64, i64* %7, align 8
  %143 = load i64, i64* %14, align 8
  %144 = urem i64 %142, %143
  %145 = load i64, i64* %15, align 8
  %146 = mul i64 %144, %145
  %147 = getelementptr inbounds i64, i64* %141, i64 %146
  %148 = bitcast i64* %147 to i8*
  %149 = load i8**, i8*** %9, align 8
  store i8* %148, i8** %149, align 8
  store i32 0, i32* %5, align 4
  br label %150

150:                                              ; preds = %122, %119, %89, %78, %46, %33
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i64 @CDUT_SEG_BLK(i64) #1

declare dso_local i64 @CDUT_FL_SEG_BLK(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

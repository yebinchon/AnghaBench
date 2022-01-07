; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_get_tid_mem_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_get_tid_mem_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr*, %struct.TYPE_5__ }
%struct.qed_cxt_mngr = type { i64, i32*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.qed_ilt_client_cfg* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.qed_tid_seg* }
%struct.qed_tid_seg = type { i64, i32 }
%struct.qed_ilt_client_cfg = type { %struct.TYPE_8__, %struct.qed_ilt_cli_blk*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qed_ilt_cli_blk = type { i32, i64, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qed_tid_mem = type { i32, i32, i64, i32* }

@PROTOCOLID_FCOE = common dso_local global i64 0, align 8
@QED_CXT_FCOE_TID_SEG = common dso_local global i64 0, align 8
@PROTOCOLID_ISCSI = common dso_local global i64 0, align 8
@QED_CXT_ISCSI_TID_SEG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ILT_CLI_CDUT = common dso_local global i64 0, align 8
@PF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_cxt_get_tid_mem_info(%struct.qed_hwfn* %0, %struct.qed_tid_mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_tid_mem*, align 8
  %6 = alloca %struct.qed_cxt_mngr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qed_ilt_client_cfg*, align 8
  %13 = alloca %struct.qed_ilt_cli_blk*, align 8
  %14 = alloca %struct.qed_tid_seg*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_tid_mem* %1, %struct.qed_tid_mem** %5, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %16, align 8
  store %struct.qed_cxt_mngr* %17, %struct.qed_cxt_mngr** %6, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %28 [
    i32 129, label %22
    i32 128, label %25
  ]

22:                                               ; preds = %2
  %23 = load i64, i64* @PROTOCOLID_FCOE, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @QED_CXT_FCOE_TID_SEG, align 8
  store i64 %24, i64* %8, align 8
  br label %31

25:                                               ; preds = %2
  %26 = load i64, i64* @PROTOCOLID_ISCSI, align 8
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* @QED_CXT_ISCSI_TID_SEG, align 8
  store i64 %27, i64* %8, align 8
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %139

31:                                               ; preds = %25, %22
  %32 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %33 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %32, i32 0, i32 4
  %34 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %33, align 8
  %35 = load i64, i64* @ILT_CLI_CDUT, align 8
  %36 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %34, i64 %35
  store %struct.qed_ilt_client_cfg* %36, %struct.qed_ilt_client_cfg** %12, align 8
  %37 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %12, align 8
  %38 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %31
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %139

44:                                               ; preds = %31
  %45 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %46 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %45, i32 0, i32 3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %51, i64 %52
  store %struct.qed_tid_seg* %53, %struct.qed_tid_seg** %14, align 8
  %54 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %14, align 8
  %55 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %44
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %139

61:                                               ; preds = %44
  %62 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %12, align 8
  %63 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %62, i32 0, i32 1
  %64 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i32, i32* @PF, align 4
  %67 = call i64 @CDUT_FL_SEG_BLK(i64 %65, i32 %66)
  %68 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %64, i64 %67
  store %struct.qed_ilt_cli_blk* %68, %struct.qed_ilt_cli_blk** %13, align 8
  %69 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %70 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %73 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @DIV_ROUND_UP(i32 %71, i32 %74)
  store i64 %75, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %76

76:                                               ; preds = %104, %61
  %77 = load i64, i64* %10, align 8
  %78 = load i64, i64* %9, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %107

80:                                               ; preds = %76
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %83 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %81, %84
  %86 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %87 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %86, i32 0, i32 0
  %88 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %87, align 8
  %89 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = sub i64 %85, %90
  store i64 %91, i64* %11, align 8
  %92 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %93 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %92, i32 0, i32 2
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %5, align 8
  %100 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %10, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32 %98, i32* %103, align 4
  br label %104

104:                                              ; preds = %80
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %76

107:                                              ; preds = %76
  %108 = load %struct.qed_ilt_client_cfg*, %struct.qed_ilt_client_cfg** %12, align 8
  %109 = getelementptr inbounds %struct.qed_ilt_client_cfg, %struct.qed_ilt_client_cfg* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i64 @ILT_PAGE_IN_BYTES(i32 %111)
  %113 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %114 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = sub nsw i64 %112, %116
  %118 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %5, align 8
  %119 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  %120 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %6, align 8
  %121 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.qed_tid_seg*, %struct.qed_tid_seg** %14, align 8
  %124 = getelementptr inbounds %struct.qed_tid_seg, %struct.qed_tid_seg* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds i32, i32* %122, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %5, align 8
  %129 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.qed_ilt_cli_blk*, %struct.qed_ilt_cli_blk** %13, align 8
  %131 = getelementptr inbounds %struct.qed_ilt_cli_blk, %struct.qed_ilt_cli_blk* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %5, align 8
  %134 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = sdiv i32 %132, %135
  %137 = load %struct.qed_tid_mem*, %struct.qed_tid_mem** %5, align 8
  %138 = getelementptr inbounds %struct.qed_tid_mem, %struct.qed_tid_mem* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %107, %58, %41, %28
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i64 @CDUT_FL_SEG_BLK(i64, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i64 @ILT_PAGE_IN_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_idle_chk_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_idle_chk_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32* }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }
%struct.dbg_idle_chk_cond_hdr = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dbg_idle_chk_rule = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"dump-type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"idle-chk\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"idle_chk\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"num_rules\00", align 1
@s_dbg_arrays = common dso_local global %struct.TYPE_4__* null, align 8
@BIN_BUF_DBG_IDLE_CHK_RULES = common dso_local global i64 0, align 8
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@IDLE_CHK_RULE_SIZE_DWORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32)* @qed_idle_chk_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_idle_chk_dump(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.dbg_idle_chk_cond_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @qed_dump_common_global_params(%struct.qed_hwfn* %18, %struct.qed_ptt* %19, i32* %23, i32 %24, i32 1)
  %26 = load i32, i32* %10, align 4
  %27 = add nsw i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @qed_dump_str_param(i32* %31, i32 %32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @qed_dump_section_hdr(i32* %39, i32 %40, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 1)
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %9, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @qed_dump_num_param(i32* %48, i32 %49, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 0)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %122, %4
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dbg_arrays, align 8
  %56 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_RULES, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %54, %59
  br i1 %60, label %61, label %128

61:                                               ; preds = %53
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dbg_arrays, align 8
  %63 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_RULES, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = bitcast i32* %70 to %struct.dbg_idle_chk_cond_hdr*
  store %struct.dbg_idle_chk_cond_hdr* %71, %struct.dbg_idle_chk_cond_hdr** %13, align 8
  store i32 1, i32* %15, align 4
  %72 = load %struct.dbg_idle_chk_cond_hdr*, %struct.dbg_idle_chk_cond_hdr** %13, align 8
  %73 = getelementptr inbounds %struct.dbg_idle_chk_cond_hdr, %struct.dbg_idle_chk_cond_hdr* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %77 = call i64 @GET_FIELD(i32 %75, i32 %76)
  %78 = icmp sgt i64 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* %14, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %61
  %83 = load %struct.dbg_idle_chk_cond_hdr*, %struct.dbg_idle_chk_cond_hdr** %13, align 8
  %84 = getelementptr inbounds %struct.dbg_idle_chk_cond_hdr, %struct.dbg_idle_chk_cond_hdr* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %88 = call i64 @GET_FIELD(i32 %86, i32 %87)
  store i64 %88, i64* %17, align 8
  %89 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %90 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %89, i64* %17)
  store i32 %90, i32* %15, align 4
  br label %91

91:                                               ; preds = %82, %61
  %92 = load i32, i32* %15, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %122

94:                                               ; preds = %91
  %95 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %96 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dbg_arrays, align 8
  %103 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_RULES, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = bitcast i32* %109 to %struct.dbg_idle_chk_rule*
  %111 = load %struct.dbg_idle_chk_cond_hdr*, %struct.dbg_idle_chk_cond_hdr** %13, align 8
  %112 = getelementptr inbounds %struct.dbg_idle_chk_cond_hdr, %struct.dbg_idle_chk_cond_hdr* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IDLE_CHK_RULE_SIZE_DWORDS, align 4
  %115 = sdiv i32 %113, %114
  %116 = call i32 @qed_idle_chk_dump_rule_entries(%struct.qed_hwfn* %95, %struct.qed_ptt* %96, i32* %100, i32 %101, %struct.dbg_idle_chk_rule* %110, i32 %115, i32* %16)
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %12, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %94, %91
  %123 = load %struct.dbg_idle_chk_cond_hdr*, %struct.dbg_idle_chk_cond_hdr** %13, align 8
  %124 = getelementptr inbounds %struct.dbg_idle_chk_cond_hdr, %struct.dbg_idle_chk_cond_hdr* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %53

128:                                              ; preds = %53
  %129 = load i32, i32* %8, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i32*, i32** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %8, align 4
  %137 = load i32, i32* %12, align 4
  %138 = call i32 @qed_dump_num_param(i32* %135, i32 %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %137)
  br label %139

139:                                              ; preds = %131, %128
  %140 = load i32*, i32** %7, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @qed_dump_last_section(i32* %140, i32 %141, i32 %142)
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  ret i32 %146
}

declare dso_local i32 @qed_dump_common_global_params(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32) #1

declare dso_local i32 @qed_dump_str_param(i32*, i32, i8*, i8*) #1

declare dso_local i32 @qed_dump_section_hdr(i32*, i32, i8*, i32) #1

declare dso_local i32 @qed_dump_num_param(i32*, i32, i8*, i32) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i32 @qed_is_mode_match(%struct.qed_hwfn*, i64*) #1

declare dso_local i32 @qed_idle_chk_dump_rule_entries(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, %struct.dbg_idle_chk_rule*, i32, i32*) #1

declare dso_local i32 @qed_dump_last_section(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_attn_update_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_attn_update_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_sb_attn_info = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QED_SB_ATT_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_sb_attn_info*)* @qed_attn_update_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_attn_update_idx(%struct.qed_hwfn* %0, %struct.qed_sb_attn_info* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_sb_attn_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_sb_attn_info* %1, %struct.qed_sb_attn_info** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %8 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @le16_to_cpu(i32 %11)
  store i64 %12, i64* %6, align 8
  %13 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %14 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %4, align 8
  %21 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* @QED_SB_ATT_IDX, align 8
  store i64 %22, i64* %5, align 8
  br label %23

23:                                               ; preds = %18, %2
  %24 = load i64, i64* %5, align 8
  ret i64 %24
}

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

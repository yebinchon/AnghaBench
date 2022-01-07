; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sb_attn_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_int.c_qed_int_sb_attn_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_sb_attn_info*, %struct.TYPE_4__* }
%struct.qed_sb_attn_info = type { i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_int_sb_attn_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_int_sb_attn_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_sb_attn_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 0
  %6 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %5, align 8
  store %struct.qed_sb_attn_info* %6, %struct.qed_sb_attn_info** %3, align 8
  %7 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %3, align 8
  %8 = icmp ne %struct.qed_sb_attn_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %3, align 8
  %12 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %10
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %17 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %23 = call i32 @SB_ATTN_ALIGNED_SIZE(%struct.qed_hwfn* %22)
  %24 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %3, align 8
  %25 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %3, align 8
  %28 = getelementptr inbounds %struct.qed_sb_attn_info, %struct.qed_sb_attn_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_free_coherent(i32* %21, i32 %23, i64 %26, i32 %29)
  br label %31

31:                                               ; preds = %15, %10
  %32 = load %struct.qed_sb_attn_info*, %struct.qed_sb_attn_info** %3, align 8
  %33 = call i32 @kfree(%struct.qed_sb_attn_info* %32)
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %35 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %34, i32 0, i32 0
  store %struct.qed_sb_attn_info* null, %struct.qed_sb_attn_info** %35, align 8
  br label %36

36:                                               ; preds = %31, %9
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @SB_ATTN_ALIGNED_SIZE(%struct.qed_hwfn*) #1

declare dso_local i32 @kfree(%struct.qed_sb_attn_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

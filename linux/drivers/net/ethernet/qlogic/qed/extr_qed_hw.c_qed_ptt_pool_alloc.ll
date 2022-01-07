; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_ptt_pool_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_hw.c_qed_ptt_pool_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_ptt_pool*, i32 }
%struct.qed_ptt_pool = type { i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PXP_EXTERNAL_BAR_PF_WINDOW_NUM = common dso_local global i32 0, align 4
@QED_BAR_INVALID_OFFSET = common dso_local global i32 0, align 4
@RESERVED_PTT_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_ptt_pool_alloc(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt_pool*, align 8
  %5 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.qed_ptt_pool* @kmalloc(i32 16, i32 %6)
  store %struct.qed_ptt_pool* %7, %struct.qed_ptt_pool** %4, align 8
  %8 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %9 = icmp ne %struct.qed_ptt_pool* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %83

13:                                               ; preds = %1
  %14 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %15 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %73, %13
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PXP_EXTERNAL_BAR_PF_WINDOW_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %24 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i32 %22, i32* %29, align 8
  %30 = load i32, i32* @QED_BAR_INVALID_OFFSET, align 4
  %31 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %32 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %31, i32 0, i32 2
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %30, i32* %38, align 8
  %39 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %40 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %39, i32 0, i32 2
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 0, i64* %47, align 8
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %52 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %51, i32 0, i32 2
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %50, i32* %57, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @RESERVED_PTT_MAX, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %21
  %62 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %63 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %70 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %69, i32 0, i32 1
  %71 = call i32 @list_add(i32* %68, i32* %70)
  br label %72

72:                                               ; preds = %61, %21
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %17

76:                                               ; preds = %17
  %77 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %78 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %79 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %78, i32 0, i32 0
  store %struct.qed_ptt_pool* %77, %struct.qed_ptt_pool** %79, align 8
  %80 = load %struct.qed_ptt_pool*, %struct.qed_ptt_pool** %4, align 8
  %81 = getelementptr inbounds %struct.qed_ptt_pool, %struct.qed_ptt_pool* %80, i32 0, i32 0
  %82 = call i32 @spin_lock_init(i32* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %10
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.qed_ptt_pool* @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

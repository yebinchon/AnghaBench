; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c___qed_spq_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_spq.c___qed_spq_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.qed_spq_comp_done = type { i32, i32 }

@SPQ_BLOCK_SLEEP_MAX_ITER = common dso_local global i32 0, align 4
@SPQ_BLOCK_DELAY_MAX_ITER = common dso_local global i32 0, align 4
@SPQ_BLOCK_SLEEP_MS = common dso_local global i32 0, align 4
@SPQ_BLOCK_DELAY_US = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_spq_entry*, i32*, i32)* @__qed_spq_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qed_spq_block(%struct.qed_hwfn* %0, %struct.qed_spq_entry* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_spq_entry*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_spq_comp_done*, align 8
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %6, align 8
  store %struct.qed_spq_entry* %1, %struct.qed_spq_entry** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.qed_spq_entry*, %struct.qed_spq_entry** %7, align 8
  %13 = getelementptr inbounds %struct.qed_spq_entry, %struct.qed_spq_entry* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.qed_spq_comp_done*
  store %struct.qed_spq_comp_done* %16, %struct.qed_spq_comp_done** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @SPQ_BLOCK_SLEEP_MAX_ITER, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @SPQ_BLOCK_DELAY_MAX_ITER, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %11, align 4
  br label %25

25:                                               ; preds = %52, %23
  %26 = load i32, i32* %11, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %11, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %25
  %30 = load %struct.qed_spq_comp_done*, %struct.qed_spq_comp_done** %10, align 8
  %31 = getelementptr inbounds %struct.qed_spq_comp_done, %struct.qed_spq_comp_done* %30, i32 0, i32 1
  %32 = call i32 @smp_load_acquire(i32* %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.qed_spq_comp_done*, %struct.qed_spq_comp_done** %10, align 8
  %39 = getelementptr inbounds %struct.qed_spq_comp_done, %struct.qed_spq_comp_done* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %37, %34
  store i32 0, i32* %5, align 4
  br label %56

43:                                               ; preds = %29
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @SPQ_BLOCK_SLEEP_MS, align 4
  %48 = call i32 @msleep(i32 %47)
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @SPQ_BLOCK_DELAY_US, align 4
  %51 = call i32 @udelay(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  br label %25

53:                                               ; preds = %25
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %53, %42
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @smp_load_acquire(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

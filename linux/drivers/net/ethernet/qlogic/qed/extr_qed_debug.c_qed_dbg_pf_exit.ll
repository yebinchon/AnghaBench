; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_pf_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_pf_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.qed_dbg_feature* }
%struct.qed_dbg_feature = type { i32* }

@DBG_FEATURE_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_dbg_pf_exit(%struct.qed_dev* %0) #0 {
  %2 = alloca %struct.qed_dev*, align 8
  %3 = alloca %struct.qed_dbg_feature*, align 8
  %4 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %2, align 8
  store %struct.qed_dbg_feature* null, %struct.qed_dbg_feature** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %29, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DBG_FEATURE_NUM, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %32

9:                                                ; preds = %5
  %10 = load %struct.qed_dev*, %struct.qed_dev** %2, align 8
  %11 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %13, i64 %15
  store %struct.qed_dbg_feature* %16, %struct.qed_dbg_feature** %3, align 8
  %17 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %3, align 8
  %18 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %9
  %22 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %3, align 8
  %23 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @vfree(i32* %24)
  %26 = load %struct.qed_dbg_feature*, %struct.qed_dbg_feature** %3, align 8
  %27 = getelementptr inbounds %struct.qed_dbg_feature, %struct.qed_dbg_feature* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %9
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %5

32:                                               ; preds = %5
  ret void
}

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

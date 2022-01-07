; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_is_mode_match.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_is_mode_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32* }

@s_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_MODE_TREE = common dso_local global i64 0, align 8
@MAX_INIT_MODE_OPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32*)* @qed_is_mode_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_is_mode_match(%struct.qed_hwfn* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.dbg_tools_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %6, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %14 = load i64, i64* @BIN_BUF_DBG_MODE_TREE, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i32, i32* %18, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  switch i32 %25, label %62 [
    i32 129, label %26
    i32 128, label %33
    i32 130, label %33
  ]

26:                                               ; preds = %2
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %2, %2
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %34, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @qed_is_mode_match(%struct.qed_hwfn* %37, i32* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %42, label %51

42:                                               ; preds = %33
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br label %48

48:                                               ; preds = %45, %42
  %49 = phi i1 [ true, %42 ], [ %47, %45 ]
  %50 = zext i1 %49 to i32
  br label %60

51:                                               ; preds = %33
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br label %57

57:                                               ; preds = %54, %51
  %58 = phi i1 [ false, %51 ], [ %56, %54 ]
  %59 = zext i1 %58 to i32
  br label %60

60:                                               ; preds = %57, %48
  %61 = phi i32 [ %50, %48 ], [ %59, %57 ]
  store i32 %61, i32* %3, align 4
  br label %74

62:                                               ; preds = %2
  %63 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %6, align 8
  %64 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @MAX_INIT_MODE_OPS, align 4
  %68 = sub nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = icmp sgt i32 %71, 0
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %62, %60, %26
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

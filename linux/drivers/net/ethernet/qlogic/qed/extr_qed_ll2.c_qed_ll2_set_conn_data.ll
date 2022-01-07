; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_set_conn_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_set_conn_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.qed_hwfn* }
%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_acquire_data = type { %struct.TYPE_3__, %struct.TYPE_4__*, i32* }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.qed_ll2_params = type { i32, i32, i32 }

@QED_LL2_RX_SIZE = common dso_local global i32 0, align 4
@QED_LL2_TX_SIZE = common dso_local global i32 0, align 4
@ll2_cbs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PKT_LB_TC = common dso_local global i64 0, align 8
@QED_LL2_TX_DEST_LB = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ll2_acquire_data*, %struct.qed_ll2_params*, i32, i32*, i32)* @qed_ll2_set_conn_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2_set_conn_data(%struct.qed_hwfn* %0, %struct.qed_ll2_acquire_data* %1, %struct.qed_ll2_params* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.qed_hwfn*, align 8
  %8 = alloca %struct.qed_ll2_acquire_data*, align 8
  %9 = alloca %struct.qed_ll2_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %7, align 8
  store %struct.qed_ll2_acquire_data* %1, %struct.qed_ll2_acquire_data** %8, align 8
  store %struct.qed_ll2_params* %2, %struct.qed_ll2_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %14 = call i32 @memset(%struct.qed_ll2_acquire_data* %13, i32 0, i32 56)
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %17 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %9, align 8
  %20 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %23 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 7
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @QED_LL2_RX_SIZE, align 4
  %26 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %27 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 6
  store i32 %25, i32* %28, align 4
  %29 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %9, align 8
  %30 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %33 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 8
  %35 = load %struct.qed_ll2_params*, %struct.qed_ll2_params** %9, align 8
  %36 = getelementptr inbounds %struct.qed_ll2_params, %struct.qed_ll2_params* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %39 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 4
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @QED_LL2_TX_SIZE, align 4
  %42 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %43 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %47 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %46, i32 0, i32 2
  store i32* %45, i32** %47, align 8
  %48 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %49 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %48, i32 0, i32 1
  store %struct.TYPE_4__* @ll2_cbs, %struct.TYPE_4__** %49, align 8
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %7, align 8
  store %struct.qed_hwfn* %50, %struct.qed_hwfn** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ll2_cbs, i32 0, i32 0), align 8
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %6
  %54 = load i64, i64* @PKT_LB_TC, align 8
  %55 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %56 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 2
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* @QED_LL2_TX_DEST_LB, align 4
  %59 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %60 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  br label %70

62:                                               ; preds = %6
  %63 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %64 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32, i32* @QED_LL2_TX_DEST_NW, align 4
  %67 = load %struct.qed_ll2_acquire_data*, %struct.qed_ll2_acquire_data** %8, align 8
  %68 = getelementptr inbounds %struct.qed_ll2_acquire_data, %struct.qed_ll2_acquire_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %53
  ret void
}

declare dso_local i32 @memset(%struct.qed_ll2_acquire_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

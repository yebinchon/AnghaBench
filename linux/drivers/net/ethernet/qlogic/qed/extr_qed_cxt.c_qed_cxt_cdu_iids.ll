; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_cdu_iids.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cxt_cdu_iids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_cxt_mngr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.qed_cdu_iids = type { i32, i32 }

@MAX_CONN_TYPES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_cxt_mngr*, %struct.qed_cdu_iids*)* @qed_cxt_cdu_iids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cxt_cdu_iids(%struct.qed_cxt_mngr* %0, %struct.qed_cdu_iids* %1) #0 {
  %3 = alloca %struct.qed_cxt_mngr*, align 8
  %4 = alloca %struct.qed_cdu_iids*, align 8
  %5 = alloca i64, align 8
  store %struct.qed_cxt_mngr* %0, %struct.qed_cxt_mngr** %3, align 8
  store %struct.qed_cdu_iids* %1, %struct.qed_cdu_iids** %4, align 8
  store i64 0, i64* %5, align 8
  br label %6

6:                                                ; preds = %37, %2
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAX_CONN_TYPES, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %40

10:                                               ; preds = %6
  %11 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %12 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.qed_cdu_iids*, %struct.qed_cdu_iids** %4, align 8
  %19 = getelementptr inbounds %struct.qed_cdu_iids, %struct.qed_cdu_iids* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %17
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %19, align 4
  %24 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %25 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.qed_cdu_iids*, %struct.qed_cdu_iids** %4, align 8
  %32 = getelementptr inbounds %struct.qed_cdu_iids, %struct.qed_cdu_iids* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %30
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  br label %37

37:                                               ; preds = %10
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %5, align 8
  br label %6

40:                                               ; preds = %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

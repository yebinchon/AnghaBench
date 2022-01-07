; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_save_history_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ooo.c_qed_ooo_save_history_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ooo_info = type { %struct.qed_ooo_history }
%struct.qed_ooo_history = type { i64, i64, %struct.ooo_opaque* }
%struct.ooo_opaque = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_ooo_save_history_entry(%struct.qed_hwfn* %0, %struct.qed_ooo_info* %1, %struct.ooo_opaque* %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ooo_info*, align 8
  %6 = alloca %struct.ooo_opaque*, align 8
  %7 = alloca %struct.qed_ooo_history*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ooo_info* %1, %struct.qed_ooo_info** %5, align 8
  store %struct.ooo_opaque* %2, %struct.ooo_opaque** %6, align 8
  %8 = load %struct.qed_ooo_info*, %struct.qed_ooo_info** %5, align 8
  %9 = getelementptr inbounds %struct.qed_ooo_info, %struct.qed_ooo_info* %8, i32 0, i32 0
  store %struct.qed_ooo_history* %9, %struct.qed_ooo_history** %7, align 8
  %10 = load %struct.qed_ooo_history*, %struct.qed_ooo_history** %7, align 8
  %11 = getelementptr inbounds %struct.qed_ooo_history, %struct.qed_ooo_history* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.qed_ooo_history*, %struct.qed_ooo_history** %7, align 8
  %14 = getelementptr inbounds %struct.qed_ooo_history, %struct.qed_ooo_history* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.qed_ooo_history*, %struct.qed_ooo_history** %7, align 8
  %19 = getelementptr inbounds %struct.qed_ooo_history, %struct.qed_ooo_history* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.qed_ooo_history*, %struct.qed_ooo_history** %7, align 8
  %22 = getelementptr inbounds %struct.qed_ooo_history, %struct.qed_ooo_history* %21, i32 0, i32 2
  %23 = load %struct.ooo_opaque*, %struct.ooo_opaque** %22, align 8
  %24 = load %struct.qed_ooo_history*, %struct.qed_ooo_history** %7, align 8
  %25 = getelementptr inbounds %struct.qed_ooo_history, %struct.qed_ooo_history* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.ooo_opaque, %struct.ooo_opaque* %23, i64 %26
  %28 = load %struct.ooo_opaque*, %struct.ooo_opaque** %6, align 8
  %29 = bitcast %struct.ooo_opaque* %27 to i8*
  %30 = bitcast %struct.ooo_opaque* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load %struct.qed_ooo_history*, %struct.qed_ooo_history** %7, align 8
  %32 = getelementptr inbounds %struct.qed_ooo_history, %struct.qed_ooo_history* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %32, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

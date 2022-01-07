; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cid_map_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_cxt.c_qed_cid_map_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_cxt_mngr* }
%struct.qed_cxt_mngr = type { %struct.TYPE_4__**, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.TYPE_3__ = type { i64, i64, i32 }

@MAX_CONN_TYPES = common dso_local global i64 0, align 8
@MAX_NUM_VFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_cid_map_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_cid_map_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_cxt_mngr*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %6 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %7 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %6, i32 0, i32 0
  %8 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %7, align 8
  store %struct.qed_cxt_mngr* %8, %struct.qed_cxt_mngr** %3, align 8
  store i64 0, i64* %4, align 8
  br label %9

9:                                                ; preds = %72, %1
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @MAX_CONN_TYPES, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %9
  %14 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %15 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @kfree(i32 %20)
  %22 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %23 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %29 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  store i64 0, i64* %5, align 8
  br label %34

34:                                               ; preds = %68, %13
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @MAX_NUM_VFS, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %40 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %41, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @kfree(i32 %48)
  %50 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %51 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %51, align 8
  %53 = load i64, i64* %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %52, i64 %53
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i64, i64* %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.qed_cxt_mngr*, %struct.qed_cxt_mngr** %3, align 8
  %60 = getelementptr inbounds %struct.qed_cxt_mngr, %struct.qed_cxt_mngr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i64, i64* %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %62
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = load i64, i64* %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %38
  %69 = load i64, i64* %5, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %5, align 8
  br label %34

71:                                               ; preds = %34
  br label %72

72:                                               ; preds = %71
  %73 = load i64, i64* %4, align 8
  %74 = add i64 %73, 1
  store i64 %74, i64* %4, align 8
  br label %9

75:                                               ; preds = %9
  ret void
}

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

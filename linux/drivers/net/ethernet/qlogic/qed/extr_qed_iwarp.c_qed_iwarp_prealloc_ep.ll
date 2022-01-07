; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_prealloc_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_prealloc_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.qed_iwarp_ep = type { i32, i32 }

@QED_IWARP_PREALLOC_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, i32)* @qed_iwarp_prealloc_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_iwarp_prealloc_ep(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_iwarp_ep*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QED_IWARP_PREALLOC_CNT, align 4
  br label %16

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 1, %15 ]
  store i32 %17, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %69, %16
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %72

22:                                               ; preds = %18
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %24 = call i32 @qed_iwarp_create_ep(%struct.qed_hwfn* %23, %struct.qed_iwarp_ep** %6)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %79

29:                                               ; preds = %22
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %29
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %34 = call i32 @qed_iwarp_alloc_cid(%struct.qed_hwfn* %33, i32* %9)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %74

38:                                               ; preds = %32
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @qed_iwarp_set_tcp_cid(%struct.qed_hwfn* %39, i32 %40)
  br label %45

42:                                               ; preds = %29
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %44 = call i32 @qed_iwarp_alloc_tcp_cid(%struct.qed_hwfn* %43, i32* %9)
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %48 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %50 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = call i32 @spin_lock_bh(i32* %53)
  %55 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %56 = getelementptr inbounds %struct.qed_iwarp_ep, %struct.qed_iwarp_ep* %55, i32 0, i32 0
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %58 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = call i32 @list_add_tail(i32* %56, i32* %61)
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %64 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = call i32 @spin_unlock_bh(i32* %67)
  br label %69

69:                                               ; preds = %45
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %10, align 4
  br label %18

72:                                               ; preds = %18
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %3, align 4
  br label %79

74:                                               ; preds = %37
  %75 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %76 = load %struct.qed_iwarp_ep*, %struct.qed_iwarp_ep** %6, align 8
  %77 = call i32 @qed_iwarp_destroy_ep(%struct.qed_hwfn* %75, %struct.qed_iwarp_ep* %76, i32 0)
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %72, %27
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @qed_iwarp_create_ep(%struct.qed_hwfn*, %struct.qed_iwarp_ep**) #1

declare dso_local i32 @qed_iwarp_alloc_cid(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @qed_iwarp_set_tcp_cid(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @qed_iwarp_alloc_tcp_cid(%struct.qed_hwfn*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @qed_iwarp_destroy_ep(%struct.qed_hwfn*, %struct.qed_iwarp_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

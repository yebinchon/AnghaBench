; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_count_ern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_count_ern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_percpu_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%union.qm_mr_entry = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@QM_MR_RC_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpaa_percpu_priv*, %union.qm_mr_entry*)* @count_ern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_ern(%struct.dpaa_percpu_priv* %0, %union.qm_mr_entry* %1) #0 {
  %3 = alloca %struct.dpaa_percpu_priv*, align 8
  %4 = alloca %union.qm_mr_entry*, align 8
  store %struct.dpaa_percpu_priv* %0, %struct.dpaa_percpu_priv** %3, align 8
  store %union.qm_mr_entry* %1, %union.qm_mr_entry** %4, align 8
  %5 = load %union.qm_mr_entry*, %union.qm_mr_entry** %4, align 8
  %6 = bitcast %union.qm_mr_entry* %5 to %struct.TYPE_3__*
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @QM_MR_RC_MASK, align 4
  %10 = and i32 %8, %9
  switch i32 %10, label %59 [
    i32 135, label %11
    i32 128, label %17
    i32 134, label %23
    i32 132, label %29
    i32 131, label %35
    i32 133, label %41
    i32 130, label %47
    i32 129, label %53
  ]

11:                                               ; preds = %2
  %12 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %13 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  br label %59

17:                                               ; preds = %2
  %18 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %19 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %59

23:                                               ; preds = %2
  %24 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %25 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %59

29:                                               ; preds = %2
  %30 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %31 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %59

35:                                               ; preds = %2
  %36 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %37 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %59

41:                                               ; preds = %2
  %42 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %43 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %59

47:                                               ; preds = %2
  %48 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %49 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %59

53:                                               ; preds = %2
  %54 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %3, align 8
  %55 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %2, %53, %47, %41, %35, %29, %23, %17, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

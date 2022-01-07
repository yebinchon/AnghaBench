; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_stat_non_sto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_ctrl.c_nfp_abm_ctrl_stat_non_sto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@NFP_QMSTAT_STRIDE = common dso_local global i32 0, align 4
@NFP_QMSTAT_NON_STO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nfp_abm_ctrl_stat_non_sto(%struct.nfp_abm_link* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfp_abm_link*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %8, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %35, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %12 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %10, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %9
  %18 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %19 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %20 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @NFP_QMSTAT_STRIDE, align 4
  %25 = load i32, i32* @NFP_QMSTAT_NON_STO, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @nfp_abm_ctrl_stat(%struct.nfp_abm_link* %18, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32 1, i64* %7)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  store i64 0, i64* %3, align 8
  br label %40

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %8, align 8
  br label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %6, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %9

38:                                               ; preds = %9
  %39 = load i64, i64* %8, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %38, %30
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @nfp_abm_ctrl_stat(%struct.nfp_abm_link*, i32, i32, i32, i32, i32, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

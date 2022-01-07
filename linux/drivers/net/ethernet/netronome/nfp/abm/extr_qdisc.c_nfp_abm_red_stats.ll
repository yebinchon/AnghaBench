; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_red_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_red_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32 }
%struct.tc_qopt_offload_stats = type { i32, i32 }
%struct.nfp_qdisc = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, i32, %struct.tc_qopt_offload_stats*)* @nfp_abm_red_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_red_stats(%struct.nfp_abm_link* %0, i32 %1, %struct.tc_qopt_offload_stats* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_abm_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.tc_qopt_offload_stats*, align 8
  %8 = alloca %struct.nfp_qdisc*, align 8
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.tc_qopt_offload_stats* %2, %struct.tc_qopt_offload_stats** %7, align 8
  %9 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %10 = call i32 @nfp_abm_stats_update(%struct.nfp_abm_link* %9)
  %11 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %11, i32 %12)
  store %struct.nfp_qdisc* %13, %struct.nfp_qdisc** %8, align 8
  %14 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %15 = icmp ne %struct.nfp_qdisc* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %21 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %7, align 8
  %33 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.tc_qopt_offload_stats*, %struct.tc_qopt_offload_stats** %7, align 8
  %36 = getelementptr inbounds %struct.tc_qopt_offload_stats, %struct.tc_qopt_offload_stats* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nfp_abm_stats_calculate(i32* %25, i32* %31, i32 %34, i32 %37)
  %39 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %40 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %47 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %45, i32* %51, align 4
  %52 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %53 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %19
  br label %60

57:                                               ; preds = %19
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  br label %60

60:                                               ; preds = %57, %56
  %61 = phi i32 [ 0, %56 ], [ %59, %57 ]
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %16
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @nfp_abm_stats_update(%struct.nfp_abm_link*) #1

declare dso_local %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_stats_calculate(i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_red_xstats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_red_xstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32 }
%struct.tc_red_qopt_offload = type { i32, i32 }
%struct.nfp_qdisc = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm_link*, %struct.tc_red_qopt_offload*)* @nfp_abm_red_xstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_red_xstats(%struct.nfp_abm_link* %0, %struct.tc_red_qopt_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_abm_link*, align 8
  %5 = alloca %struct.tc_red_qopt_offload*, align 8
  %6 = alloca %struct.nfp_qdisc*, align 8
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %4, align 8
  store %struct.tc_red_qopt_offload* %1, %struct.tc_red_qopt_offload** %5, align 8
  %7 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %8 = call i32 @nfp_abm_stats_update(%struct.nfp_abm_link* %7)
  %9 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %4, align 8
  %10 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %5, align 8
  %11 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %9, i32 %12)
  store %struct.nfp_qdisc* %13, %struct.nfp_qdisc** %6, align 8
  %14 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %15 = icmp ne %struct.nfp_qdisc* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %16
  %25 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %32 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load %struct.tc_red_qopt_offload*, %struct.tc_red_qopt_offload** %5, align 8
  %38 = getelementptr inbounds %struct.tc_red_qopt_offload, %struct.tc_red_qopt_offload* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @nfp_abm_stats_red_calculate(i32* %30, i32* %36, i32 %39)
  %41 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %42 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %49 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %47, i32* %53, align 4
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %24, %21
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @nfp_abm_stats_update(%struct.nfp_abm_link*) #1

declare dso_local %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_stats_red_calculate(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

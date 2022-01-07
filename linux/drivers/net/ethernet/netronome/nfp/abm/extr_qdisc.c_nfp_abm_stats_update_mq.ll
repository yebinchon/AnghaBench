; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_update_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_stats_update_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm_link = type { i32 }
%struct.nfp_qdisc = type { i64, i32* }

@NFP_QDISC_MQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm_link*, %struct.nfp_qdisc*)* @nfp_abm_stats_update_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_stats_update_mq(%struct.nfp_abm_link* %0, %struct.nfp_qdisc* %1) #0 {
  %3 = alloca %struct.nfp_abm_link*, align 8
  %4 = alloca %struct.nfp_qdisc*, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_abm_link* %0, %struct.nfp_abm_link** %3, align 8
  store %struct.nfp_qdisc* %1, %struct.nfp_qdisc** %4, align 8
  %6 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %7 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NFP_QDISC_MQ, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %39

12:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %36, %12
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %13
  %20 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc* %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %3, align 8
  %26 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %4, align 8
  %27 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @nfp_abm_stats_update_red(%struct.nfp_abm_link* %25, i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %24, %19
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %13

39:                                               ; preds = %11, %13
  ret void
}

declare dso_local i64 @nfp_abm_qdisc_child_valid(%struct.nfp_qdisc*, i32) #1

declare dso_local i32 @nfp_abm_stats_update_red(%struct.nfp_abm_link*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

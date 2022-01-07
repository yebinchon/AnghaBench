; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_mq_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_mq_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { i32 }
%struct.tc_mq_qopt_offload = type { i32 }
%struct.nfp_qdisc = type { i32, i32 }

@NFP_QDISC_MQ = common dso_local global i32 0, align 4
@TC_H_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.nfp_abm_link*, %struct.tc_mq_qopt_offload*)* @nfp_abm_mq_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_mq_create(%struct.net_device* %0, %struct.nfp_abm_link* %1, %struct.tc_mq_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca %struct.tc_mq_qopt_offload*, align 8
  %8 = alloca %struct.nfp_qdisc*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %6, align 8
  store %struct.tc_mq_qopt_offload* %2, %struct.tc_mq_qopt_offload** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %12 = load i32, i32* @NFP_QDISC_MQ, align 4
  %13 = load i32, i32* @TC_H_ROOT, align 4
  %14 = load %struct.tc_mq_qopt_offload*, %struct.tc_mq_qopt_offload** %7, align 8
  %15 = getelementptr inbounds %struct.tc_mq_qopt_offload, %struct.tc_mq_qopt_offload* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nfp_abm_qdisc_replace(%struct.net_device* %10, %struct.nfp_abm_link* %11, i32 %12, i32 %13, i32 %16, i32 %19, %struct.nfp_qdisc** %8)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %32

25:                                               ; preds = %3
  %26 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %27 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %26, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %8, align 8
  %29 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %31 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %30)
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %23
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @nfp_abm_qdisc_replace(%struct.net_device*, %struct.nfp_abm_link*, i32, i32, i32, i32, %struct.nfp_qdisc**) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_setup_tc_gred.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_setup_tc_gred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { i32 }
%struct.tc_gred_qopt_offload = type { i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_abm_setup_tc_gred(%struct.net_device* %0, %struct.nfp_abm_link* %1, %struct.tc_gred_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca %struct.tc_gred_qopt_offload*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %6, align 8
  store %struct.tc_gred_qopt_offload* %2, %struct.tc_gred_qopt_offload** %7, align 8
  %8 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %9 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %31 [
    i32 129, label %11
    i32 130, label %16
    i32 128, label %23
  ]

11:                                               ; preds = %3
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %14 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %15 = call i32 @nfp_abm_gred_replace(%struct.net_device* %12, %struct.nfp_abm_link* %13, %struct.tc_gred_qopt_offload* %14)
  store i32 %15, i32* %4, align 4
  br label %34

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %19 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %20 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @nfp_abm_qdisc_destroy(%struct.net_device* %17, %struct.nfp_abm_link* %18, i32 %21)
  store i32 0, i32* %4, align 4
  br label %34

23:                                               ; preds = %3
  %24 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %25 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %26 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tc_gred_qopt_offload*, %struct.tc_gred_qopt_offload** %7, align 8
  %29 = getelementptr inbounds %struct.tc_gred_qopt_offload, %struct.tc_gred_qopt_offload* %28, i32 0, i32 1
  %30 = call i32 @nfp_abm_gred_stats(%struct.nfp_abm_link* %24, i32 %27, i32* %29)
  store i32 %30, i32* %4, align 4
  br label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %31, %23, %16, %11
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @nfp_abm_gred_replace(%struct.net_device*, %struct.nfp_abm_link*, %struct.tc_gred_qopt_offload*) #1

declare dso_local i32 @nfp_abm_qdisc_destroy(%struct.net_device*, %struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_gred_stats(%struct.nfp_abm_link*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

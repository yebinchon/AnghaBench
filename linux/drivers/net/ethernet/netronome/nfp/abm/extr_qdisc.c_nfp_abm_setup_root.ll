; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_setup_root.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_setup_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tc_root_qopt_offload = type { i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_abm_setup_root(%struct.net_device* %0, %struct.nfp_abm_link* %1, %struct.tc_root_qopt_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  %7 = alloca %struct.tc_root_qopt_offload*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %6, align 8
  store %struct.tc_root_qopt_offload* %2, %struct.tc_root_qopt_offload** %7, align 8
  %8 = load %struct.tc_root_qopt_offload*, %struct.tc_root_qopt_offload** %7, align 8
  %9 = getelementptr inbounds %struct.tc_root_qopt_offload, %struct.tc_root_qopt_offload* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %17 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %22 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %29 = load %struct.tc_root_qopt_offload*, %struct.tc_root_qopt_offload** %7, align 8
  %30 = getelementptr inbounds %struct.tc_root_qopt_offload, %struct.tc_root_qopt_offload* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.TYPE_2__* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %28, i32 %31)
  %33 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %34 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %33, i32 0, i32 0
  store %struct.TYPE_2__* %32, %struct.TYPE_2__** %34, align 8
  %35 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %36 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %27
  %40 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %41 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %39, %27
  %47 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %48 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %12
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.TYPE_2__* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

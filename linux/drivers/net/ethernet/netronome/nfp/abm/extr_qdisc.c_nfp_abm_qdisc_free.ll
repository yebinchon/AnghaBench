; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { i32 }
%struct.nfp_qdisc = type { %struct.nfp_qdisc*, i32 }
%struct.nfp_port = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nfp_abm_link*, %struct.nfp_qdisc*)* @nfp_abm_qdisc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_qdisc_free(%struct.net_device* %0, %struct.nfp_abm_link* %1, %struct.nfp_qdisc* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_abm_link*, align 8
  %6 = alloca %struct.nfp_qdisc*, align 8
  %7 = alloca %struct.nfp_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %5, align 8
  store %struct.nfp_qdisc* %2, %struct.nfp_qdisc** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device* %8)
  store %struct.nfp_port* %9, %struct.nfp_port** %7, align 8
  %10 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %11 = icmp ne %struct.nfp_qdisc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %39

13:                                               ; preds = %3
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %16 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %17 = call i32 @nfp_abm_qdisc_clear_mq(%struct.net_device* %14, %struct.nfp_abm_link* %15, %struct.nfp_qdisc* %16)
  %18 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %19 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %18, i32 0, i32 0
  %20 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @TC_H_MAJ(i32 %22)
  %24 = call %struct.nfp_qdisc* @radix_tree_delete(i32* %19, i32 %23)
  %25 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %26 = icmp ne %struct.nfp_qdisc* %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @WARN_ON(i32 %27)
  %29 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %30 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %29, i32 0, i32 0
  %31 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %30, align 8
  %32 = call i32 @kfree(%struct.nfp_qdisc* %31)
  %33 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %6, align 8
  %34 = call i32 @kfree(%struct.nfp_qdisc* %33)
  %35 = load %struct.nfp_port*, %struct.nfp_port** %7, align 8
  %36 = getelementptr inbounds %struct.nfp_port, %struct.nfp_port* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, -1
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.nfp_port* @nfp_port_from_netdev(%struct.net_device*) #1

declare dso_local i32 @nfp_abm_qdisc_clear_mq(%struct.net_device*, %struct.nfp_abm_link*, %struct.nfp_qdisc*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.nfp_qdisc* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @TC_H_MAJ(i32) #1

declare dso_local i32 @kfree(%struct.nfp_qdisc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

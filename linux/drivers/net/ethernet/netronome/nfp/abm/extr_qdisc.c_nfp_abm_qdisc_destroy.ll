; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_qdisc.c_nfp_abm_qdisc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_abm_link = type { %struct.nfp_qdisc* }
%struct.nfp_qdisc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nfp_abm_link*, i32)* @nfp_abm_qdisc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_qdisc_destroy(%struct.net_device* %0, %struct.nfp_abm_link* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.nfp_abm_link*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_qdisc*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.nfp_abm_link* %1, %struct.nfp_abm_link** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link* %8, i32 %9)
  store %struct.nfp_qdisc* %10, %struct.nfp_qdisc** %7, align 8
  %11 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %12 = icmp ne %struct.nfp_qdisc* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %45

14:                                               ; preds = %3
  %15 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %16 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %15, i32 0, i32 0
  %17 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %16, align 8
  %18 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %19 = icmp eq %struct.nfp_qdisc* %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %22 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %27 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %28 = getelementptr inbounds %struct.nfp_qdisc, %struct.nfp_qdisc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nfp_abm_qdisc_unlink_children(%struct.nfp_qdisc* %26, i32 0, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %33 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %34 = call i32 @nfp_abm_qdisc_free(%struct.net_device* %31, %struct.nfp_abm_link* %32, %struct.nfp_qdisc* %33)
  %35 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %36 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %35, i32 0, i32 0
  %37 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %36, align 8
  %38 = load %struct.nfp_qdisc*, %struct.nfp_qdisc** %7, align 8
  %39 = icmp eq %struct.nfp_qdisc* %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %42 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %41, i32 0, i32 0
  store %struct.nfp_qdisc* null, %struct.nfp_qdisc** %42, align 8
  %43 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %5, align 8
  %44 = call i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link* %43)
  br label %45

45:                                               ; preds = %13, %40, %25
  ret void
}

declare dso_local %struct.nfp_qdisc* @nfp_abm_qdisc_find(%struct.nfp_abm_link*, i32) #1

declare dso_local i32 @nfp_abm_qdisc_unlink_children(%struct.nfp_qdisc*, i32, i32) #1

declare dso_local i32 @nfp_abm_qdisc_free(%struct.net_device*, %struct.nfp_abm_link*, %struct.nfp_qdisc*) #1

declare dso_local i32 @nfp_abm_qdisc_offload_update(%struct.nfp_abm_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

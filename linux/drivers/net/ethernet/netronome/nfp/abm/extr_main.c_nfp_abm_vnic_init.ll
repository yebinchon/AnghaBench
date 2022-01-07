; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_vnic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_vnic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.nfp_net = type { %struct.nfp_abm_link* }
%struct.nfp_abm_link = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, %struct.nfp_net*)* @nfp_abm_vnic_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_vnic_init(%struct.nfp_app* %0, %struct.nfp_net* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_app*, align 8
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca %struct.nfp_abm_link*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %4, align 8
  store %struct.nfp_net* %1, %struct.nfp_net** %5, align 8
  %7 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %8 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %7, i32 0, i32 0
  %9 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %8, align 8
  store %struct.nfp_abm_link* %9, %struct.nfp_abm_link** %6, align 8
  %10 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %11 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @nfp_abm_has_prio(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %17 = load %struct.nfp_abm_link*, %struct.nfp_abm_link** %6, align 8
  %18 = getelementptr inbounds %struct.nfp_abm_link, %struct.nfp_abm_link* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @nfp_abm_ctrl_prio_map_update(%struct.nfp_abm_link* %16, i32 %19)
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i64 @nfp_abm_has_prio(i32) #1

declare dso_local i32 @nfp_abm_ctrl_prio_map_update(%struct.nfp_abm_link*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

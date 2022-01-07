; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_eswitch_set_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_eswitch_set_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm = type { i32 }

@DEVLINK_ESWITCH_MODE_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_abm*)* @nfp_abm_eswitch_set_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_abm_eswitch_set_legacy(%struct.nfp_abm* %0) #0 {
  %2 = alloca %struct.nfp_abm*, align 8
  store %struct.nfp_abm* %0, %struct.nfp_abm** %2, align 8
  %3 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %4 = call i32 @nfp_abm_kill_reprs_all(%struct.nfp_abm* %3)
  %5 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %6 = call i32 @nfp_abm_ctrl_qm_disable(%struct.nfp_abm* %5)
  %7 = load i32, i32* @DEVLINK_ESWITCH_MODE_LEGACY, align 4
  %8 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %9 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  ret i32 0
}

declare dso_local i32 @nfp_abm_kill_reprs_all(%struct.nfp_abm*) #1

declare dso_local i32 @nfp_abm_ctrl_qm_disable(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

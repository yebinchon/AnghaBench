; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_eswitch_clean_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/abm/extr_main.c_nfp_abm_eswitch_clean_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_abm = type { i64 }

@DEVLINK_ESWITCH_MODE_LEGACY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_abm*)* @nfp_abm_eswitch_clean_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_abm_eswitch_clean_up(%struct.nfp_abm* %0) #0 {
  %2 = alloca %struct.nfp_abm*, align 8
  store %struct.nfp_abm* %0, %struct.nfp_abm** %2, align 8
  %3 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_abm, %struct.nfp_abm* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @DEVLINK_ESWITCH_MODE_LEGACY, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load %struct.nfp_abm*, %struct.nfp_abm** %2, align 8
  %10 = call i32 @nfp_abm_eswitch_set_legacy(%struct.nfp_abm* %9)
  %11 = call i32 @WARN_ON(i32 %10)
  br label %12

12:                                               ; preds = %8, %1
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @nfp_abm_eswitch_set_legacy(%struct.nfp_abm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_filter.h_efx_filter_set_uc_def.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_filter.h_efx_filter_set_uc_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32 }

@EFX_FILTER_MATCH_LOC_MAC_IG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_filter_spec*)* @efx_filter_set_uc_def to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_filter_set_uc_def(%struct.efx_filter_spec* %0) #0 {
  %2 = alloca %struct.efx_filter_spec*, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %2, align 8
  %3 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC_IG, align 4
  %4 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %2, align 8
  %5 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = or i32 %6, %3
  store i32 %7, i32* %5, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

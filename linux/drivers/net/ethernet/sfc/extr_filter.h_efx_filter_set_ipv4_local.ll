; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_filter.h_efx_filter_set_ipv4_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_filter.h_efx_filter_set_ipv4_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i32, i32*, i32, i32 }

@EFX_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_IP_PROTO = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_PORT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_filter_spec*, i32, i32, i32)* @efx_filter_set_ipv4_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_filter_set_ipv4_local(%struct.efx_filter_spec* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.efx_filter_spec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %10 = load i32, i32* @EFX_FILTER_MATCH_IP_PROTO, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @EFX_FILTER_MATCH_LOC_PORT, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %17 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load i32, i32* @ETH_P_IP, align 4
  %21 = call i32 @htons(i32 %20)
  %22 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %23 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %26 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %29 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  store i32 %27, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %34 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  ret i32 0
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

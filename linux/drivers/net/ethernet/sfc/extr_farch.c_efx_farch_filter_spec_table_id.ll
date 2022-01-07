; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_spec_table_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_farch.c_efx_farch_filter_spec_table_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_farch_filter_spec = type { i32, i32 }

@EFX_FARCH_FILTER_TABLE_RX_IP = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TCP_FULL = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TCP_WILD = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_UDP_FULL = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_UDP_WILD = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_RX_MAC = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_MAC_FULL = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_MAC_WILD = common dso_local global i32 0, align 4
@EFX_FARCH_FILTER_TABLE_TX_MAC = common dso_local global i32 0, align 4
@EFX_FILTER_FLAG_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_farch_filter_spec*)* @efx_farch_filter_spec_table_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_farch_filter_spec_table_id(%struct.efx_farch_filter_spec* %0) #0 {
  %2 = alloca %struct.efx_farch_filter_spec*, align 8
  store %struct.efx_farch_filter_spec* %0, %struct.efx_farch_filter_spec** %2, align 8
  %3 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_IP, align 4
  %4 = load i32, i32* @EFX_FARCH_FILTER_TCP_FULL, align 4
  %5 = ashr i32 %4, 2
  %6 = icmp ne i32 %3, %5
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUILD_BUG_ON(i32 %7)
  %9 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_IP, align 4
  %10 = load i32, i32* @EFX_FARCH_FILTER_TCP_WILD, align 4
  %11 = ashr i32 %10, 2
  %12 = icmp ne i32 %9, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUILD_BUG_ON(i32 %13)
  %15 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_IP, align 4
  %16 = load i32, i32* @EFX_FARCH_FILTER_UDP_FULL, align 4
  %17 = ashr i32 %16, 2
  %18 = icmp ne i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUILD_BUG_ON(i32 %19)
  %21 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_IP, align 4
  %22 = load i32, i32* @EFX_FARCH_FILTER_UDP_WILD, align 4
  %23 = ashr i32 %22, 2
  %24 = icmp ne i32 %21, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @BUILD_BUG_ON(i32 %25)
  %27 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_MAC, align 4
  %28 = load i32, i32* @EFX_FARCH_FILTER_MAC_FULL, align 4
  %29 = ashr i32 %28, 2
  %30 = icmp ne i32 %27, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUILD_BUG_ON(i32 %31)
  %33 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_MAC, align 4
  %34 = load i32, i32* @EFX_FARCH_FILTER_MAC_WILD, align 4
  %35 = ashr i32 %34, 2
  %36 = icmp ne i32 %33, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @BUILD_BUG_ON(i32 %37)
  %39 = load i32, i32* @EFX_FARCH_FILTER_TABLE_TX_MAC, align 4
  %40 = load i32, i32* @EFX_FARCH_FILTER_TABLE_RX_MAC, align 4
  %41 = add nsw i32 %40, 2
  %42 = icmp ne i32 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUILD_BUG_ON(i32 %43)
  %45 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %2, align 8
  %46 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 2
  %49 = load %struct.efx_farch_filter_spec*, %struct.efx_farch_filter_spec** %2, align 8
  %50 = getelementptr inbounds %struct.efx_farch_filter_spec, %struct.efx_farch_filter_spec* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EFX_FILTER_FLAG_TX, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 2, i32 0
  %57 = add nsw i32 %48, %56
  ret i32 %57
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

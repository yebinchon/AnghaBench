; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_is_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_is_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i64, i32*, i32 }

@EFX_FILTER_MATCH_LOC_MAC = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_filter_spec*)* @efx_ef10_filter_is_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_is_exclusive(%struct.efx_filter_spec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_filter_spec*, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %3, align 8
  %4 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %5 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %12 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @is_multicast_ether_addr(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %10
  store i32 1, i32* %2, align 4
  br label %62

17:                                               ; preds = %10, %1
  %18 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %19 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %22 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = load i32, i32* @EFX_FILTER_MATCH_ETHER_TYPE, align 4
  %26 = load i32, i32* @EFX_FILTER_MATCH_LOC_HOST, align 4
  %27 = or i32 %25, %26
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %61

29:                                               ; preds = %17
  %30 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %31 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @ETH_P_IP, align 4
  %34 = call i64 @htons(i32 %33)
  %35 = icmp eq i64 %32, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %38 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %37, i32 0, i32 2
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ipv4_is_multicast(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 1, i32* %2, align 4
  br label %62

45:                                               ; preds = %36, %29
  %46 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %47 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_IPV6, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %3, align 8
  %54 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 255
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %62

60:                                               ; preds = %52, %45
  br label %61

61:                                               ; preds = %60, %17
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %59, %44, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ipv4_is_multicast(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

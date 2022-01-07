; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_filter.h_efx_filter_set_eth_local.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_filter.h_efx_filter_set_eth_local.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_filter_spec = type { i32, i32, i32 }

@EFX_FILTER_VID_UNSPEC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_OUTER_VID = common dso_local global i32 0, align 4
@EFX_FILTER_MATCH_LOC_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_filter_spec*, i64, i32*)* @efx_filter_set_eth_local to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_filter_set_eth_local(%struct.efx_filter_spec* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_filter_spec*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.efx_filter_spec* %0, %struct.efx_filter_spec** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* @EFX_FILTER_VID_UNSPEC, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %3
  %12 = load i32*, i32** %7, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %46

17:                                               ; preds = %11, %3
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @EFX_FILTER_VID_UNSPEC, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %17
  %22 = load i32, i32* @EFX_FILTER_MATCH_OUTER_VID, align 4
  %23 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %24 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @htons(i64 %27)
  %29 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %30 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %21, %17
  %32 = load i32*, i32** %7, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* @EFX_FILTER_MATCH_LOC_MAC, align 4
  %36 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %37 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 4
  %40 = load %struct.efx_filter_spec*, %struct.efx_filter_spec** %5, align 8
  %41 = getelementptr inbounds %struct.efx_filter_spec, %struct.efx_filter_spec* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @ether_addr_copy(i32 %42, i32* %43)
  br label %45

45:                                               ; preds = %34, %31
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @htons(i64) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

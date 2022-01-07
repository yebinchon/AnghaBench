; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_dpaa_bp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa_bp = type { i32, i32, i32, i32*, i32 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FSL_DPAA_BPID_INV = common dso_local global i32 0, align 4
@FSL_DPAA_ETH_MAX_BUF_COUNT = common dso_local global i32 0, align 4
@dpaa_bp_seed = common dso_local global i32 0, align 4
@dpaa_bp_free_pf = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dpaa_bp* (%struct.device*)* @dpaa_bp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dpaa_bp* @dpaa_bp_alloc(%struct.device* %0) #0 {
  %2 = alloca %struct.dpaa_bp*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dpaa_bp*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.dpaa_bp* @devm_kzalloc(%struct.device* %5, i32 32, i32 %6)
  store %struct.dpaa_bp* %7, %struct.dpaa_bp** %4, align 8
  %8 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %9 = icmp ne %struct.dpaa_bp* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.dpaa_bp* @ERR_PTR(i32 %12)
  store %struct.dpaa_bp* %13, %struct.dpaa_bp** %2, align 8
  br label %45

14:                                               ; preds = %1
  %15 = load i32, i32* @FSL_DPAA_BPID_INV, align 4
  %16 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %17 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 8
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %20 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %21, align 4
  %23 = call i32* @devm_alloc_percpu(%struct.device* %18, i32 %22)
  %24 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %25 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %24, i32 0, i32 3
  store i32* %23, i32** %25, align 8
  %26 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %27 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %14
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.dpaa_bp* @ERR_PTR(i32 %32)
  store %struct.dpaa_bp* %33, %struct.dpaa_bp** %2, align 8
  br label %45

34:                                               ; preds = %14
  %35 = load i32, i32* @FSL_DPAA_ETH_MAX_BUF_COUNT, align 4
  %36 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %37 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @dpaa_bp_seed, align 4
  %39 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %40 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @dpaa_bp_free_pf, align 4
  %42 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  %43 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dpaa_bp*, %struct.dpaa_bp** %4, align 8
  store %struct.dpaa_bp* %44, %struct.dpaa_bp** %2, align 8
  br label %45

45:                                               ; preds = %34, %30, %10
  %46 = load %struct.dpaa_bp*, %struct.dpaa_bp** %2, align 8
  ret %struct.dpaa_bp* %46
}

declare dso_local %struct.dpaa_bp* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.dpaa_bp* @ERR_PTR(i32) #1

declare dso_local i32* @devm_alloc_percpu(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

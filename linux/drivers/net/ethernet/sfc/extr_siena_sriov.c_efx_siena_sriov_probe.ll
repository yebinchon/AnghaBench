; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32**, i32, i32 }

@max_vfs = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"no SR-IOV VFs probed\0A\00", align 1
@efx_siena_sriov_channel_type = common dso_local global i32 0, align 4
@EFX_EXTRA_CHANNEL_IOV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_siena_sriov_probe(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @max_vfs, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %38

7:                                                ; preds = %1
  %8 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 3
  %11 = call i64 @efx_siena_sriov_cmd(%struct.efx_nic* %8, i32 0, i32* %10, i32* %3)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %7
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = load i32, i32* @probe, align 4
  %16 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %17 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @netif_info(%struct.efx_nic* %14, i32 %15, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %38

20:                                               ; preds = %7
  %21 = load i32, i32* %3, align 4
  %22 = icmp ugt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @max_vfs, align 4
  %26 = icmp ugt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @max_vfs, align 4
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %27, %23, %20
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %34 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i64, i64* @EFX_EXTRA_CHANNEL_IOV, align 8
  %37 = getelementptr inbounds i32*, i32** %35, i64 %36
  store i32* @efx_siena_sriov_channel_type, i32** %37, align 8
  br label %38

38:                                               ; preds = %29, %13, %6
  ret void
}

declare dso_local i64 @efx_siena_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

declare dso_local i32 @netif_info(%struct.efx_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

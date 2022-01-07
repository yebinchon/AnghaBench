; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i32 }
%struct.efx_buffer = type { i32 }

@EFX_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_NOIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_siena_sriov_reset(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.siena_nic_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_buffer, align 4
  %6 = alloca %struct.siena_vf*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.siena_nic_data*, %struct.siena_nic_data** %8, align 8
  store %struct.siena_nic_data* %9, %struct.siena_nic_data** %3, align 8
  %10 = call i32 (...) @ASSERT_RTNL()
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %49

16:                                               ; preds = %1
  %17 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %18 = call i32 @efx_siena_sriov_usrev(%struct.efx_nic* %17, i32 1)
  %19 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %20 = call i32 @efx_siena_sriov_cmd(%struct.efx_nic* %19, i32 1, i32* null, i32* null)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = load i32, i32* @EFX_PAGE_SIZE, align 4
  %23 = load i32, i32* @GFP_NOIO, align 4
  %24 = call i64 @efx_nic_alloc_buffer(%struct.efx_nic* %21, %struct.efx_buffer* %5, i32 %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  br label %49

27:                                               ; preds = %16
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %31 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ult i32 %29, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %28
  %35 = load %struct.siena_nic_data*, %struct.siena_nic_data** %3, align 8
  %36 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %35, i32 0, i32 0
  %37 = load %struct.siena_vf*, %struct.siena_vf** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %37, i64 %39
  store %struct.siena_vf* %40, %struct.siena_vf** %6, align 8
  %41 = load %struct.siena_vf*, %struct.siena_vf** %6, align 8
  %42 = call i32 @efx_siena_sriov_reset_vf(%struct.siena_vf* %41, %struct.efx_buffer* %5)
  br label %43

43:                                               ; preds = %34
  %44 = load i32, i32* %4, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %48 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %47, %struct.efx_buffer* %5)
  br label %49

49:                                               ; preds = %46, %26, %15
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @efx_siena_sriov_usrev(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_siena_sriov_cmd(%struct.efx_nic*, i32, i32*, i32*) #1

declare dso_local i64 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.efx_buffer*, i32, i32) #1

declare dso_local i32 @efx_siena_sriov_reset_vf(%struct.siena_vf*, %struct.efx_buffer*) #1

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, %struct.efx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

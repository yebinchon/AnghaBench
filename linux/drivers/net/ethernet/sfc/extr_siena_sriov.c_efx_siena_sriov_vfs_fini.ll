; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_vfs_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_vfs_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i64, i64, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*)* @efx_siena_sriov_vfs_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_siena_sriov_vfs_fini(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.siena_nic_data*, align 8
  %4 = alloca %struct.siena_vf*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %7 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %6, i32 0, i32 1
  %8 = load %struct.siena_nic_data*, %struct.siena_nic_data** %7, align 8
  store %struct.siena_nic_data* %8, %struct.siena_nic_data** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %36, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %9
  %16 = load %struct.siena_nic_data*, %struct.siena_nic_data** %3, align 8
  %17 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %16, i32 0, i32 0
  %18 = load %struct.siena_vf*, %struct.siena_vf** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %18, i64 %20
  store %struct.siena_vf* %21, %struct.siena_vf** %4, align 8
  %22 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %23 = load %struct.siena_vf*, %struct.siena_vf** %4, align 8
  %24 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %23, i32 0, i32 3
  %25 = call i32 @efx_nic_free_buffer(%struct.efx_nic* %22, i32* %24)
  %26 = load %struct.siena_vf*, %struct.siena_vf** %4, align 8
  %27 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  %30 = load %struct.siena_vf*, %struct.siena_vf** %4, align 8
  %31 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.siena_vf*, %struct.siena_vf** %4, align 8
  %33 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.siena_vf*, %struct.siena_vf** %4, align 8
  %35 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %15
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %9

39:                                               ; preds = %9
  ret void
}

declare dso_local i32 @efx_nic_free_buffer(%struct.efx_nic*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

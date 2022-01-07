; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_vf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_vf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.efx_nic* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VF_TX_FILTER_AUTO = common dso_local global i32 0, align 4
@efx_siena_sriov_vfdi = common dso_local global i32 0, align 4
@efx_siena_sriov_reset_vf_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_siena_sriov_vf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_siena_sriov_vf_alloc(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.siena_vf*, align 8
  %6 = alloca %struct.siena_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.siena_nic_data*, %struct.siena_nic_data** %8, align 8
  store %struct.siena_nic_data* %9, %struct.siena_nic_data** %6, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.siena_vf* @kcalloc(i32 %12, i32 48, i32 %13)
  %15 = load %struct.siena_nic_data*, %struct.siena_nic_data** %6, align 8
  %16 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %15, i32 0, i32 0
  store %struct.siena_vf* %14, %struct.siena_vf** %16, align 8
  %17 = load %struct.siena_nic_data*, %struct.siena_nic_data** %6, align 8
  %18 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %17, i32 0, i32 0
  %19 = load %struct.siena_vf*, %struct.siena_vf** %18, align 8
  %20 = icmp ne %struct.siena_vf* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %72

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %68, %24
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %71

31:                                               ; preds = %25
  %32 = load %struct.siena_nic_data*, %struct.siena_nic_data** %6, align 8
  %33 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %32, i32 0, i32 0
  %34 = load %struct.siena_vf*, %struct.siena_vf** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %34, i64 %36
  store %struct.siena_vf* %37, %struct.siena_vf** %5, align 8
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %40 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %39, i32 0, i32 9
  store %struct.efx_nic* %38, %struct.efx_nic** %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %43 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %45 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %44, i32 0, i32 1
  store i32 -1, i32* %45, align 4
  %46 = load i32, i32* @VF_TX_FILTER_AUTO, align 4
  %47 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %48 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %47, i32 0, i32 8
  store i32 %46, i32* %48, align 8
  %49 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %50 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %49, i32 0, i32 2
  store i32 -1, i32* %50, align 8
  %51 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %52 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %51, i32 0, i32 7
  %53 = load i32, i32* @efx_siena_sriov_vfdi, align 4
  %54 = call i32 @INIT_WORK(i32* %52, i32 %53)
  %55 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %56 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %55, i32 0, i32 6
  %57 = load i32, i32* @efx_siena_sriov_reset_vf_work, align 4
  %58 = call i32 @INIT_WORK(i32* %56, i32 %57)
  %59 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %60 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %59, i32 0, i32 5
  %61 = call i32 @init_waitqueue_head(i32* %60)
  %62 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %63 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %62, i32 0, i32 4
  %64 = call i32 @mutex_init(i32* %63)
  %65 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %66 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %65, i32 0, i32 3
  %67 = call i32 @mutex_init(i32* %66)
  br label %68

68:                                               ; preds = %31
  %69 = load i32, i32* %4, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %25

71:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %21
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.siena_vf* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

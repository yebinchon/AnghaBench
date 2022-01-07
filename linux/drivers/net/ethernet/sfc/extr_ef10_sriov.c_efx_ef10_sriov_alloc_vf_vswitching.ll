; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_alloc_vf_vswitching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_alloc_vf_vswitching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_EF10_NO_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ef10_sriov_alloc_vf_vswitching to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_sriov_alloc_vf_vswitching(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %4, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_3__* @kcalloc(i32 %12, i32 4, i32 %13)
  %15 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %16 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %15, i32 0, i32 0
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %16, align 8
  %17 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %18 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = icmp ne %struct.TYPE_3__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %77

24:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %63, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ult i32 %26, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %33 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @eth_random_addr(i32 %39)
  %41 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %42 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %41, i32 0, i32 0
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i32* null, i32** %47, align 8
  %48 = load i32, i32* @EFX_EF10_NO_VLAN, align 4
  %49 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %50 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 %48, i32* %55, align 8
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @efx_ef10_sriov_assign_vf_vport(%struct.efx_nic* %56, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %31
  br label %67

62:                                               ; preds = %31
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %5, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %25

66:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %77

67:                                               ; preds = %61
  %68 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %69 = call i32 @efx_ef10_sriov_free_vf_vports(%struct.efx_nic* %68)
  %70 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %71 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = call i32 @kfree(%struct.TYPE_3__* %72)
  %74 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %75 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %74, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %75, align 8
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %67, %66, %21
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_3__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @eth_random_addr(i32) #1

declare dso_local i32 @efx_ef10_sriov_assign_vf_vport(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_ef10_sriov_free_vf_vports(%struct.efx_nic*) #1

declare dso_local i32 @kfree(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

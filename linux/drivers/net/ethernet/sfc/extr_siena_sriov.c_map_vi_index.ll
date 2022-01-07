; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_map_vi_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_map_vi_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.siena_nic_data* }
%struct.siena_nic_data = type { %struct.siena_vf* }
%struct.siena_vf = type { i32 }

@EFX_VI_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32, %struct.siena_vf**, i32*)* @map_vi_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_vi_index(%struct.efx_nic* %0, i32 %1, %struct.siena_vf** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.siena_vf**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.siena_nic_data*, align 8
  %11 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.siena_vf** %2, %struct.siena_vf*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = load %struct.siena_nic_data*, %struct.siena_nic_data** %13, align 8
  store %struct.siena_nic_data* %14, %struct.siena_nic_data** %10, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @EFX_VI_BASE, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %53

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @EFX_VI_BASE, align 4
  %22 = sub i32 %20, %21
  %23 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %24 = call i32 @efx_vf_size(%struct.efx_nic* %23)
  %25 = udiv i32 %22, %24
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %5, align 4
  br label %53

32:                                               ; preds = %19
  %33 = load %struct.siena_vf**, %struct.siena_vf*** %8, align 8
  %34 = icmp ne %struct.siena_vf** %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load %struct.siena_nic_data*, %struct.siena_nic_data** %10, align 8
  %37 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %36, i32 0, i32 0
  %38 = load %struct.siena_vf*, %struct.siena_vf** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %38, i64 %40
  %42 = load %struct.siena_vf**, %struct.siena_vf*** %8, align 8
  store %struct.siena_vf* %41, %struct.siena_vf** %42, align 8
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i32*, i32** %9, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %49 = call i32 @efx_vf_size(%struct.efx_nic* %48)
  %50 = urem i32 %47, %49
  %51 = load i32*, i32** %9, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %46, %43
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %31, %18
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @efx_vf_size(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

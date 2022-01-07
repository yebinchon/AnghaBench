; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_rx_flush_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena_sriov.c_efx_siena_sriov_rx_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.siena_vf = type { i32, i32, i32, i32, i32 }

@FSF_AZ_DRIVER_EV_RX_DESCQ_ID = common dso_local global i32 0, align 4
@FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_siena_sriov_rx_flush_done(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.siena_vf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FSF_AZ_DRIVER_EV_RX_DESCQ_ID, align 4
  %12 = call i32 @EFX_QWORD_FIELD(i32 %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FSF_AZ_DRIVER_EV_RX_FLUSH_FAIL, align 4
  %16 = call i32 @EFX_QWORD_FIELD(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @map_vi_index(%struct.efx_nic* %17, i32 %18, %struct.siena_vf** %5, i32* %8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %60

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %25 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @test_bit(i32 %23, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %60

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %36 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_bit(i32 %34, i32 %37)
  %39 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %40 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %39, i32 0, i32 3
  %41 = call i32 @atomic_inc(i32* %40)
  br label %52

42:                                               ; preds = %30
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %45 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @__clear_bit(i32 %43, i32 %46)
  %48 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %49 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %42, %33
  %53 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %54 = call i64 @efx_vfdi_flush_wake(%struct.siena_vf* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load %struct.siena_vf*, %struct.siena_vf** %5, align 8
  %58 = getelementptr inbounds %struct.siena_vf, %struct.siena_vf* %57, i32 0, i32 0
  %59 = call i32 @wake_up(i32* %58)
  br label %60

60:                                               ; preds = %21, %29, %56, %52
  ret void
}

declare dso_local i32 @EFX_QWORD_FIELD(i32, i32) #1

declare dso_local i64 @map_vi_index(%struct.efx_nic*, i32, %struct.siena_vf**, i32*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i64 @efx_vfdi_flush_wake(%struct.siena_vf*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

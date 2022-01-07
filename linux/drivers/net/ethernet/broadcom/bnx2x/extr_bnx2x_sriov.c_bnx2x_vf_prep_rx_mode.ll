; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_prep_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sriov.c_bnx2x_vf_prep_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.bnx2x = type { i32 }
%struct.bnx2x_rx_mode_ramrod_params = type { i64, i64, i32, i32, i32, i32, i32*, i32, i32*, i32, i32 }
%struct.bnx2x_virtf = type { i32, i32 }
%struct.bnx2x_vf_queue = type { i32 }

@BNX2X_FILTER_RX_MODE_PENDING = common dso_local global i32 0, align 4
@RAMROD_RX = common dso_local global i32 0, align 4
@RAMROD_TX = common dso_local global i32 0, align 4
@rx_mode_rdata = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_virtf*, i64)* @bnx2x_vf_prep_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_vf_prep_rx_mode(%struct.bnx2x* %0, i32 %1, %struct.bnx2x_rx_mode_ramrod_params* %2, %struct.bnx2x_virtf* %3, i64 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_rx_mode_ramrod_params*, align 8
  %9 = alloca %struct.bnx2x_virtf*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.bnx2x_vf_queue*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.bnx2x_rx_mode_ramrod_params* %2, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  store %struct.bnx2x_virtf* %3, %struct.bnx2x_virtf** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf* %12, i32 %13)
  store %struct.bnx2x_vf_queue* %14, %struct.bnx2x_vf_queue** %11, align 8
  %15 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %16 = call i32 @memset(%struct.bnx2x_rx_mode_ramrod_params* %15, i32 0, i32 64)
  %17 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %11, align 8
  %18 = getelementptr inbounds %struct.bnx2x_vf_queue, %struct.bnx2x_vf_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %21 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %20, i32 0, i32 10
  store i32 %19, i32* %21, align 4
  %22 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %23 = load %struct.bnx2x_vf_queue*, %struct.bnx2x_vf_queue** %11, align 8
  %24 = call i32 @vfq_cl_id(%struct.bnx2x_virtf* %22, %struct.bnx2x_vf_queue* %23)
  %25 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %26 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %25, i32 0, i32 9
  store i32 %24, i32* %26, align 8
  %27 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %28 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %27, i32 0, i32 0
  %29 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %30 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %29, i32 0, i32 8
  store i32* %28, i32** %30, align 8
  %31 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %32 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @FW_VF_HANDLE(i32 %33)
  %35 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %36 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %39 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %42 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %44 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %43, i32 0, i32 0
  %45 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %46 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %45, i32 0, i32 6
  store i32* %44, i32** %46, align 8
  %47 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %48 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %49 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @BNX2X_FILTER_RX_MODE_PENDING, align 4
  %51 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %52 = getelementptr inbounds %struct.bnx2x_virtf, %struct.bnx2x_virtf* %51, i32 0, i32 0
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = load i32, i32* @RAMROD_RX, align 4
  %55 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %55, i32 0, i32 4
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  %58 = load i32, i32* @RAMROD_TX, align 4
  %59 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %60 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %59, i32 0, i32 4
  %61 = call i32 @set_bit(i32 %58, i32* %60)
  %62 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %63 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rx_mode_rdata, i32 0, i32 0), align 4
  %65 = call i32 @bnx2x_vf_sp(%struct.bnx2x* %62, %struct.bnx2x_virtf* %63, i32 %64)
  %66 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %67 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %69 = load %struct.bnx2x_virtf*, %struct.bnx2x_virtf** %9, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rx_mode_rdata, i32 0, i32 0), align 4
  %71 = call i32 @bnx2x_vf_sp_map(%struct.bnx2x* %68, %struct.bnx2x_virtf* %69, i32 %70)
  %72 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %8, align 8
  %73 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %72, i32 0, i32 2
  store i32 %71, i32* %73, align 8
  ret void
}

declare dso_local %struct.bnx2x_vf_queue* @vfq_get(%struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @memset(%struct.bnx2x_rx_mode_ramrod_params*, i32, i32) #1

declare dso_local i32 @vfq_cl_id(%struct.bnx2x_virtf*, %struct.bnx2x_vf_queue*) #1

declare dso_local i32 @FW_VF_HANDLE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_vf_sp(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

declare dso_local i32 @bnx2x_vf_sp_map(%struct.bnx2x*, %struct.bnx2x_virtf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

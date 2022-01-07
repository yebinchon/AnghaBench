; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_update_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_update_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.octeon_mgmt = type { i32, i64 }
%union.cvmx_agl_gmx_txx_stat0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%union.cvmx_agl_gmx_txx_stat1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@AGL_GMX_TX_STAT0 = common dso_local global i64 0, align 8
@AGL_GMX_TX_STAT1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @octeon_mgmt_update_tx_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_update_tx_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.octeon_mgmt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %union.cvmx_agl_gmx_txx_stat0, align 8
  %6 = alloca %union.cvmx_agl_gmx_txx_stat1, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %7)
  store %struct.octeon_mgmt* %8, %struct.octeon_mgmt** %3, align 8
  %9 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %10 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AGL_GMX_TX_STAT0, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i8* @cvmx_read_csr(i64 %13)
  %15 = bitcast %union.cvmx_agl_gmx_txx_stat0* %5 to i8**
  store i8* %14, i8** %15, align 8
  %16 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %17 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AGL_GMX_TX_STAT1, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @cvmx_read_csr(i64 %20)
  %22 = bitcast %union.cvmx_agl_gmx_txx_stat1* %6 to i8**
  store i8* %21, i8** %22, align 8
  %23 = bitcast %union.cvmx_agl_gmx_txx_stat0* %5 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = bitcast %union.cvmx_agl_gmx_txx_stat0* %5 to %struct.TYPE_4__*
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = bitcast %union.cvmx_agl_gmx_txx_stat1* %6 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = bitcast %union.cvmx_agl_gmx_txx_stat1* %6 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %79

42:                                               ; preds = %37, %32, %27, %1
  %43 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %44 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %43, i32 0, i32 0
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = bitcast %union.cvmx_agl_gmx_txx_stat0* %5 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = bitcast %union.cvmx_agl_gmx_txx_stat0* %5 to %struct.TYPE_4__*
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %53
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = bitcast %union.cvmx_agl_gmx_txx_stat1* %6 to %struct.TYPE_6__*
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = bitcast %union.cvmx_agl_gmx_txx_stat1* %6 to %struct.TYPE_6__*
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %63, %66
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = add nsw i64 %72, %67
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %70, align 4
  %75 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %76 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %75, i32 0, i32 0
  %77 = load i64, i64* %4, align 8
  %78 = call i32 @spin_unlock_irqrestore(i32* %76, i64 %77)
  br label %79

79:                                               ; preds = %42, %37
  ret void
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

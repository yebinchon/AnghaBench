; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_enable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_enable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i64 }
%union.cvmx_agl_gmx_prtx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@AGL_GMX_PRT_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt*)* @octeon_mgmt_enable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_enable_link(%struct.octeon_mgmt* %0) #0 {
  %2 = alloca %struct.octeon_mgmt*, align 8
  %3 = alloca %union.cvmx_agl_gmx_prtx_cfg, align 4
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %2, align 8
  %4 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %5 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @cvmx_read_csr(i64 %8)
  %10 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to i32*
  store i32 %9, i32* %10, align 4
  %11 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 1, i32* %12, align 4
  %13 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  store i32 1, i32* %16, align 4
  %17 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %18 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to i32*
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @cvmx_write_csr(i64 %21, i32 %23)
  ret void
}

declare dso_local i32 @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_disable_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_disable_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i64 }
%union.cvmx_agl_gmx_prtx_cfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64 }

@AGL_GMX_PRT_CFG = common dso_local global i64 0, align 8
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt*)* @octeon_mgmt_disable_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_disable_link(%struct.octeon_mgmt* %0) #0 {
  %2 = alloca %struct.octeon_mgmt*, align 8
  %3 = alloca %union.cvmx_agl_gmx_prtx_cfg, align 8
  %4 = alloca i32, align 4
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %2, align 8
  %5 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %6 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i8* @cvmx_read_csr(i64 %9)
  %11 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to i8**
  store i8* %10, i8** %11, align 8
  %12 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  store i64 0, i64* %15, align 8
  %16 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  store i64 0, i64* %17, align 8
  %18 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %19 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %22 = add nsw i64 %20, %21
  %23 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @cvmx_write_csr(i64 %22, i8* %24)
  %26 = load i32, i32* @OCTEON_CN6XXX, align 4
  %27 = call i64 @OCTEON_IS_MODEL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %59

29:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %55, %29
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %58

33:                                               ; preds = %30
  %34 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %35 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i8* @cvmx_read_csr(i64 %38)
  %40 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to i8**
  store i8* %39, i8** %40, align 8
  %41 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %50, label %45

45:                                               ; preds = %33
  %46 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %3 to %struct.TYPE_2__*
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %45, %33
  br label %58

51:                                               ; preds = %45
  %52 = call i32 @mdelay(i32 1)
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %30

58:                                               ; preds = %50, %30
  br label %59

59:                                               ; preds = %58, %1
  ret void
}

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

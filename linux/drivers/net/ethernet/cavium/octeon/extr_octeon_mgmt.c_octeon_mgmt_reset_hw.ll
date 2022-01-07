; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_reset_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_reset_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i32, i64 }
%union.cvmx_mixx_ctl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%union.cvmx_mixx_bist = type { i8* }
%union.cvmx_agl_gmx_bist = type { i8* }

@MIX_CTL = common dso_local global i64 0, align 8
@MIX_BIST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"MIX failed BIST (0x%016llx)\0A\00", align 1
@CVMX_AGL_GMX_BIST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"AGL failed BIST (0x%016llx)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt*)* @octeon_mgmt_reset_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_reset_hw(%struct.octeon_mgmt* %0) #0 {
  %2 = alloca %struct.octeon_mgmt*, align 8
  %3 = alloca %union.cvmx_mixx_ctl, align 8
  %4 = alloca %union.cvmx_mixx_bist, align 8
  %5 = alloca %union.cvmx_agl_gmx_bist, align 8
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %2, align 8
  %6 = bitcast %union.cvmx_mixx_ctl* %3 to i8**
  store i8* null, i8** %6, align 8
  %7 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %8 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MIX_CTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = bitcast %union.cvmx_mixx_ctl* %3 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @cvmx_write_csr(i64 %11, i8* %13)
  br label %15

15:                                               ; preds = %23, %1
  %16 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %17 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MIX_CTL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i8* @cvmx_read_csr(i64 %20)
  %22 = bitcast %union.cvmx_mixx_ctl* %3 to i8**
  store i8* %21, i8** %22, align 8
  br label %23

23:                                               ; preds = %15
  %24 = bitcast %union.cvmx_mixx_ctl* %3 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %15, label %28

28:                                               ; preds = %23
  %29 = bitcast %union.cvmx_mixx_ctl* %3 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %32 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MIX_CTL, align 8
  %35 = add nsw i64 %33, %34
  %36 = bitcast %union.cvmx_mixx_ctl* %3 to i8**
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @cvmx_write_csr(i64 %35, i8* %37)
  %39 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %40 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MIX_CTL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i8* @cvmx_read_csr(i64 %43)
  %45 = call i32 @octeon_io_clk_delay(i32 64)
  %46 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %47 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MIX_BIST, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i8* @cvmx_read_csr(i64 %50)
  %52 = bitcast %union.cvmx_mixx_bist* %4 to i8**
  store i8* %51, i8** %52, align 8
  %53 = bitcast %union.cvmx_mixx_bist* %4 to i8**
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %28
  %57 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %58 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = bitcast %union.cvmx_mixx_bist* %4 to i8**
  %61 = load i8*, i8** %60, align 8
  %62 = ptrtoint i8* %61 to i64
  %63 = call i32 @dev_warn(i32 %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %56, %28
  %65 = load i64, i64* @CVMX_AGL_GMX_BIST, align 8
  %66 = call i8* @cvmx_read_csr(i64 %65)
  %67 = bitcast %union.cvmx_agl_gmx_bist* %5 to i8**
  store i8* %66, i8** %67, align 8
  %68 = bitcast %union.cvmx_agl_gmx_bist* %5 to i8**
  %69 = load i8*, i8** %68, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %73 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = bitcast %union.cvmx_agl_gmx_bist* %5 to i8**
  %76 = load i8*, i8** %75, align 8
  %77 = ptrtoint i8* %76 to i64
  %78 = call i32 @dev_warn(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i64 %77)
  br label %79

79:                                               ; preds = %71, %64
  ret void
}

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @octeon_io_clk_delay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

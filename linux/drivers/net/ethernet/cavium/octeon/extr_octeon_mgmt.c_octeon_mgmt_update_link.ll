; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_update_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i64, i64, %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i32, i32, i32 }
%union.cvmx_agl_gmx_prtx_cfg = type { i8*, [16 x i8] }
%union.cvmx_agl_gmx_txx_clk = type { i8* }
%union.cvmx_agl_prtx_ctl = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AGL_GMX_PRT_CFG = common dso_local global i64 0, align 8
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@AGL_GMX_TX_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt*)* @octeon_mgmt_update_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_update_link(%struct.octeon_mgmt* %0) #0 {
  %2 = alloca %struct.octeon_mgmt*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %union.cvmx_agl_gmx_prtx_cfg, align 8
  %6 = alloca %union.cvmx_agl_gmx_txx_clk, align 8
  %7 = alloca %union.cvmx_agl_prtx_ctl, align 8
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %2, align 8
  %8 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %9 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %8, i32 0, i32 2
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %4, align 8
  %14 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %15 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i8* @cvmx_read_csr(i64 %18)
  %20 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to i8**
  store i8* %19, i8** %20, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  br label %34

28:                                               ; preds = %1
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %25
  %35 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %36 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %84 [
    i32 10, label %38
    i32 100, label %52
    i32 1000, label %66
    i32 0, label %83
  ]

38:                                               ; preds = %34
  %39 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  store i32 0, i32* %40, align 4
  %41 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  store i32 0, i32* %42, align 8
  %43 = load i32, i32* @OCTEON_CN6XXX, align 4
  %44 = call i64 @OCTEON_IS_MODEL(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %38
  %47 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 4
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %46, %38
  br label %85

52:                                               ; preds = %34
  %53 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  %57 = load i32, i32* @OCTEON_CN6XXX, align 4
  %58 = call i64 @OCTEON_IS_MODEL(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %52
  %61 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  store i32 1, i32* %62, align 4
  %63 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  store i32 0, i32* %64, align 8
  br label %65

65:                                               ; preds = %60, %52
  br label %85

66:                                               ; preds = %34
  %67 = load i32, i32* @OCTEON_CN6XXX, align 4
  %68 = call i64 @OCTEON_IS_MODEL(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %66
  %71 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  %73 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  store i32 0, i32* %74, align 8
  %75 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i32 1, i32* %76, align 8
  %77 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %70, %66
  br label %85

83:                                               ; preds = %34
  br label %84

84:                                               ; preds = %34, %83
  br label %85

85:                                               ; preds = %84, %82, %65, %51
  %86 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %87 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %90 = add nsw i64 %88, %89
  %91 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to i8**
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @cvmx_write_csr(i64 %90, i8* %92)
  %94 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %95 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AGL_GMX_PRT_CFG, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i8* @cvmx_read_csr(i64 %98)
  %100 = bitcast %union.cvmx_agl_gmx_prtx_cfg* %5 to i8**
  store i8* %99, i8** %100, align 8
  %101 = load i32, i32* @OCTEON_CN6XXX, align 4
  %102 = call i64 @OCTEON_IS_MODEL(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %150

104:                                              ; preds = %85
  %105 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %106 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = call i8* @cvmx_read_csr(i64 %107)
  %109 = bitcast %union.cvmx_agl_prtx_ctl* %7 to i8**
  store i8* %108, i8** %109, align 8
  %110 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %111 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AGL_GMX_TX_CLK, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i8* @cvmx_read_csr(i64 %114)
  %116 = bitcast %union.cvmx_agl_gmx_txx_clk* %6 to i8**
  store i8* %115, i8** %116, align 8
  %117 = bitcast %union.cvmx_agl_gmx_txx_clk* %6 to %struct.TYPE_6__*
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = bitcast %union.cvmx_agl_prtx_ctl* %7 to %struct.TYPE_5__*
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %104
  %124 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %125 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = bitcast %union.cvmx_agl_gmx_txx_clk* %6 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  store i32 50, i32* %130, align 8
  br label %140

131:                                              ; preds = %123
  %132 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %133 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = icmp eq i32 %134, 100
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = bitcast %union.cvmx_agl_gmx_txx_clk* %6 to %struct.TYPE_6__*
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 5, i32* %138, align 8
  br label %139

139:                                              ; preds = %136, %131
  br label %140

140:                                              ; preds = %139, %128
  br label %141

141:                                              ; preds = %140, %104
  %142 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %2, align 8
  %143 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AGL_GMX_TX_CLK, align 8
  %146 = add nsw i64 %144, %145
  %147 = bitcast %union.cvmx_agl_gmx_txx_clk* %6 to i8**
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @cvmx_write_csr(i64 %146, i8* %148)
  br label %150

150:                                              ; preds = %141, %85
  ret void
}

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_write_csr(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

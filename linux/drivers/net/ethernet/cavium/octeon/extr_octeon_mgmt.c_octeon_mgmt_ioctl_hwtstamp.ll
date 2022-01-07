; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_ioctl_hwtstamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_ioctl_hwtstamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifreq = type { i32 }
%struct.octeon_mgmt = type { i32, i64 }
%struct.hwtstamp_config = type { i32, i32, i64 }
%union.cvmx_mio_ptp_clock_cfg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%union.cvmx_agl_gmx_rxx_frm_ctl = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCTEON_CN6XXX = common dso_local global i32 0, align 4
@CVMX_MIO_PTP_CLOCK_CFG = common dso_local global i64 0, align 8
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@CVMX_MIO_PTP_CLOCK_COMP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"PTP Clock using sclk reference @ %lldHz\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"PTP Clock using GPIO%d @ %lld Hz\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@AGL_GMX_RX_FRM_CTL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @octeon_mgmt_ioctl_hwtstamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mgmt_ioctl_hwtstamp(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_mgmt*, align 8
  %9 = alloca %struct.hwtstamp_config, align 8
  %10 = alloca %union.cvmx_mio_ptp_clock_cfg, align 4
  %11 = alloca %union.cvmx_agl_gmx_rxx_frm_ctl, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.octeon_mgmt* @netdev_priv(%struct.net_device* %15)
  store %struct.octeon_mgmt* %16, %struct.octeon_mgmt** %8, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @copy_from_user(%struct.hwtstamp_config* %9, i32 %19, i32 16)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EFAULT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %170

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %170

32:                                               ; preds = %25
  %33 = load i32, i32* @OCTEON_CN6XXX, align 4
  %34 = call i64 @OCTEON_IS_MODEL(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %91

36:                                               ; preds = %32
  %37 = load i64, i64* @CVMX_MIO_PTP_CLOCK_CFG, align 8
  %38 = call i8* @cvmx_read_csr(i64 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to i32*
  store i32 %39, i32* %40, align 4
  %41 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %36
  %46 = load i32, i32* @NSEC_PER_SEC, align 4
  %47 = shl i32 %46, 32
  %48 = call i32 (...) @octeon_get_io_clock_rate()
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %13, align 4
  %50 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to %struct.TYPE_3__*
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %45
  %55 = load i64, i64* @CVMX_MIO_PTP_CLOCK_COMP, align 8
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @cvmx_write_csr(i64 %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = load i32, i32* @NSEC_PER_SEC, align 4
  %61 = shl i32 %60, 32
  %62 = load i32, i32* %13, align 4
  %63 = sdiv i32 %61, %62
  %64 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %59, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %78

65:                                               ; preds = %36
  %66 = load i64, i64* @CVMX_MIO_PTP_CLOCK_COMP, align 8
  %67 = call i8* @cvmx_read_csr(i64 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %14, align 4
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to %struct.TYPE_3__*
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @NSEC_PER_SEC, align 4
  %74 = shl i32 %73, 32
  %75 = load i32, i32* %14, align 4
  %76 = sdiv i32 %74, %75
  %77 = call i32 (%struct.net_device*, i8*, i32, ...) @netdev_info(%struct.net_device* %69, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %65, %58
  %79 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to %struct.TYPE_3__*
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to %struct.TYPE_3__*
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 4
  %86 = load i64, i64* @CVMX_MIO_PTP_CLOCK_CFG, align 8
  %87 = bitcast %union.cvmx_mio_ptp_clock_cfg* %10 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @cvmx_write_csr(i64 %86, i32 %88)
  br label %90

90:                                               ; preds = %83, %78
  store i32 1, i32* %12, align 4
  br label %91

91:                                               ; preds = %90, %32
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %4, align 4
  br label %170

97:                                               ; preds = %91
  %98 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  switch i32 %99, label %101 [
    i32 129, label %100
    i32 128, label %100
  ]

100:                                              ; preds = %97, %97
  br label %104

101:                                              ; preds = %97
  %102 = load i32, i32* @ERANGE, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %4, align 4
  br label %170

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  switch i32 %106, label %157 [
    i32 144, label %107
    i32 145, label %128
    i32 130, label %128
    i32 141, label %128
    i32 140, label %128
    i32 142, label %128
    i32 133, label %128
    i32 132, label %128
    i32 134, label %128
    i32 136, label %128
    i32 135, label %128
    i32 137, label %128
    i32 138, label %128
    i32 131, label %128
    i32 139, label %128
    i32 143, label %128
  ]

107:                                              ; preds = %104
  %108 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %109 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %111 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @AGL_GMX_RX_FRM_CTL, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i8* @cvmx_read_csr(i64 %114)
  %116 = ptrtoint i8* %115 to i32
  %117 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %11 to i32*
  store i32 %116, i32* %117, align 4
  %118 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %11 to %struct.TYPE_4__*
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 4
  %120 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %121 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @AGL_GMX_RX_FRM_CTL, align 8
  %124 = add nsw i64 %122, %123
  %125 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %11 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @cvmx_write_csr(i64 %124, i32 %126)
  br label %160

128:                                              ; preds = %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104, %104
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %131 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %130, i32 0, i32 0
  store i32 %129, i32* %131, align 8
  %132 = getelementptr inbounds %struct.hwtstamp_config, %struct.hwtstamp_config* %9, i32 0, i32 1
  store i32 145, i32* %132, align 4
  %133 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %134 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %156

137:                                              ; preds = %128
  %138 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %139 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @AGL_GMX_RX_FRM_CTL, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i8* @cvmx_read_csr(i64 %142)
  %144 = ptrtoint i8* %143 to i32
  %145 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %11 to i32*
  store i32 %144, i32* %145, align 4
  %146 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %11 to %struct.TYPE_4__*
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  store i32 1, i32* %147, align 4
  %148 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %8, align 8
  %149 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @AGL_GMX_RX_FRM_CTL, align 8
  %152 = add nsw i64 %150, %151
  %153 = bitcast %union.cvmx_agl_gmx_rxx_frm_ctl* %11 to i32*
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @cvmx_write_csr(i64 %152, i32 %154)
  br label %156

156:                                              ; preds = %137, %128
  br label %160

157:                                              ; preds = %104
  %158 = load i32, i32* @ERANGE, align 4
  %159 = sub nsw i32 0, %158
  store i32 %159, i32* %4, align 4
  br label %170

160:                                              ; preds = %156, %107
  %161 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %162 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i64 @copy_to_user(i32 %163, %struct.hwtstamp_config* %9, i32 16)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %160
  %167 = load i32, i32* @EFAULT, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %4, align 4
  br label %170

169:                                              ; preds = %160
  store i32 0, i32* %4, align 4
  br label %170

170:                                              ; preds = %169, %166, %157, %101, %94, %29, %22
  %171 = load i32, i32* %4, align 4
  ret i32 %171
}

declare dso_local %struct.octeon_mgmt* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @copy_from_user(%struct.hwtstamp_config*, i32, i32) #1

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i64) #1

declare dso_local i32 @octeon_get_io_clock_rate(...) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, ...) #1

declare dso_local i64 @copy_to_user(i32, %struct.hwtstamp_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

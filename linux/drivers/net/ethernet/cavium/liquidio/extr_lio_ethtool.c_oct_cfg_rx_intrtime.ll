; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_oct_cfg_rx_intrtime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_oct_cfg_rx_intrtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lio = type { %struct.octeon_device* }
%struct.octeon_device = type { i32, i32, i8*, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.oct_intrmod_cfg = type { i32, i8* }
%struct.ethtool_coalesce = type { i8* }
%struct.octeon_cn6xxx = type { i32 }

@CN6XXX_OQ_INTR_TIME = common dso_local global i8* null, align 8
@CN6XXX_SLI_OQ_INT_LEVEL_TIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lio*, %struct.oct_intrmod_cfg*, %struct.ethtool_coalesce*)* @oct_cfg_rx_intrtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct_cfg_rx_intrtime(%struct.lio* %0, %struct.oct_intrmod_cfg* %1, %struct.ethtool_coalesce* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.oct_intrmod_cfg*, align 8
  %7 = alloca %struct.ethtool_coalesce*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.octeon_cn6xxx*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.lio* %0, %struct.lio** %5, align 8
  store %struct.oct_intrmod_cfg* %1, %struct.oct_intrmod_cfg** %6, align 8
  store %struct.ethtool_coalesce* %2, %struct.ethtool_coalesce** %7, align 8
  %16 = load %struct.lio*, %struct.lio** %5, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 0
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %8, align 8
  %19 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %144 [
    i32 128, label %22
    i32 129, label %22
    i32 131, label %50
    i32 130, label %100
  ]

22:                                               ; preds = %3, %3
  %23 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %26, %struct.octeon_cn6xxx** %11, align 8
  %27 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %28 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %22
  %32 = load i8*, i8** @CN6XXX_OQ_INTR_TIME, align 8
  store i8* %32, i8** %10, align 8
  br label %37

33:                                               ; preds = %22
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  store i8* %36, i8** %10, align 8
  br label %37

37:                                               ; preds = %33, %31
  %38 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = call i8* @lio_cn6xxx_get_oq_ticks(%struct.octeon_device* %38, i8* %39)
  store i8* %40, i8** %9, align 8
  %41 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %42 = load i32, i32* @CN6XXX_SLI_OQ_INT_LEVEL_TIME, align 4
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 @octeon_write_csr(%struct.octeon_device* %41, i32 %42, i8* %43)
  %45 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %11, align 8
  %46 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @CFG_SET_OQ_INTR_TIME(i32 %47, i8* %48)
  br label %147

50:                                               ; preds = %3
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %6, align 8
  %57 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %56, i32 0, i32 1
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %10, align 8
  br label %63

59:                                               ; preds = %50
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  store i8* %62, i8** %10, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @cn23xx_pf_get_oq_ticks(%struct.octeon_device* %64, i8* %65)
  store i32 %66, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %67

67:                                               ; preds = %90, %63
  %68 = load i32, i32* %13, align 4
  %69 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %70 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %93

73:                                               ; preds = %67
  %74 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %75 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %13, align 4
  %80 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32 %81)
  %83 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %6, align 8
  %84 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %12, align 4
  %87 = shl i32 %86, 32
  %88 = or i32 %85, %87
  %89 = call i32 @octeon_write_csr64(%struct.octeon_device* %80, i32 %82, i32 %88)
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %67

93:                                               ; preds = %67
  %94 = load i8*, i8** %10, align 8
  %95 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %6, align 8
  %96 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %95, i32 0, i32 1
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %99 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %98, i32 0, i32 2
  store i8* %97, i8** %99, align 8
  br label %147

100:                                              ; preds = %3
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %100
  %106 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %6, align 8
  %107 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %106, i32 0, i32 1
  %108 = load i8*, i8** %107, align 8
  store i8* %108, i8** %10, align 8
  br label %113

109:                                              ; preds = %100
  %110 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %7, align 8
  %111 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %10, align 8
  br label %113

113:                                              ; preds = %109, %105
  %114 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = call i32 @cn23xx_vf_get_oq_ticks(%struct.octeon_device* %114, i8* %115)
  store i32 %116, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %117

117:                                              ; preds = %134, %113
  %118 = load i32, i32* %15, align 4
  %119 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %120 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp slt i32 %118, %121
  br i1 %122, label %123, label %137

123:                                              ; preds = %117
  %124 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i32 %125)
  %127 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %6, align 8
  %128 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %14, align 4
  %131 = shl i32 %130, 32
  %132 = or i32 %129, %131
  %133 = call i32 @octeon_write_csr64(%struct.octeon_device* %124, i32 %126, i32 %132)
  br label %134

134:                                              ; preds = %123
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %15, align 4
  br label %117

137:                                              ; preds = %117
  %138 = load i8*, i8** %10, align 8
  %139 = load %struct.oct_intrmod_cfg*, %struct.oct_intrmod_cfg** %6, align 8
  %140 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %143 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %142, i32 0, i32 2
  store i8* %141, i8** %143, align 8
  br label %147

144:                                              ; preds = %3
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %4, align 4
  br label %148

147:                                              ; preds = %137, %93, %37
  store i32 0, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i8* @lio_cn6xxx_get_oq_ticks(%struct.octeon_device*, i8*) #1

declare dso_local i32 @octeon_write_csr(%struct.octeon_device*, i32, i8*) #1

declare dso_local i32 @CFG_SET_OQ_INTR_TIME(i32, i8*) #1

declare dso_local i32 @cn23xx_pf_get_oq_ticks(%struct.octeon_device*, i8*) #1

declare dso_local i32 @octeon_write_csr64(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @CN23XX_SLI_OQ_PKT_INT_LEVELS(i32) #1

declare dso_local i32 @cn23xx_vf_get_oq_ticks(%struct.octeon_device*, i8*) #1

declare dso_local i32 @CN23XX_VF_SLI_OQ_PKT_INT_LEVELS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

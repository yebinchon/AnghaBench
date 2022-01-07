; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_intr_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_set_intr_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i64, i64 }
%struct.lio = type { %struct.TYPE_8__, %struct.octeon_device* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.octeon_device = type { i32, i8*, i8*, i8*, %struct.TYPE_10__*, %struct.TYPE_9__** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.oct_intrmod_cfg = type { i32, i32, i8*, i8*, i8*, i32 }

@CN6XXX_DB_MIN = common dso_local global i32 0, align 4
@CN6XXX_DB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"LIQUIDIO: Invalid tx-frames:%d. Range is min:%d max:%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @lio_set_intr_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_intr_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca %struct.oct_intrmod_cfg, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.lio* @GET_LIO(%struct.net_device* %14)
  store %struct.lio* %15, %struct.lio** %6, align 8
  %16 = load %struct.lio*, %struct.lio** %6, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 1
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %8, align 8
  %19 = bitcast %struct.oct_intrmod_cfg* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 40, i1 false)
  %20 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %84 [
    i32 128, label %23
    i32 129, label %23
    i32 131, label %83
    i32 130, label %83
  ]

23:                                               ; preds = %2, %2
  %24 = load i32, i32* @CN6XXX_DB_MIN, align 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @CN6XXX_DB_MAX, align 4
  store i32 %25, i32* %12, align 4
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %23
  %32 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %12, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %38

38:                                               ; preds = %65, %37
  %39 = load i64, i64* %10, align 8
  %40 = load %struct.lio*, %struct.lio** %6, align 8
  %41 = getelementptr inbounds %struct.lio, %struct.lio* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %39, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load %struct.lio*, %struct.lio** %6, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %11, align 8
  %55 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 5
  %60 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %59, align 8
  %61 = load i64, i64* %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %60, i64 %61
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store i32 %57, i32* %64, align 4
  br label %65

65:                                               ; preds = %45
  %66 = load i64, i64* %10, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %38

68:                                               ; preds = %38
  br label %82

69:                                               ; preds = %31, %23
  %70 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %71 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %70, i32 0, i32 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @dev_err(i32* %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %169

82:                                               ; preds = %68
  br label %87

83:                                               ; preds = %2, %2
  br label %87

84:                                               ; preds = %2
  %85 = load i32, i32* @EINVAL, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %169

87:                                               ; preds = %83, %82
  %88 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %89 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 0
  store i32 %93, i32* %94, align 8
  %95 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %103 = call i32 @octeon_get_conf(%struct.octeon_device* %102)
  %104 = call i8* @CFG_GET_OQ_INTR_PKT(i32 %103)
  %105 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 4
  store i8* %104, i8** %105, align 8
  %106 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %107 = call i32 @octeon_get_conf(%struct.octeon_device* %106)
  %108 = call i8* @CFG_GET_OQ_INTR_TIME(i32 %107)
  %109 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 3
  store i8* %108, i8** %109, align 8
  %110 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %111 = call i32 @octeon_get_conf(%struct.octeon_device* %110)
  %112 = call i8* @CFG_GET_IQ_INTR_PKT(i32 %111)
  %113 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 2
  store i8* %112, i8** %113, align 8
  %114 = load %struct.lio*, %struct.lio** %6, align 8
  %115 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %116 = call i32 @oct_cfg_adaptive_intr(%struct.lio* %114, %struct.oct_intrmod_cfg* %9, %struct.ethtool_coalesce* %115)
  store i32 %116, i32* %7, align 4
  %117 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %118 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %136, label %121

121:                                              ; preds = %87
  %122 = load %struct.lio*, %struct.lio** %6, align 8
  %123 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %124 = call i32 @oct_cfg_rx_intrtime(%struct.lio* %122, %struct.oct_intrmod_cfg* %9, %struct.ethtool_coalesce* %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %121
  br label %167

128:                                              ; preds = %121
  %129 = load %struct.lio*, %struct.lio** %6, align 8
  %130 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %131 = call i32 @oct_cfg_rx_intrcnt(%struct.lio* %129, %struct.oct_intrmod_cfg* %9, %struct.ethtool_coalesce* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  br label %167

135:                                              ; preds = %128
  br label %147

136:                                              ; preds = %87
  %137 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %138 = call i32 @octeon_get_conf(%struct.octeon_device* %137)
  %139 = call i8* @CFG_GET_OQ_INTR_TIME(i32 %138)
  %140 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %141 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %143 = call i32 @octeon_get_conf(%struct.octeon_device* %142)
  %144 = call i8* @CFG_GET_OQ_INTR_PKT(i32 %143)
  %145 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %146 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %145, i32 0, i32 2
  store i8* %144, i8** %146, align 8
  br label %147

147:                                              ; preds = %136, %135
  %148 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %149 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %148, i32 0, i32 1
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %160, label %152

152:                                              ; preds = %147
  %153 = load %struct.lio*, %struct.lio** %6, align 8
  %154 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %155 = call i32 @oct_cfg_tx_intrcnt(%struct.lio* %153, %struct.oct_intrmod_cfg* %9, %struct.ethtool_coalesce* %154)
  store i32 %155, i32* %7, align 4
  %156 = load i32, i32* %7, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  br label %167

159:                                              ; preds = %152
  br label %166

160:                                              ; preds = %147
  %161 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %162 = call i32 @octeon_get_conf(%struct.octeon_device* %161)
  %163 = call i8* @CFG_GET_IQ_INTR_PKT(i32 %162)
  %164 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %165 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %160, %159
  store i32 0, i32* %3, align 4
  br label %169

167:                                              ; preds = %158, %134, %127
  %168 = load i32, i32* %7, align 4
  store i32 %168, i32* %3, align 4
  br label %169

169:                                              ; preds = %167, %166, %84, %69
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

declare dso_local i8* @CFG_GET_OQ_INTR_PKT(i32) #1

declare dso_local i32 @octeon_get_conf(%struct.octeon_device*) #1

declare dso_local i8* @CFG_GET_OQ_INTR_TIME(i32) #1

declare dso_local i8* @CFG_GET_IQ_INTR_PKT(i32) #1

declare dso_local i32 @oct_cfg_adaptive_intr(%struct.lio*, %struct.oct_intrmod_cfg*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @oct_cfg_rx_intrtime(%struct.lio*, %struct.oct_intrmod_cfg*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @oct_cfg_rx_intrcnt(%struct.lio*, %struct.oct_intrmod_cfg*, %struct.ethtool_coalesce*) #1

declare dso_local i32 @oct_cfg_tx_intrcnt(%struct.lio*, %struct.oct_intrmod_cfg*, %struct.ethtool_coalesce*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

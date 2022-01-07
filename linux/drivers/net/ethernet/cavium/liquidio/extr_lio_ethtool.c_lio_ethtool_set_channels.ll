; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_ethtool_set_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_ethtool_set_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 (%struct.net_device*)*, i32 (%struct.net_device*)* }
%struct.ethtool_channels = type { i32, i64, i64, i64 }
%struct.lio = type { %struct.TYPE_9__, %struct.octeon_device* }
%struct.TYPE_9__ = type { i32 }
%struct.octeon_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_config = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"1.6.1\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Minimum firmware version required is 1.6.1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RPVF_POS = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RPVF_MASK = common dso_local global i32 0, align 4
@LIO_IFSTATE_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_channels*)* @lio_ethtool_set_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_ethtool_set_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_channels*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.octeon_config*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.lio* @GET_LIO(%struct.net_device* %14)
  store %struct.lio* %15, %struct.lio** %8, align 8
  %16 = load %struct.lio*, %struct.lio** %8, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 1
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %9, align 8
  store i32 0, i32* %10, align 4
  %19 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %20 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %19, i32 0, i32 3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @strcmp(i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %2
  %26 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %155

33:                                               ; preds = %2
  %34 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %38
  %44 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48, %43, %38, %33
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %155

56:                                               ; preds = %48
  %57 = load %struct.ethtool_channels*, %struct.ethtool_channels** %5, align 8
  %58 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %6, align 4
  %60 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %61 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %81

63:                                               ; preds = %56
  %64 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %65 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.lio*, %struct.lio** %8, align 8
  %71 = getelementptr inbounds %struct.lio, %struct.lio* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %7, align 4
  br label %80

74:                                               ; preds = %63
  %75 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %76 = load i32, i32* @cn23xx_pf, align 4
  %77 = call %struct.octeon_config* @CHIP_CONF(%struct.octeon_device* %75, i32 %76)
  store %struct.octeon_config* %77, %struct.octeon_config** %11, align 8
  %78 = load %struct.octeon_config*, %struct.octeon_config** %11, align 8
  %79 = call i32 @CFG_GET_IQ_MAX_Q(%struct.octeon_config* %78)
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %74, %69
  br label %100

81:                                               ; preds = %56
  %82 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %83 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %81
  store i32 0, i32* %12, align 4
  %86 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i32 0)
  store i32 %86, i32* %13, align 4
  %87 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %88 = load i32, i32* %13, align 4
  %89 = call i32 @octeon_read_csr64(%struct.octeon_device* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RPVF_POS, align 4
  %92 = ashr i32 %90, %91
  store i32 %92, i32* %12, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RPVF_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %7, align 4
  br label %99

96:                                               ; preds = %81
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %155

99:                                               ; preds = %85
  br label %100

100:                                              ; preds = %99, %80
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %107, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %6, align 4
  %106 = icmp slt i32 %105, 1
  br i1 %106, label %107, label %110

107:                                              ; preds = %104, %100
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %3, align 4
  br label %155

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %113 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %111, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %155

117:                                              ; preds = %110
  %118 = load %struct.lio*, %struct.lio** %8, align 8
  %119 = load i32, i32* @LIO_IFSTATE_RESETTING, align 4
  %120 = call i32 @ifstate_set(%struct.lio* %118, i32 %119)
  %121 = load %struct.net_device*, %struct.net_device** %4, align 8
  %122 = call i64 @netif_running(%struct.net_device* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %117
  %125 = load %struct.net_device*, %struct.net_device** %4, align 8
  %126 = getelementptr inbounds %struct.net_device, %struct.net_device* %125, i32 0, i32 0
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %128, align 8
  %130 = load %struct.net_device*, %struct.net_device** %4, align 8
  %131 = call i32 %129(%struct.net_device* %130)
  store i32 1, i32* %10, align 4
  br label %132

132:                                              ; preds = %124, %117
  %133 = load %struct.net_device*, %struct.net_device** %4, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @lio_reset_queues(%struct.net_device* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %3, align 4
  br label %155

140:                                              ; preds = %132
  %141 = load i32, i32* %10, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %140
  %144 = load %struct.net_device*, %struct.net_device** %4, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %147, align 8
  %149 = load %struct.net_device*, %struct.net_device** %4, align 8
  %150 = call i32 %148(%struct.net_device* %149)
  br label %151

151:                                              ; preds = %143, %140
  %152 = load %struct.lio*, %struct.lio** %8, align 8
  %153 = load i32, i32* @LIO_IFSTATE_RESETTING, align 4
  %154 = call i32 @ifstate_reset(%struct.lio* %152, i32 %153)
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %151, %137, %116, %107, %96, %53, %25
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local %struct.octeon_config* @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i32 @CFG_GET_IQ_MAX_Q(%struct.octeon_config*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

declare dso_local i32 @ifstate_set(%struct.lio*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @lio_reset_queues(%struct.net_device*, i32) #1

declare dso_local i32 @ifstate_reset(%struct.lio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

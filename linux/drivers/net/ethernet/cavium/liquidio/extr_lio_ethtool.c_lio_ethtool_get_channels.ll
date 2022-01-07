; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_ethtool_get_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_ethtool_get_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_channels = type { i8*, i8*, i8*, i8*, i8*, i8* }
%struct.lio = type { %struct.TYPE_4__, i32, %struct.octeon_device* }
%struct.TYPE_4__ = type { i8* }
%struct.octeon_device = type { i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.octeon_config = type { i32 }

@cn6xxx = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RPVF_POS = common dso_local global i32 0, align 4
@CN23XX_PKT_INPUT_CTL_RPVF_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_channels*)* @lio_ethtool_get_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_ethtool_get_channels(%struct.net_device* %0, %struct.ethtool_channels* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_channels*, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.octeon_config*, align 8
  %14 = alloca %struct.octeon_config*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_channels* %1, %struct.ethtool_channels** %4, align 8
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call %struct.lio* @GET_LIO(%struct.net_device* %17)
  store %struct.lio* %18, %struct.lio** %5, align 8
  %19 = load %struct.lio*, %struct.lio** %5, align 8
  %20 = getelementptr inbounds %struct.lio, %struct.lio* %19, i32 0, i32 2
  %21 = load %struct.octeon_device*, %struct.octeon_device** %20, align 8
  store %struct.octeon_device* %21, %struct.octeon_device** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  %22 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %23 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %27 = load i32, i32* @cn6xxx, align 4
  %28 = call %struct.octeon_config* @CHIP_CONF(%struct.octeon_device* %26, i32 %27)
  store %struct.octeon_config* %28, %struct.octeon_config** %13, align 8
  %29 = load %struct.octeon_config*, %struct.octeon_config** %13, align 8
  %30 = call i8* @CFG_GET_OQ_MAX_Q(%struct.octeon_config* %29)
  store i8* %30, i8** %7, align 8
  %31 = load %struct.octeon_config*, %struct.octeon_config** %13, align 8
  %32 = call i8* @CFG_GET_IQ_MAX_Q(%struct.octeon_config* %31)
  store i8* %32, i8** %8, align 8
  %33 = load %struct.octeon_config*, %struct.octeon_config** %13, align 8
  %34 = load %struct.lio*, %struct.lio** %5, align 8
  %35 = getelementptr inbounds %struct.lio, %struct.lio* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i8* @CFG_GET_NUM_RXQS_NIC_IF(%struct.octeon_config* %33, i32 %36)
  store i8* %37, i8** %10, align 8
  %38 = load %struct.octeon_config*, %struct.octeon_config** %13, align 8
  %39 = load %struct.lio*, %struct.lio** %5, align 8
  %40 = getelementptr inbounds %struct.lio, %struct.lio* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @CFG_GET_NUM_TXQS_NIC_IF(%struct.octeon_config* %38, i32 %41)
  store i8* %42, i8** %9, align 8
  br label %90

43:                                               ; preds = %2
  %44 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %45 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %43
  %48 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load %struct.lio*, %struct.lio** %5, align 8
  %55 = getelementptr inbounds %struct.lio, %struct.lio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  store i8* %57, i8** %12, align 8
  br label %64

58:                                               ; preds = %47
  %59 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %60 = load i32, i32* @cn23xx_pf, align 4
  %61 = call %struct.octeon_config* @CHIP_CONF(%struct.octeon_device* %59, i32 %60)
  store %struct.octeon_config* %61, %struct.octeon_config** %14, align 8
  %62 = load %struct.octeon_config*, %struct.octeon_config** %14, align 8
  %63 = call i8* @CFG_GET_IQ_MAX_Q(%struct.octeon_config* %62)
  store i8* %63, i8** %12, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %11, align 8
  br label %89

68:                                               ; preds = %43
  %69 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %70 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %68
  store i32 0, i32* %15, align 4
  %73 = call i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i32 0)
  store i32 %73, i32* %16, align 4
  %74 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 @octeon_read_csr64(%struct.octeon_device* %74, i32 %75)
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RPVF_POS, align 4
  %79 = ashr i32 %77, %78
  store i32 %79, i32* %15, align 4
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* @CN23XX_PKT_INPUT_CTL_RPVF_MASK, align 4
  %82 = and i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = inttoptr i64 %83 to i8*
  store i8* %84, i8** %12, align 8
  %85 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %86 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %11, align 8
  br label %88

88:                                               ; preds = %72, %68
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %89, %25
  %91 = load i8*, i8** %7, align 8
  %92 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %93 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %92, i32 0, i32 5
  store i8* %91, i8** %93, align 8
  %94 = load i8*, i8** %8, align 8
  %95 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %96 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load i8*, i8** %12, align 8
  %98 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load i8*, i8** %10, align 8
  %101 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %102 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load i8*, i8** %9, align 8
  %104 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %105 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %104, i32 0, i32 1
  store i8* %103, i8** %105, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = load %struct.ethtool_channels*, %struct.ethtool_channels** %4, align 8
  %108 = getelementptr inbounds %struct.ethtool_channels, %struct.ethtool_channels* %107, i32 0, i32 0
  store i8* %106, i8** %108, align 8
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local %struct.octeon_config* @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i8* @CFG_GET_OQ_MAX_Q(%struct.octeon_config*) #1

declare dso_local i8* @CFG_GET_IQ_MAX_Q(%struct.octeon_config*) #1

declare dso_local i8* @CFG_GET_NUM_RXQS_NIC_IF(%struct.octeon_config*, i32) #1

declare dso_local i8* @CFG_GET_NUM_TXQS_NIC_IF(%struct.octeon_config*, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @CN23XX_VF_SLI_IQ_PKT_CONTROL64(i32) #1

declare dso_local i32 @octeon_read_csr64(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

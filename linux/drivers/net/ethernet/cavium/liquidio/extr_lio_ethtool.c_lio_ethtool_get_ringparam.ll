; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_ethtool_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_ethtool_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i64, i64, i64, i8*, i8*, i8*, i8* }
%struct.lio = type { i32, %struct.octeon_device* }
%struct.octeon_device = type { %struct.TYPE_4__**, %struct.TYPE_3__** }
%struct.TYPE_4__ = type { i8* }
%struct.TYPE_3__ = type { i8* }
%struct.octeon_config = type { i32 }

@LIO_IFSTATE_RESETTING = common dso_local global i32 0, align 4
@cn6xxx = common dso_local global i32 0, align 4
@CN6XXX_MAX_IQ_DESCRIPTORS = common dso_local global i8* null, align 8
@CN6XXX_MAX_OQ_DESCRIPTORS = common dso_local global i8* null, align 8
@CN23XX_MAX_IQ_DESCRIPTORS = common dso_local global i8* null, align 8
@CN23XX_MAX_OQ_DESCRIPTORS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @lio_ethtool_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_ethtool_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca %struct.octeon_device*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.octeon_config*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.lio* @GET_LIO(%struct.net_device* %12)
  store %struct.lio* %13, %struct.lio** %5, align 8
  %14 = load %struct.lio*, %struct.lio** %5, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 1
  %16 = load %struct.octeon_device*, %struct.octeon_device** %15, align 8
  store %struct.octeon_device* %16, %struct.octeon_device** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  %17 = load %struct.lio*, %struct.lio** %5, align 8
  %18 = load i32, i32* @LIO_IFSTATE_RESETTING, align 4
  %19 = call i64 @ifstate_check(%struct.lio* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %89

22:                                               ; preds = %2
  %23 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %24 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %28 = load i32, i32* @cn6xxx, align 4
  %29 = call %struct.octeon_config* @CHIP_CONF(%struct.octeon_device* %27, i32 %28)
  store %struct.octeon_config* %29, %struct.octeon_config** %11, align 8
  %30 = load i8*, i8** @CN6XXX_MAX_IQ_DESCRIPTORS, align 8
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** @CN6XXX_MAX_OQ_DESCRIPTORS, align 8
  store i8* %31, i8** %8, align 8
  %32 = load %struct.octeon_config*, %struct.octeon_config** %11, align 8
  %33 = load %struct.lio*, %struct.lio** %5, align 8
  %34 = getelementptr inbounds %struct.lio, %struct.lio* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @CFG_GET_NUM_RX_DESCS_NIC_IF(%struct.octeon_config* %32, i32 %35)
  store i8* %36, i8** %10, align 8
  %37 = load %struct.octeon_config*, %struct.octeon_config** %11, align 8
  %38 = load %struct.lio*, %struct.lio** %5, align 8
  %39 = getelementptr inbounds %struct.lio, %struct.lio* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @CFG_GET_NUM_TX_DESCS_NIC_IF(%struct.octeon_config* %37, i32 %40)
  store i8* %41, i8** %9, align 8
  br label %68

42:                                               ; preds = %22
  %43 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %44 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %48 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %46, %42
  %51 = load i8*, i8** @CN23XX_MAX_IQ_DESCRIPTORS, align 8
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** @CN23XX_MAX_OQ_DESCRIPTORS, align 8
  store i8* %52, i8** %8, align 8
  %53 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %55, i64 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %10, align 8
  %60 = load %struct.octeon_device*, %struct.octeon_device** %6, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %62, i64 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %50, %46
  br label %68

68:                                               ; preds = %67, %26
  %69 = load i8*, i8** %9, align 8
  %70 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %71 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %70, i32 0, i32 7
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %77 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %76, i32 0, i32 5
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %80 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %79, i32 0, i32 4
  store i8* %78, i8** %80, align 8
  %81 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %82 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %81, i32 0, i32 3
  store i64 0, i64* %82, align 8
  %83 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  %85 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %86 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %85, i32 0, i32 1
  store i64 0, i64* %86, align 8
  %87 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %88 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  br label %89

89:                                               ; preds = %68, %21
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @ifstate_check(%struct.lio*, i32) #1

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local %struct.octeon_config* @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i8* @CFG_GET_NUM_RX_DESCS_NIC_IF(%struct.octeon_config*, i32) #1

declare dso_local i8* @CFG_GET_NUM_TX_DESCS_NIC_IF(%struct.octeon_config*, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

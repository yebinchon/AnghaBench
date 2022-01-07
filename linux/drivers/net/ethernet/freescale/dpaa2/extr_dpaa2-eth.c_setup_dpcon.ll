; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_dpcon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_dpcon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.dpaa2_eth_priv = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpcon_attr = type { i32 }

@FSL_MC_POOL_DPCON = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Not enough DPCONs, will go on as-is\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"dpcon_open() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"dpcon_reset() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"dpcon_get_attributes() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"dpcon_enable() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fsl_mc_device* (%struct.dpaa2_eth_priv*)* @setup_dpcon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fsl_mc_device* @setup_dpcon(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca %struct.fsl_mc_device*, align 8
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.fsl_mc_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.dpcon_attr, align 4
  %7 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %5, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @to_fsl_mc_device(%struct.device* %14)
  %16 = load i32, i32* @FSL_MC_POOL_DPCON, align 4
  %17 = call i32 @fsl_mc_object_allocate(i32 %15, i32 %16, %struct.fsl_mc_device** %4)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %5, align 8
  %30 = call i32 @dev_info(%struct.device* %29, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.fsl_mc_device* @ERR_PTR(i32 %32)
  store %struct.fsl_mc_device* %33, %struct.fsl_mc_device** %2, align 8
  br label %102

34:                                               ; preds = %1
  %35 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %36 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %39 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %43 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %42, i32 0, i32 0
  %44 = call i32 @dpcon_open(i32 %37, i32 0, i32 %41, i32* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %99

50:                                               ; preds = %34
  %51 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %52 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %55 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dpcon_reset(i32 %53, i32 0, i32 %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %50
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %91

63:                                               ; preds = %50
  %64 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %65 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %68 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dpcon_get_attributes(i32 %66, i32 0, i32 %69, %struct.dpcon_attr* %6)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %63
  %74 = load %struct.device*, %struct.device** %5, align 8
  %75 = call i32 @dev_err(%struct.device* %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %91

76:                                               ; preds = %63
  %77 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %78 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %81 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dpcon_enable(i32 %79, i32 0, i32 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %76
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i32 @dev_err(%struct.device* %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %91

89:                                               ; preds = %76
  %90 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  store %struct.fsl_mc_device* %90, %struct.fsl_mc_device** %2, align 8
  br label %102

91:                                               ; preds = %86, %73, %60
  %92 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %93 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %96 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dpcon_close(i32 %94, i32 0, i32 %97)
  br label %99

99:                                               ; preds = %91, %47
  %100 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %4, align 8
  %101 = call i32 @fsl_mc_object_free(%struct.fsl_mc_device* %100)
  store %struct.fsl_mc_device* null, %struct.fsl_mc_device** %2, align 8
  br label %102

102:                                              ; preds = %99, %89, %31
  %103 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %2, align 8
  ret %struct.fsl_mc_device* %103
}

declare dso_local i32 @fsl_mc_object_allocate(i32, i32, %struct.fsl_mc_device**) #1

declare dso_local i32 @to_fsl_mc_device(%struct.device*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local %struct.fsl_mc_device* @ERR_PTR(i32) #1

declare dso_local i32 @dpcon_open(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dpcon_reset(i32, i32, i32) #1

declare dso_local i32 @dpcon_get_attributes(i32, i32, i32, %struct.dpcon_attr*) #1

declare dso_local i32 @dpcon_enable(i32, i32, i32) #1

declare dso_local i32 @dpcon_close(i32, i32, i32) #1

declare dso_local i32 @fsl_mc_object_free(%struct.fsl_mc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

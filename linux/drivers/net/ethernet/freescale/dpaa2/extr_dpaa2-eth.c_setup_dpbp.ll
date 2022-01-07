; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_dpbp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_dpbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, %struct.fsl_mc_device*, %struct.TYPE_5__* }
%struct.fsl_mc_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpbp_attr = type { i32 }

@FSL_MC_POOL_DPBP = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DPBP device allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"dpbp_open() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"dpbp_reset() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"dpbp_enable() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"dpbp_get_attributes() failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @setup_dpbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dpbp(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_mc_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.dpbp_attr, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %8 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %8, i32 0, i32 3
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.device*, %struct.device** %6, align 8
  %15 = call i32 @to_fsl_mc_device(%struct.device* %14)
  %16 = load i32, i32* @FSL_MC_POOL_DPBP, align 4
  %17 = call i32 @fsl_mc_object_allocate(i32 %15, i32 %16, %struct.fsl_mc_device** %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %31

28:                                               ; preds = %20
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %119

33:                                               ; preds = %1
  %34 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %35 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %36 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %35, i32 0, i32 2
  store %struct.fsl_mc_device* %34, %struct.fsl_mc_device** %36, align 8
  %37 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %38 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %41 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %40, i32 0, i32 2
  %42 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %41, align 8
  %43 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %47 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %46, i32 0, i32 0
  %48 = call i32 @dpbp_open(i32 %39, i32 0, i32 %45, i32* %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %33
  %52 = load %struct.device*, %struct.device** %6, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %115

54:                                               ; preds = %33
  %55 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %56 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %59 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dpbp_reset(i32 %57, i32 0, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %54
  %65 = load %struct.device*, %struct.device** %6, align 8
  %66 = call i32 @dev_err(%struct.device* %65, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %107

67:                                               ; preds = %54
  %68 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %69 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %72 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dpbp_enable(i32 %70, i32 0, i32 %73)
  store i32 %74, i32* %4, align 4
  %75 = load i32, i32* %4, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %67
  %78 = load %struct.device*, %struct.device** %6, align 8
  %79 = call i32 @dev_err(%struct.device* %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %106

80:                                               ; preds = %67
  %81 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %82 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %85 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dpbp_get_attributes(i32 %83, i32 0, i32 %86, %struct.dpbp_attr* %7)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %80
  %91 = load %struct.device*, %struct.device** %6, align 8
  %92 = call i32 @dev_err(%struct.device* %91, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %98

93:                                               ; preds = %80
  %94 = getelementptr inbounds %struct.dpbp_attr, %struct.dpbp_attr* %7, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %97 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  store i32 0, i32* %2, align 4
  br label %119

98:                                               ; preds = %90
  %99 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %100 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %103 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @dpbp_disable(i32 %101, i32 0, i32 %104)
  br label %106

106:                                              ; preds = %98, %77
  br label %107

107:                                              ; preds = %106, %64
  %108 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %109 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %112 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @dpbp_close(i32 %110, i32 0, i32 %113)
  br label %115

115:                                              ; preds = %107, %51
  %116 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %5, align 8
  %117 = call i32 @fsl_mc_object_free(%struct.fsl_mc_device* %116)
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %115, %93, %31
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @fsl_mc_object_allocate(i32, i32, %struct.fsl_mc_device**) #1

declare dso_local i32 @to_fsl_mc_device(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dpbp_open(i32, i32, i32, i32*) #1

declare dso_local i32 @dpbp_reset(i32, i32, i32) #1

declare dso_local i32 @dpbp_enable(i32, i32, i32) #1

declare dso_local i32 @dpbp_get_attributes(i32, i32, i32, %struct.dpbp_attr*) #1

declare dso_local i32 @dpbp_disable(i32, i32, i32) #1

declare dso_local i32 @dpbp_close(i32, i32, i32) #1

declare dso_local i32 @fsl_mc_object_free(%struct.fsl_mc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

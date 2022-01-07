; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_dpni.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_setup_dpni.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_device = type { i32, i32, %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.dpaa2_eth_priv = type { i32, i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dpni_open() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"dpni_get_api_version() failed\0A\00", align 1
@DPNI_VER_MAJOR = common dso_local global i32 0, align 4
@DPNI_VER_MINOR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"DPNI version %u.%u not supported, need >= %u.%u\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"dpni_reset() failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"dpni_get_attributes() failed (err=%d)\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_mc_device*)* @setup_dpni to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_dpni(%struct.fsl_mc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fsl_mc_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_mc_device* %0, %struct.fsl_mc_device** %3, align 8
  %8 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %8, i32 0, i32 3
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.net_device* @dev_get_drvdata(%struct.device* %10)
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dpaa2_eth_priv* %13, %struct.dpaa2_eth_priv** %5, align 8
  %14 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %15 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %18 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %22 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %21, i32 0, i32 0
  %23 = call i32 @dpni_open(i32 %16, i32 0, i32 %20, i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %2, align 4
  br label %147

30:                                               ; preds = %1
  %31 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %32 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %35 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %34, i32 0, i32 5
  %36 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %37 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %36, i32 0, i32 4
  %38 = call i32 @dpni_get_api_version(i32 %33, i32 0, i32* %35, i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %138

44:                                               ; preds = %30
  %45 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %46 = load i32, i32* @DPNI_VER_MAJOR, align 4
  %47 = load i32, i32* @DPNI_VER_MINOR, align 4
  %48 = call i64 @dpaa2_eth_cmp_dpni_ver(%struct.dpaa2_eth_priv* %45, i32 %46, i32 %47)
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %50, label %63

50:                                               ; preds = %44
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %53 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %56 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @DPNI_VER_MAJOR, align 4
  %59 = load i32, i32* @DPNI_VER_MINOR, align 4
  %60 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %54, i32 %57, i32 %58, i32 %59)
  %61 = load i32, i32* @ENOTSUPP, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %138

63:                                               ; preds = %44
  %64 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %65 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %68 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %70 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fsl_mc_device*, %struct.fsl_mc_device** %3, align 8
  %73 = getelementptr inbounds %struct.fsl_mc_device, %struct.fsl_mc_device* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %75 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %78 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dpni_reset(i32 %76, i32 0, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %63
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %84, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %138

86:                                               ; preds = %63
  %87 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %88 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %91 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %94 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %93, i32 0, i32 3
  %95 = call i32 @dpni_get_attributes(i32 %89, i32 0, i32 %92, i32* %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %86
  %99 = load %struct.device*, %struct.device** %4, align 8
  %100 = load i32, i32* %7, align 4
  %101 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  br label %138

102:                                              ; preds = %86
  %103 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %104 = call i32 @set_buffer_layout(%struct.dpaa2_eth_priv* %103)
  store i32 %104, i32* %7, align 4
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %138

108:                                              ; preds = %102
  %109 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %110 = call i32 @set_enqueue_mode(%struct.dpaa2_eth_priv* %109)
  %111 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %112 = call i64 @dpaa2_eth_has_pause_support(%struct.dpaa2_eth_priv* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %116 = call i32 @set_pause(%struct.dpaa2_eth_priv* %115)
  store i32 %116, i32* %7, align 4
  %117 = load i32, i32* %7, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %138

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %108
  %122 = load %struct.device*, %struct.device** %4, align 8
  %123 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %124 = call i32 @dpaa2_eth_fs_count(%struct.dpaa2_eth_priv* %123)
  %125 = sext i32 %124 to i64
  %126 = mul i64 4, %125
  %127 = trunc i64 %126 to i32
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i32 @devm_kzalloc(%struct.device* %122, i32 %127, i32 %128)
  %130 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %131 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 4
  %132 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %133 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %121
  br label %138

137:                                              ; preds = %121
  store i32 0, i32* %2, align 4
  br label %147

138:                                              ; preds = %136, %119, %107, %98, %83, %50, %41
  %139 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %140 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %143 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @dpni_close(i32 %141, i32 0, i32 %144)
  %146 = load i32, i32* %7, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %138, %137, %26
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.net_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpni_open(i32, i32, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @dpni_get_api_version(i32, i32, i32*, i32*) #1

declare dso_local i64 @dpaa2_eth_cmp_dpni_ver(%struct.dpaa2_eth_priv*, i32, i32) #1

declare dso_local i32 @dpni_reset(i32, i32, i32) #1

declare dso_local i32 @dpni_get_attributes(i32, i32, i32, i32*) #1

declare dso_local i32 @set_buffer_layout(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @set_enqueue_mode(%struct.dpaa2_eth_priv*) #1

declare dso_local i64 @dpaa2_eth_has_pause_support(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @set_pause(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @dpaa2_eth_fs_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpni_close(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

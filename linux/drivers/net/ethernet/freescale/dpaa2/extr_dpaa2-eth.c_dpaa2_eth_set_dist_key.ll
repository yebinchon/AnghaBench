; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_dist_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_dist_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.net_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.dpaa2_eth_priv = type { i32 }
%struct.dpkg_profile_cfg = type { i64, %struct.dpkg_extract* }
%struct.dpkg_extract = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32 }

@dist_fields = common dso_local global %struct.TYPE_9__* null, align 8
@DPAA2_ETH_RX_DIST_HASH = common dso_local global i32 0, align 4
@DPKG_MAX_NUM_OF_EXTRACTS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"error adding key extraction rule, too many rules?\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@DPKG_EXTRACT_FROM_HDR = common dso_local global i32 0, align 4
@DPKG_FULL_FIELD = common dso_local global i32 0, align 4
@DPAA2_CLASSIFIER_DMA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"dpni_prepare_key_cfg error %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"DMA mapping failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @dpaa2_eth_set_dist_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_set_dist_key(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.dpaa2_eth_priv*, align 8
  %10 = alloca %struct.dpkg_profile_cfg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpkg_extract*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %21)
  store %struct.dpaa2_eth_priv* %22, %struct.dpaa2_eth_priv** %9, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %23 = call i32 @memset(%struct.dpkg_profile_cfg* %10, i32 0, i32 16)
  store i32 0, i32* %14, align 4
  br label %24

24:                                               ; preds = %100, %3
  %25 = load i32, i32* %14, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dist_fields, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.TYPE_9__* %26)
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %29, label %103

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %10, i32 0, i32 1
  %31 = load %struct.dpkg_extract*, %struct.dpkg_extract** %30, align 8
  %32 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %10, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.dpkg_extract, %struct.dpkg_extract* %31, i64 %33
  store %struct.dpkg_extract* %34, %struct.dpkg_extract** %16, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dist_fields, align 8
  %37 = load i32, i32* %14, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %35, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %29
  br label %100

45:                                               ; preds = %29
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @DPAA2_ETH_RX_DIST_HASH, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dist_fields, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %49, %45
  %59 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %10, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DPKG_MAX_NUM_OF_EXTRACTS, align 8
  %62 = icmp uge i64 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %64, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @E2BIG, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %178

68:                                               ; preds = %58
  %69 = load i32, i32* @DPKG_EXTRACT_FROM_HDR, align 4
  %70 = load %struct.dpkg_extract*, %struct.dpkg_extract** %16, align 8
  %71 = getelementptr inbounds %struct.dpkg_extract, %struct.dpkg_extract* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dist_fields, align 8
  %73 = load i32, i32* %14, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dpkg_extract*, %struct.dpkg_extract** %16, align 8
  %79 = getelementptr inbounds %struct.dpkg_extract, %struct.dpkg_extract* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i32 %77, i32* %81, align 4
  %82 = load i32, i32* @DPKG_FULL_FIELD, align 4
  %83 = load %struct.dpkg_extract*, %struct.dpkg_extract** %16, align 8
  %84 = getelementptr inbounds %struct.dpkg_extract, %struct.dpkg_extract* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i32 %82, i32* %86, align 4
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** @dist_fields, align 8
  %88 = load i32, i32* %14, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dpkg_extract*, %struct.dpkg_extract** %16, align 8
  %94 = getelementptr inbounds %struct.dpkg_extract, %struct.dpkg_extract* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %92, i32* %96, align 4
  %97 = getelementptr inbounds %struct.dpkg_profile_cfg, %struct.dpkg_profile_cfg* %10, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %68, %44
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %14, align 4
  br label %24

103:                                              ; preds = %24
  %104 = load i32, i32* @DPAA2_CLASSIFIER_DMA_SIZE, align 4
  %105 = load i32, i32* @GFP_KERNEL, align 4
  %106 = call i32* @kzalloc(i32 %104, i32 %105)
  store i32* %106, i32** %13, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %4, align 4
  br label %178

112:                                              ; preds = %103
  %113 = load i32*, i32** %13, align 8
  %114 = call i32 @dpni_prepare_key_cfg(%struct.dpkg_profile_cfg* %10, i32* %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %15, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load %struct.device*, %struct.device** %8, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %118, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  br label %174

121:                                              ; preds = %112
  %122 = load %struct.device*, %struct.device** %8, align 8
  %123 = load i32*, i32** %13, align 8
  %124 = load i32, i32* @DPAA2_CLASSIFIER_DMA_SIZE, align 4
  %125 = load i32, i32* @DMA_TO_DEVICE, align 4
  %126 = call i32 @dma_map_single(%struct.device* %122, i32* %123, i32 %124, i32 %125)
  store i32 %126, i32* %12, align 4
  %127 = load %struct.device*, %struct.device** %8, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call i64 @dma_mapping_error(%struct.device* %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.device*, %struct.device** %8, align 8
  %133 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %132, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %15, align 4
  br label %174

136:                                              ; preds = %121
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @DPAA2_ETH_RX_DIST_HASH, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %136
  %141 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %9, align 8
  %142 = call i64 @dpaa2_eth_has_legacy_dist(%struct.dpaa2_eth_priv* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %9, align 8
  %146 = load i32, i32* %12, align 4
  %147 = call i32 @config_legacy_hash_key(%struct.dpaa2_eth_priv* %145, i32 %146)
  store i32 %147, i32* %15, align 4
  br label %152

148:                                              ; preds = %140
  %149 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %9, align 8
  %150 = load i32, i32* %12, align 4
  %151 = call i32 @config_hash_key(%struct.dpaa2_eth_priv* %149, i32 %150)
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %148, %144
  br label %157

153:                                              ; preds = %136
  %154 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %9, align 8
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @config_cls_key(%struct.dpaa2_eth_priv* %154, i32 %155)
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %153, %152
  %158 = load %struct.device*, %struct.device** %8, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i32, i32* @DPAA2_CLASSIFIER_DMA_SIZE, align 4
  %161 = load i32, i32* @DMA_TO_DEVICE, align 4
  %162 = call i32 @dma_unmap_single(%struct.device* %158, i32 %159, i32 %160, i32 %161)
  %163 = load i32, i32* %15, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %173, label %165

165:                                              ; preds = %157
  %166 = load i32, i32* %6, align 4
  %167 = load i32, i32* @DPAA2_ETH_RX_DIST_HASH, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* %11, align 4
  %171 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %9, align 8
  %172 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  br label %173

173:                                              ; preds = %169, %165, %157
  br label %174

174:                                              ; preds = %173, %131, %117
  %175 = load i32*, i32** %13, align 8
  %176 = call i32 @kfree(i32* %175)
  %177 = load i32, i32* %15, align 4
  store i32 %177, i32* %4, align 4
  br label %178

178:                                              ; preds = %174, %109, %63
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.dpkg_profile_cfg*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @dpni_prepare_key_cfg(%struct.dpkg_profile_cfg*, i32*) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i64 @dpaa2_eth_has_legacy_dist(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @config_legacy_hash_key(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @config_hash_key(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @config_cls_key(%struct.dpaa2_eth_priv*, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

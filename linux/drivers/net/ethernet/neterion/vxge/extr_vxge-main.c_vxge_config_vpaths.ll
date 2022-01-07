; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_config_vpaths.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_vxge_config_vpaths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.vxge_hw_device_config = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.vxge_config = type { i8*, i8* }

@driver_config = common dso_local global %struct.TYPE_12__* null, align 8
@VXGE_USE_DEFAULT = common dso_local global i32 0, align 4
@max_config_dev = common dso_local global i64 0, align 8
@VXGE_MAX_CONFIG_DEV = common dso_local global i64 0, align 8
@VXGE_HW_MAX_VIRTUAL_PATHS = common dso_local global i32 0, align 4
@VXGE_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"%s: Disable tx and rx steering, as single vpath is configured\00", align 1
@VXGE_DRIVER_NAME = common dso_local global i32 0, align 4
@NO_STEERING = common dso_local global i8* null, align 8
@bw_percentage = common dso_local global i32* null, align 8
@VXGE_HW_DEFAULT_MTU = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"%s: vpath: %d is not available\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s: vpath: %d available\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"%s: vpath: %d is not configured, max_config_vpath exceeded\00", align 1
@VXGE_HW_FIFO_ENABLE = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@VXGE_HW_MIN_FIFO_MEMBLOCK_SIZE = common dso_local global i32 0, align 4
@VXGE_DEF_FIFO_LENGTH = common dso_local global i32 0, align 4
@VXGE_HW_FIFO_QUEUE_INTR_DISABLE = common dso_local global i32 0, align 4
@VXGE_HW_TIM_INTR_ENABLE = common dso_local global i8* null, align 8
@VXGE_TTI_BTIMER_VAL = common dso_local global i32 0, align 4
@VXGE_HW_TIM_TIMER_AC_ENABLE = common dso_local global i8* null, align 8
@VXGE_HW_TIM_TIMER_CI_DISABLE = common dso_local global i8* null, align 8
@VXGE_HW_TIM_TIMER_RI_DISABLE = common dso_local global i8* null, align 8
@VXGE_HW_TIM_UTIL_SEL_LEGACY_TX_NET_UTIL = common dso_local global i32 0, align 4
@VXGE_TTI_LTIMER_VAL = common dso_local global i32 0, align 4
@VXGE_TTI_RTIMER_VAL = common dso_local global i32 0, align 4
@TTI_TX_URANGE_A = common dso_local global i32 0, align 4
@TTI_TX_URANGE_B = common dso_local global i32 0, align 4
@TTI_TX_URANGE_C = common dso_local global i32 0, align 4
@TTI_TX_UFC_A = common dso_local global i32 0, align 4
@TTI_TX_UFC_B = common dso_local global i32 0, align 4
@TTI_TX_UFC_C = common dso_local global i32 0, align 4
@TTI_TX_UFC_D = common dso_local global i32 0, align 4
@VXGE_HW_RING_ENABLE = common dso_local global i32 0, align 4
@VXGE_HW_DEF_RING_BLOCKS = common dso_local global i32 0, align 4
@VXGE_HW_RING_RXD_BUFFER_MODE_1 = common dso_local global i32 0, align 4
@VXGE_HW_DEF_RING_RXDS_LIMIT = common dso_local global i32 0, align 4
@VXGE_HW_RING_SCATTER_MODE_A = common dso_local global i32 0, align 4
@VXGE_RTI_BTIMER_VAL = common dso_local global i32 0, align 4
@VXGE_HW_TIM_UTIL_SEL_LEGACY_RX_NET_UTIL = common dso_local global i32 0, align 4
@RTI_RX_URANGE_A = common dso_local global i32 0, align 4
@RTI_RX_URANGE_B = common dso_local global i32 0, align 4
@RTI_RX_URANGE_C = common dso_local global i32 0, align 4
@RTI_RX_UFC_A = common dso_local global i32 0, align 4
@RTI_RX_UFC_B = common dso_local global i32 0, align 4
@RTI_RX_UFC_C = common dso_local global i32 0, align 4
@RTI_RX_UFC_D = common dso_local global i32 0, align 4
@VXGE_RTI_RTIMER_VAL = common dso_local global i32 0, align 4
@VXGE_RTI_LTIMER_VAL = common dso_local global i32 0, align 4
@vlan_tag_strip = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxge_hw_device_config*, i32, %struct.vxge_config*)* @vxge_config_vpaths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxge_config_vpaths(%struct.vxge_hw_device_config* %0, i32 %1, %struct.vxge_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vxge_hw_device_config*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vxge_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vxge_hw_device_config* %0, %struct.vxge_hw_device_config** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vxge_config* %2, %struct.vxge_config** %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @VXGE_USE_DEFAULT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %102

22:                                               ; preds = %3
  %23 = load i64, i64* @max_config_dev, align 8
  %24 = load i64, i64* @VXGE_MAX_CONFIG_DEV, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %102

26:                                               ; preds = %22
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %599

32:                                               ; preds = %26
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = call i32 (...) @netif_get_num_default_rss_queues()
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %37, %32
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = ashr i32 %44, 1
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %41
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %70, %55
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %56
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @vxge_bVALn(i32 %61, i32 %62, i32 1)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %65
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %56

73:                                               ; preds = %56
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = mul nsw i32 %89, 2
  %91 = sub nsw i32 %86, %90
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sle i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %83
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  store i32 -1, i32* %100, align 4
  br label %101

101:                                              ; preds = %98, %83
  br label %102

102:                                              ; preds = %101, %22, %3
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp eq i32 %105, 1
  br i1 %106, label %107, label %119

107:                                              ; preds = %102
  %108 = load i32, i32* @VXGE_TRACE, align 4
  %109 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %110 = call i32 (i32, i8*, i32, ...) @vxge_debug_ll_config(i32 %108, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %109)
  %111 = load i8*, i8** @NO_STEERING, align 8
  %112 = load %struct.vxge_config*, %struct.vxge_config** %7, align 8
  %113 = getelementptr inbounds %struct.vxge_config, %struct.vxge_config* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @NO_STEERING, align 8
  %115 = load %struct.vxge_config*, %struct.vxge_config** %7, align 8
  %116 = getelementptr inbounds %struct.vxge_config, %struct.vxge_config* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %118 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %117, i32 0, i32 1
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %107, %102
  store i32 0, i32* %8, align 4
  br label %120

120:                                              ; preds = %137, %119
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %140

124:                                              ; preds = %120
  %125 = load i32*, i32** @bw_percentage, align 8
  %126 = load i32, i32* %8, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %131 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %130, i32 0, i32 0
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %131, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 7
  store i32 %129, i32* %136, align 8
  br label %137

137:                                              ; preds = %124
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %120

140:                                              ; preds = %120
  store i32 0, i32* %8, align 4
  br label %141

141:                                              ; preds = %591, %140
  %142 = load i32, i32* %8, align 4
  %143 = load i32, i32* @VXGE_HW_MAX_VIRTUAL_PATHS, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %594

145:                                              ; preds = %141
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %148 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %147, i32 0, i32 0
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i64 %151
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  store i32 %146, i32* %153, align 8
  %154 = load i32, i32* @VXGE_HW_DEFAULT_MTU, align 4
  %155 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %156 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %155, i32 0, i32 0
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = load i32, i32* %8, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 6
  store i32 %154, i32* %161, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp slt i32 %162, %165
  br i1 %166, label %167, label %185

167:                                              ; preds = %145
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @vxge_bVALn(i32 %168, i32 %169, i32 1)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %167
  %173 = load i32, i32* @VXGE_TRACE, align 4
  %174 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %175 = load i32, i32* %8, align 4
  %176 = call i32 (i32, i8*, i32, ...) @vxge_debug_ll_config(i32 %173, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %174, i32 %175)
  br label %591

177:                                              ; preds = %167
  %178 = load i32, i32* @VXGE_TRACE, align 4
  %179 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %180 = load i32, i32* %8, align 4
  %181 = call i32 (i32, i8*, i32, ...) @vxge_debug_ll_config(i32 %178, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %179, i32 %180)
  %182 = load i32, i32* %9, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %9, align 4
  br label %184

184:                                              ; preds = %177
  br label %190

185:                                              ; preds = %145
  %186 = load i32, i32* @VXGE_TRACE, align 4
  %187 = load i32, i32* @VXGE_DRIVER_NAME, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 (i32, i8*, i32, ...) @vxge_debug_ll_config(i32 %186, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %187, i32 %188)
  br label %594

190:                                              ; preds = %184
  %191 = load i32, i32* @VXGE_HW_FIFO_ENABLE, align 4
  %192 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %193 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %192, i32 0, i32 0
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = load i32, i32* %8, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 5
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 4
  store i32 %191, i32* %199, align 8
  %200 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %201 = add nsw i32 %200, 1
  %202 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %203 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %202, i32 0, i32 0
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %204, i64 %206
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  store i32 %201, i32* %209, align 8
  %210 = load i32, i32* @VXGE_HW_MIN_FIFO_MEMBLOCK_SIZE, align 4
  %211 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %212 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %211, i32 0, i32 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = load i32, i32* %8, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  store i32 %210, i32* %218, align 4
  %219 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %220 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %219, i32 0, i32 0
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %220, align 8
  %222 = load i32, i32* %8, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 5
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = mul i64 %228, 4
  %230 = trunc i64 %229 to i32
  store i32 %230, i32* %12, align 4
  %231 = load i32, i32* @VXGE_HW_MIN_FIFO_MEMBLOCK_SIZE, align 4
  %232 = load i32, i32* %12, align 4
  %233 = sdiv i32 %231, %232
  store i32 %233, i32* %13, align 4
  %234 = load i32, i32* @VXGE_DEF_FIFO_LENGTH, align 4
  %235 = sub nsw i32 %234, 1
  %236 = load i32, i32* %13, align 4
  %237 = sdiv i32 %235, %236
  %238 = add nsw i32 %237, 1
  %239 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %240 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %239, i32 0, i32 0
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %240, align 8
  %242 = load i32, i32* %8, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i64 %243
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 2
  store i32 %238, i32* %246, align 8
  %247 = load i32, i32* @VXGE_HW_FIFO_QUEUE_INTR_DISABLE, align 4
  %248 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %249 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %248, i32 0, i32 0
  %250 = load %struct.TYPE_11__*, %struct.TYPE_11__** %249, align 8
  %251 = load i32, i32* %8, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 3
  store i32 %247, i32* %255, align 4
  %256 = load i8*, i8** @VXGE_HW_TIM_INTR_ENABLE, align 8
  %257 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %258 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %257, i32 0, i32 0
  %259 = load %struct.TYPE_11__*, %struct.TYPE_11__** %258, align 8
  %260 = load i32, i32* %8, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %262, i32 0, i32 4
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 14
  store i8* %256, i8** %264, align 8
  %265 = load i32, i32* @VXGE_TTI_BTIMER_VAL, align 4
  %266 = mul nsw i32 %265, 1000
  %267 = sdiv i32 %266, 272
  %268 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %269 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %268, i32 0, i32 0
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %269, align 8
  %271 = load i32, i32* %8, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 4
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 0
  store i32 %267, i32* %275, align 8
  %276 = load i8*, i8** @VXGE_HW_TIM_TIMER_AC_ENABLE, align 8
  %277 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %278 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %277, i32 0, i32 0
  %279 = load %struct.TYPE_11__*, %struct.TYPE_11__** %278, align 8
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 4
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 13
  store i8* %276, i8** %284, align 8
  %285 = load i8*, i8** @VXGE_HW_TIM_TIMER_CI_DISABLE, align 8
  %286 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %287 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %286, i32 0, i32 0
  %288 = load %struct.TYPE_11__*, %struct.TYPE_11__** %287, align 8
  %289 = load i32, i32* %8, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %291, i32 0, i32 4
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 12
  store i8* %285, i8** %293, align 8
  %294 = load i8*, i8** @VXGE_HW_TIM_TIMER_RI_DISABLE, align 8
  %295 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %296 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %295, i32 0, i32 0
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %296, align 8
  %298 = load i32, i32* %8, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 4
  %302 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %301, i32 0, i32 11
  store i8* %294, i8** %302, align 8
  %303 = load i32, i32* @VXGE_HW_TIM_UTIL_SEL_LEGACY_TX_NET_UTIL, align 4
  %304 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %305 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %304, i32 0, i32 0
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = load i32, i32* %8, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 4
  %311 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %310, i32 0, i32 10
  store i32 %303, i32* %311, align 8
  %312 = load i32, i32* @VXGE_TTI_LTIMER_VAL, align 4
  %313 = mul nsw i32 %312, 1000
  %314 = sdiv i32 %313, 272
  %315 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %316 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %315, i32 0, i32 0
  %317 = load %struct.TYPE_11__*, %struct.TYPE_11__** %316, align 8
  %318 = load i32, i32* %8, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 4
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 1
  store i32 %314, i32* %322, align 4
  %323 = load i32, i32* @VXGE_TTI_RTIMER_VAL, align 4
  %324 = mul nsw i32 %323, 1000
  %325 = sdiv i32 %324, 272
  %326 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %327 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %326, i32 0, i32 0
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %327, align 8
  %329 = load i32, i32* %8, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 4
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 2
  store i32 %325, i32* %333, align 8
  %334 = load i32, i32* @TTI_TX_URANGE_A, align 4
  %335 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %336 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %335, i32 0, i32 0
  %337 = load %struct.TYPE_11__*, %struct.TYPE_11__** %336, align 8
  %338 = load i32, i32* %8, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 9
  store i32 %334, i32* %342, align 4
  %343 = load i32, i32* @TTI_TX_URANGE_B, align 4
  %344 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %345 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %344, i32 0, i32 0
  %346 = load %struct.TYPE_11__*, %struct.TYPE_11__** %345, align 8
  %347 = load i32, i32* %8, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %346, i64 %348
  %350 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %349, i32 0, i32 4
  %351 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %350, i32 0, i32 8
  store i32 %343, i32* %351, align 8
  %352 = load i32, i32* @TTI_TX_URANGE_C, align 4
  %353 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %354 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %353, i32 0, i32 0
  %355 = load %struct.TYPE_11__*, %struct.TYPE_11__** %354, align 8
  %356 = load i32, i32* %8, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %355, i64 %357
  %359 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %358, i32 0, i32 4
  %360 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %359, i32 0, i32 7
  store i32 %352, i32* %360, align 4
  %361 = load i32, i32* @TTI_TX_UFC_A, align 4
  %362 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %363 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %362, i32 0, i32 0
  %364 = load %struct.TYPE_11__*, %struct.TYPE_11__** %363, align 8
  %365 = load i32, i32* %8, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %364, i64 %366
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 4
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 6
  store i32 %361, i32* %369, align 8
  %370 = load i32, i32* @TTI_TX_UFC_B, align 4
  %371 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %372 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %371, i32 0, i32 0
  %373 = load %struct.TYPE_11__*, %struct.TYPE_11__** %372, align 8
  %374 = load i32, i32* %8, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %373, i64 %375
  %377 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i32 0, i32 4
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 5
  store i32 %370, i32* %378, align 4
  %379 = load i32, i32* @TTI_TX_UFC_C, align 4
  %380 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %381 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %380, i32 0, i32 0
  %382 = load %struct.TYPE_11__*, %struct.TYPE_11__** %381, align 8
  %383 = load i32, i32* %8, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %382, i64 %384
  %386 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %385, i32 0, i32 4
  %387 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %386, i32 0, i32 4
  store i32 %379, i32* %387, align 8
  %388 = load i32, i32* @TTI_TX_UFC_D, align 4
  %389 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %390 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %389, i32 0, i32 0
  %391 = load %struct.TYPE_11__*, %struct.TYPE_11__** %390, align 8
  %392 = load i32, i32* %8, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %394, i32 0, i32 4
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 3
  store i32 %388, i32* %396, align 4
  %397 = load i32, i32* @VXGE_HW_RING_ENABLE, align 4
  %398 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %399 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %398, i32 0, i32 0
  %400 = load %struct.TYPE_11__*, %struct.TYPE_11__** %399, align 8
  %401 = load i32, i32* %8, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %400, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %404, i32 0, i32 4
  store i32 %397, i32* %405, align 8
  %406 = load i32, i32* @VXGE_HW_DEF_RING_BLOCKS, align 4
  %407 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %408 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %407, i32 0, i32 0
  %409 = load %struct.TYPE_11__*, %struct.TYPE_11__** %408, align 8
  %410 = load i32, i32* %8, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %409, i64 %411
  %413 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %412, i32 0, i32 3
  %414 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %413, i32 0, i32 3
  store i32 %406, i32* %414, align 4
  %415 = load i32, i32* @VXGE_HW_RING_RXD_BUFFER_MODE_1, align 4
  %416 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %417 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %416, i32 0, i32 0
  %418 = load %struct.TYPE_11__*, %struct.TYPE_11__** %417, align 8
  %419 = load i32, i32* %8, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %418, i64 %420
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 3
  %423 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %422, i32 0, i32 2
  store i32 %415, i32* %423, align 8
  %424 = load i32, i32* @VXGE_HW_DEF_RING_RXDS_LIMIT, align 4
  %425 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %426 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %425, i32 0, i32 0
  %427 = load %struct.TYPE_11__*, %struct.TYPE_11__** %426, align 8
  %428 = load i32, i32* %8, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %427, i64 %429
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 3
  %432 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %431, i32 0, i32 1
  store i32 %424, i32* %432, align 4
  %433 = load i32, i32* @VXGE_HW_RING_SCATTER_MODE_A, align 4
  %434 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %435 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %434, i32 0, i32 0
  %436 = load %struct.TYPE_11__*, %struct.TYPE_11__** %435, align 8
  %437 = load i32, i32* %8, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i64 %438
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 3
  %441 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %440, i32 0, i32 0
  store i32 %433, i32* %441, align 8
  %442 = load i8*, i8** @VXGE_HW_TIM_INTR_ENABLE, align 8
  %443 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %444 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %443, i32 0, i32 0
  %445 = load %struct.TYPE_11__*, %struct.TYPE_11__** %444, align 8
  %446 = load i32, i32* %8, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %445, i64 %447
  %449 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %448, i32 0, i32 2
  %450 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %449, i32 0, i32 14
  store i8* %442, i8** %450, align 8
  %451 = load i32, i32* @VXGE_RTI_BTIMER_VAL, align 4
  %452 = mul nsw i32 %451, 1000
  %453 = sdiv i32 %452, 272
  %454 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %455 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %454, i32 0, i32 0
  %456 = load %struct.TYPE_11__*, %struct.TYPE_11__** %455, align 8
  %457 = load i32, i32* %8, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %459, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %460, i32 0, i32 0
  store i32 %453, i32* %461, align 8
  %462 = load i8*, i8** @VXGE_HW_TIM_TIMER_AC_ENABLE, align 8
  %463 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %464 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %463, i32 0, i32 0
  %465 = load %struct.TYPE_11__*, %struct.TYPE_11__** %464, align 8
  %466 = load i32, i32* %8, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %468, i32 0, i32 2
  %470 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %469, i32 0, i32 13
  store i8* %462, i8** %470, align 8
  %471 = load i8*, i8** @VXGE_HW_TIM_TIMER_CI_DISABLE, align 8
  %472 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %473 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %472, i32 0, i32 0
  %474 = load %struct.TYPE_11__*, %struct.TYPE_11__** %473, align 8
  %475 = load i32, i32* %8, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %474, i64 %476
  %478 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %477, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i32 0, i32 12
  store i8* %471, i8** %479, align 8
  %480 = load i8*, i8** @VXGE_HW_TIM_TIMER_RI_DISABLE, align 8
  %481 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %482 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %481, i32 0, i32 0
  %483 = load %struct.TYPE_11__*, %struct.TYPE_11__** %482, align 8
  %484 = load i32, i32* %8, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %483, i64 %485
  %487 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %487, i32 0, i32 11
  store i8* %480, i8** %488, align 8
  %489 = load i32, i32* @VXGE_HW_TIM_UTIL_SEL_LEGACY_RX_NET_UTIL, align 4
  %490 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %491 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %490, i32 0, i32 0
  %492 = load %struct.TYPE_11__*, %struct.TYPE_11__** %491, align 8
  %493 = load i32, i32* %8, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %496, i32 0, i32 10
  store i32 %489, i32* %497, align 8
  %498 = load i32, i32* @RTI_RX_URANGE_A, align 4
  %499 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %500 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %499, i32 0, i32 0
  %501 = load %struct.TYPE_11__*, %struct.TYPE_11__** %500, align 8
  %502 = load i32, i32* %8, align 4
  %503 = sext i32 %502 to i64
  %504 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %501, i64 %503
  %505 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %504, i32 0, i32 2
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 9
  store i32 %498, i32* %506, align 4
  %507 = load i32, i32* @RTI_RX_URANGE_B, align 4
  %508 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %509 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %508, i32 0, i32 0
  %510 = load %struct.TYPE_11__*, %struct.TYPE_11__** %509, align 8
  %511 = load i32, i32* %8, align 4
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %510, i64 %512
  %514 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %513, i32 0, i32 2
  %515 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %514, i32 0, i32 8
  store i32 %507, i32* %515, align 8
  %516 = load i32, i32* @RTI_RX_URANGE_C, align 4
  %517 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %518 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %517, i32 0, i32 0
  %519 = load %struct.TYPE_11__*, %struct.TYPE_11__** %518, align 8
  %520 = load i32, i32* %8, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %519, i64 %521
  %523 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %522, i32 0, i32 2
  %524 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %523, i32 0, i32 7
  store i32 %516, i32* %524, align 4
  %525 = load i32, i32* @RTI_RX_UFC_A, align 4
  %526 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %527 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %526, i32 0, i32 0
  %528 = load %struct.TYPE_11__*, %struct.TYPE_11__** %527, align 8
  %529 = load i32, i32* %8, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %528, i64 %530
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 2
  %533 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %532, i32 0, i32 6
  store i32 %525, i32* %533, align 8
  %534 = load i32, i32* @RTI_RX_UFC_B, align 4
  %535 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %536 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %535, i32 0, i32 0
  %537 = load %struct.TYPE_11__*, %struct.TYPE_11__** %536, align 8
  %538 = load i32, i32* %8, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %537, i64 %539
  %541 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %540, i32 0, i32 2
  %542 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %541, i32 0, i32 5
  store i32 %534, i32* %542, align 4
  %543 = load i32, i32* @RTI_RX_UFC_C, align 4
  %544 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %545 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %544, i32 0, i32 0
  %546 = load %struct.TYPE_11__*, %struct.TYPE_11__** %545, align 8
  %547 = load i32, i32* %8, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %549, i32 0, i32 2
  %551 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %550, i32 0, i32 4
  store i32 %543, i32* %551, align 8
  %552 = load i32, i32* @RTI_RX_UFC_D, align 4
  %553 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %554 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %553, i32 0, i32 0
  %555 = load %struct.TYPE_11__*, %struct.TYPE_11__** %554, align 8
  %556 = load i32, i32* %8, align 4
  %557 = sext i32 %556 to i64
  %558 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %555, i64 %557
  %559 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %558, i32 0, i32 2
  %560 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %559, i32 0, i32 3
  store i32 %552, i32* %560, align 4
  %561 = load i32, i32* @VXGE_RTI_RTIMER_VAL, align 4
  %562 = mul nsw i32 %561, 1000
  %563 = sdiv i32 %562, 272
  %564 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %565 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %564, i32 0, i32 0
  %566 = load %struct.TYPE_11__*, %struct.TYPE_11__** %565, align 8
  %567 = load i32, i32* %8, align 4
  %568 = sext i32 %567 to i64
  %569 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %566, i64 %568
  %570 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %569, i32 0, i32 2
  %571 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %570, i32 0, i32 1
  store i32 %563, i32* %571, align 4
  %572 = load i32, i32* @VXGE_RTI_LTIMER_VAL, align 4
  %573 = mul nsw i32 %572, 1000
  %574 = sdiv i32 %573, 272
  %575 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %576 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %575, i32 0, i32 0
  %577 = load %struct.TYPE_11__*, %struct.TYPE_11__** %576, align 8
  %578 = load i32, i32* %8, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %577, i64 %579
  %581 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %580, i32 0, i32 2
  %582 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %581, i32 0, i32 2
  store i32 %574, i32* %582, align 8
  %583 = load i32, i32* @vlan_tag_strip, align 4
  %584 = load %struct.vxge_hw_device_config*, %struct.vxge_hw_device_config** %5, align 8
  %585 = getelementptr inbounds %struct.vxge_hw_device_config, %struct.vxge_hw_device_config* %584, i32 0, i32 0
  %586 = load %struct.TYPE_11__*, %struct.TYPE_11__** %585, align 8
  %587 = load i32, i32* %8, align 4
  %588 = sext i32 %587 to i64
  %589 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %586, i64 %588
  %590 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %589, i32 0, i32 1
  store i32 %583, i32* %590, align 4
  br label %591

591:                                              ; preds = %190, %172
  %592 = load i32, i32* %8, align 4
  %593 = add nsw i32 %592, 1
  store i32 %593, i32* %8, align 4
  br label %141

594:                                              ; preds = %185, %141
  %595 = load i32, i32* %11, align 4
  %596 = load %struct.TYPE_12__*, %struct.TYPE_12__** @driver_config, align 8
  %597 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %596, i32 0, i32 0
  store i32 %595, i32* %597, align 4
  %598 = load i32, i32* %9, align 4
  store i32 %598, i32* %4, align 4
  br label %599

599:                                              ; preds = %594, %31
  %600 = load i32, i32* %4, align 4
  ret i32 %600
}

declare dso_local i32 @netif_get_num_default_rss_queues(...) #1

declare dso_local i32 @vxge_bVALn(i32, i32, i32) #1

declare dso_local i32 @vxge_debug_ll_config(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

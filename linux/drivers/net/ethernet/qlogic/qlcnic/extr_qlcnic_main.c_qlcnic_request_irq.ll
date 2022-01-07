; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_request_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_request_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.TYPE_2__*, i32, %struct.qlcnic_recv_context*, %struct.net_device* }
%struct.qlcnic_host_tx_ring = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_tx_ring* }
%struct.net_device = type { i8*, i32 }
%struct.qlcnic_host_sds_ring = type { i32, i32 }

@QLCNIC_INTERRUPT_TEST = common dso_local global i64 0, align 8
@qlcnic_tmp_intr = common dso_local global i32 0, align 4
@qlcnic_83xx_tmp_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i64 0, align 8
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@qlcnic_msix_intr = common dso_local global i32 0, align 4
@QLCNIC_MSI_ENABLED = common dso_local global i32 0, align 4
@qlcnic_msi_intr = common dso_local global i32 0, align 4
@qlcnic_intr = common dso_local global i32 0, align 4
@qlcnic_83xx_intr = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"qlcnic\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"%s-tx-0-rx-%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%s-rx-%d\00", align 1
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@qlcnic_msix_tx_intr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"%s-tx-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_request_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_request_irq(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %6 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i64 0, i64* %10, align 8
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 7
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %11, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 6
  %18 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %17, align 8
  store %struct.qlcnic_recv_context* %18, %struct.qlcnic_recv_context** %12, align 8
  %19 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %19, i32 0, i32 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @QLCNIC_INTERRUPT_TEST, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %1
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %28 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @qlcnic_tmp_intr, align 4
  store i32 %31, i32* %4, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @qlcnic_83xx_tmp_intr, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %36 = call i32 @QLCNIC_IS_MSI_FAMILY(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @IRQF_SHARED, align 8
  %40 = load i64, i64* %10, align 8
  %41 = or i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %38, %34
  br label %75

43:                                               ; preds = %1
  %44 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %45 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* @qlcnic_msix_intr, align 4
  store i32 %51, i32* %4, align 4
  br label %74

52:                                               ; preds = %43
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %54 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @QLCNIC_MSI_ENABLED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* @qlcnic_msi_intr, align 4
  store i32 %60, i32* %4, align 4
  br label %73

61:                                               ; preds = %52
  %62 = load i64, i64* @IRQF_SHARED, align 8
  %63 = load i64, i64* %10, align 8
  %64 = or i64 %63, %62
  store i64 %64, i64* %10, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* @qlcnic_intr, align 4
  store i32 %69, i32* %4, align 4
  br label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @qlcnic_83xx_intr, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %68
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %50
  br label %75

75:                                               ; preds = %74, %42
  %76 = load %struct.net_device*, %struct.net_device** %11, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 4
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %252

88:                                               ; preds = %75
  %89 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %90 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %88
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %94 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %183

96:                                               ; preds = %92
  %97 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %183

103:                                              ; preds = %96, %88
  %104 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  store i32 %106, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %179, %103
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %182

111:                                              ; preds = %107
  %112 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %12, align 8
  %113 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %112, i32 0, i32 0
  %114 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %114, i64 %116
  %118 = bitcast %struct.qlcnic_host_tx_ring* %117 to %struct.qlcnic_host_sds_ring*
  store %struct.qlcnic_host_sds_ring* %118, %struct.qlcnic_host_sds_ring** %5, align 8
  %119 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %120 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %153

122:                                              ; preds = %111
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %124 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %153, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = sub nsw i32 %128, 1
  %130 = icmp eq i32 %127, %129
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %131
  %139 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %140 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %141, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %152

143:                                              ; preds = %131
  %144 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %145 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.net_device*, %struct.net_device** %11, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %8, align 4
  %151 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %146, i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %149, i32 %150)
  br label %152

152:                                              ; preds = %143, %138
  br label %162

153:                                              ; preds = %126, %122, %111
  %154 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %155 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.net_device*, %struct.net_device** %11, align 8
  %158 = getelementptr inbounds %struct.net_device, %struct.net_device* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load i32, i32* %8, align 4
  %161 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %156, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* %159, i32 %160)
  br label %162

162:                                              ; preds = %153, %152
  %163 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %164 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %4, align 4
  %167 = load i64, i64* %10, align 8
  %168 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %169 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %5, align 8
  %172 = bitcast %struct.qlcnic_host_sds_ring* %171 to %struct.qlcnic_host_tx_ring*
  %173 = call i32 @request_irq(i32 %165, i32 %166, i64 %167, i32 %170, %struct.qlcnic_host_tx_ring* %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32, i32* %7, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %162
  %177 = load i32, i32* %7, align 4
  store i32 %177, i32* %2, align 4
  br label %253

178:                                              ; preds = %162
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %8, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %8, align 4
  br label %107

182:                                              ; preds = %107
  br label %183

183:                                              ; preds = %182, %96, %92
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %185 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %183
  %188 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %189 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %209, label %191

191:                                              ; preds = %187, %183
  %192 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %193 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %251

195:                                              ; preds = %191
  %196 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %197 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %251

202:                                              ; preds = %195
  %203 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %204 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %251, label %209

209:                                              ; preds = %202, %187
  %210 = load i32, i32* @qlcnic_msix_tx_intr, align 4
  store i32 %210, i32* %4, align 4
  store i32 0, i32* %8, align 4
  br label %211

211:                                              ; preds = %247, %209
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %214 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %250

217:                                              ; preds = %211
  %218 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %219 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %218, i32 0, i32 3
  %220 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %220, i64 %222
  store %struct.qlcnic_host_tx_ring* %223, %struct.qlcnic_host_tx_ring** %6, align 8
  %224 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %225 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.net_device*, %struct.net_device** %11, align 8
  %228 = getelementptr inbounds %struct.net_device, %struct.net_device* %227, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %8, align 4
  %231 = call i32 (i32, i32, i8*, ...) @snprintf(i32 %226, i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %229, i32 %230)
  %232 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %233 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %4, align 4
  %236 = load i64, i64* %10, align 8
  %237 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %238 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %6, align 8
  %241 = call i32 @request_irq(i32 %234, i32 %235, i64 %236, i32 %239, %struct.qlcnic_host_tx_ring* %240)
  store i32 %241, i32* %7, align 4
  %242 = load i32, i32* %7, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %217
  %245 = load i32, i32* %7, align 4
  store i32 %245, i32* %2, align 4
  br label %253

246:                                              ; preds = %217
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %8, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %8, align 4
  br label %211

250:                                              ; preds = %211
  br label %251

251:                                              ; preds = %250, %202, %195, %191
  br label %252

252:                                              ; preds = %251, %75
  store i32 0, i32* %2, align 4
  br label %253

253:                                              ; preds = %252, %244, %176
  %254 = load i32, i32* %2, align 4
  ret i32 %254
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCNIC_IS_MSI_FAMILY(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.qlcnic_host_tx_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

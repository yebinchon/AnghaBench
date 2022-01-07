; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_cfg_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_cfg_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i64, %struct.aq_nic_cfg_s }
%struct.aq_nic_cfg_s = type { i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i8*, i8*, i8*, i32, i32, i32, i32, %struct.TYPE_3__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@AQ_CFG_TCS_DEF = common dso_local global i32 0, align 4
@AQ_CFG_IS_POLLING_DEF = common dso_local global i32 0, align 4
@aq_itr = common dso_local global i32 0, align 4
@aq_itr_tx = common dso_local global i32 0, align 4
@aq_itr_rx = common dso_local global i32 0, align 4
@AQ_CFG_RX_PAGEORDER = common dso_local global i32 0, align 4
@AQ_CFG_IS_RSS_DEF = common dso_local global i32 0, align 4
@AQ_CFG_NUM_RSS_QUEUES_DEF = common dso_local global i64 0, align 8
@AQ_CFG_RSS_BASE_CPU_NUM_DEF = common dso_local global i32 0, align 4
@AQ_CFG_FC_MODE = common dso_local global i32 0, align 4
@AQ_CFG_MTU_DEF = common dso_local global i32 0, align 4
@AQ_CFG_SPEED_MSK = common dso_local global i32 0, align 4
@AQ_CFG_IS_AUTONEG_DEF = common dso_local global i32 0, align 4
@AQ_CFG_IS_LRO_DEF = common dso_local global i32 0, align 4
@AQ_CFG_RXDS_DEF = common dso_local global i64 0, align 8
@AQ_CFG_TXDS_DEF = common dso_local global i64 0, align 8
@AQ_CFG_VECS_DEF = common dso_local global i64 0, align 8
@AQ_HW_SERVICE_IRQS = common dso_local global i64 0, align 8
@AQ_HW_IRQ_LEGACY = common dso_local global i64 0, align 8
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_nic_cfg_start(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.aq_nic_cfg_s*, align 8
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  %4 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %5 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %4, i32 0, i32 1
  store %struct.aq_nic_cfg_s* %5, %struct.aq_nic_cfg_s** %3, align 8
  %6 = load i32, i32* @AQ_CFG_TCS_DEF, align 4
  %7 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %8 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %7, i32 0, i32 23
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @AQ_CFG_IS_POLLING_DEF, align 4
  %10 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %11 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %10, i32 0, i32 22
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @aq_itr, align 4
  %13 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %13, i32 0, i32 21
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @aq_itr_tx, align 4
  %16 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %17 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %16, i32 0, i32 20
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @aq_itr_rx, align 4
  %19 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %20 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %19, i32 0, i32 19
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @AQ_CFG_RX_PAGEORDER, align 4
  %22 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %23 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %22, i32 0, i32 18
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @AQ_CFG_IS_RSS_DEF, align 4
  %25 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %26 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i64, i64* @AQ_CFG_NUM_RSS_QUEUES_DEF, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %30 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %29, i32 0, i32 10
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @AQ_CFG_RSS_BASE_CPU_NUM_DEF, align 4
  %32 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %33 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %32, i32 0, i32 17
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @AQ_CFG_FC_MODE, align 4
  %36 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %37 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %36, i32 0, i32 16
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @AQ_CFG_MTU_DEF, align 4
  %39 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %40 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %39, i32 0, i32 15
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @AQ_CFG_SPEED_MSK, align 4
  %42 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %43 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @AQ_CFG_IS_AUTONEG_DEF, align 4
  %45 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %46 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %45, i32 0, i32 14
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @AQ_CFG_IS_LRO_DEF, align 4
  %48 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %49 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 8
  %50 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %51 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %50, i32 0, i32 8
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i64, i64* @AQ_CFG_RXDS_DEF, align 8
  %56 = call i8* @min(i32 %54, i64 %55)
  %57 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %58 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %57, i32 0, i32 12
  store i8* %56, i8** %58, align 8
  %59 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %60 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %59, i32 0, i32 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i64, i64* @AQ_CFG_TXDS_DEF, align 8
  %65 = call i8* @min(i32 %63, i64 %64)
  %66 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %67 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %66, i32 0, i32 11
  store i8* %65, i8** %67, align 8
  %68 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %69 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %68, i32 0, i32 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* @AQ_CFG_VECS_DEF, align 8
  %74 = call i8* @min(i32 %72, i64 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %77 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %79 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 (...) @num_online_cpus()
  %82 = call i8* @min(i32 %80, i64 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %85 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %87 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AQ_HW_SERVICE_IRQS, align 8
  %90 = icmp sgt i64 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %1
  %92 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %93 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %96 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AQ_HW_SERVICE_IRQS, align 8
  %99 = sub nsw i64 %97, %98
  %100 = call i8* @min(i32 %94, i64 %99)
  %101 = ptrtoint i8* %100 to i32
  %102 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %103 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %91, %1
  %105 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %106 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = icmp uge i32 %107, 8
  br i1 %108, label %109, label %112

109:                                              ; preds = %104
  %110 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %111 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %110, i32 0, i32 1
  store i32 8, i32* %111, align 4
  br label %133

112:                                              ; preds = %104
  %113 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %114 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp uge i32 %115, 4
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %119 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %118, i32 0, i32 1
  store i32 4, i32* %119, align 4
  br label %132

120:                                              ; preds = %112
  %121 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %122 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp uge i32 %123, 2
  br i1 %124, label %125, label %128

125:                                              ; preds = %120
  %126 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %127 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %126, i32 0, i32 1
  store i32 2, i32* %127, align 4
  br label %131

128:                                              ; preds = %120
  %129 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %130 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %125
  br label %132

132:                                              ; preds = %131, %117
  br label %133

133:                                              ; preds = %132, %109
  %134 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %135 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i64, i64* @AQ_CFG_NUM_RSS_QUEUES_DEF, align 8
  %138 = call i8* @min(i32 %136, i64 %137)
  %139 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %140 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %139, i32 0, i32 10
  store i8* %138, i8** %140, align 8
  %141 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %142 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %143 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %142, i32 0, i32 10
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @aq_nic_rss_init(%struct.aq_nic_s* %141, i8* %144)
  %146 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %147 = call i64 @aq_pci_func_get_irq_type(%struct.aq_nic_s* %146)
  %148 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %149 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %151 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @AQ_HW_IRQ_LEGACY, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %167, label %155

155:                                              ; preds = %133
  %156 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %157 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %156, i32 0, i32 8
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %167, label %162

162:                                              ; preds = %155
  %163 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %164 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %165, 1
  br i1 %166, label %167, label %172

167:                                              ; preds = %162, %155, %133
  %168 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %169 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %171 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %170, i32 0, i32 1
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %167, %162
  %173 = load i64, i64* @AQ_HW_SERVICE_IRQS, align 8
  %174 = icmp sgt i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %177 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add i32 %178, 1
  %180 = zext i32 %179 to i64
  %181 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %182 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sle i64 %180, %183
  br i1 %184, label %185, label %191

185:                                              ; preds = %175
  %186 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %187 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %190 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 8
  br label %194

191:                                              ; preds = %175, %172
  %192 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %193 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %192, i32 0, i32 3
  store i32 0, i32* %193, align 8
  br label %194

194:                                              ; preds = %191, %185
  %195 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %196 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %195, i32 0, i32 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %201 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %200, i32 0, i32 9
  %202 = load i32, i32* %201, align 8
  %203 = and i32 %202, %199
  store i32 %203, i32* %201, align 8
  %204 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %205 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %204, i32 0, i32 8
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %210 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %209, i32 0, i32 4
  store i32 %208, i32* %210, align 4
  %211 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %212 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = xor i1 %217, true
  %219 = zext i1 %218 to i32
  %220 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %221 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %220, i32 0, i32 5
  store i32 %219, i32* %221, align 8
  %222 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %223 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %222, i32 0, i32 4
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  %228 = xor i1 %227, true
  %229 = xor i1 %228, true
  %230 = zext i1 %229 to i32
  %231 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %232 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 4
  %233 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %3, align 8
  %234 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %233, i32 0, i32 7
  store i32 1, i32* %234, align 8
  ret void
}

declare dso_local i8* @min(i32, i64) #1

declare dso_local i64 @num_online_cpus(...) #1

declare dso_local i32 @aq_nic_rss_init(%struct.aq_nic_s*, i8*) #1

declare dso_local i64 @aq_pci_func_get_irq_type(%struct.aq_nic_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

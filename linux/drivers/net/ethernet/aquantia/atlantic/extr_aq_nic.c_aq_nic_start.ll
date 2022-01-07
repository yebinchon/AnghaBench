; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__*, %struct.TYPE_8__, i32, %struct.aq_vec_s**, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 (i32, i32, i32)*, i32 (i32, i32)*, i32 (i32)*, i32 (i32, i32)* }
%struct.TYPE_8__ = type { i32, i64 }
%struct.aq_vec_s = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@aq_nic_service_task = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@AQ_CFG_POLLING_TIMER_INTERVAL = common dso_local global i64 0, align 8
@aq_vec_isr = common dso_local global i32 0, align 4
@aq_linkstate_threaded_isr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@AQ_CFG_IRQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aq_nic_start(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca %struct.aq_vec_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  store %struct.aq_vec_s* null, %struct.aq_vec_s** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %8 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %7, i32 0, i32 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %10, align 8
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %13 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %16 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %15, i32 0, i32 12
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %20 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %19, i32 0, i32 12
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 %11(i32 %14, i32 %18, i32 %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %238

27:                                               ; preds = %1
  %28 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %29 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %28, i32 0, i32 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32 (i32, i32)*, i32 (i32, i32)** %31, align 8
  %33 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %34 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %37 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %36, i32 0, i32 11
  %38 = load i32, i32* %37, align 4
  %39 = call i32 %32(i32 %35, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  br label %238

43:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  %44 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %45 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %44, i32 0, i32 7
  %46 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %45, align 8
  %47 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %46, i64 0
  %48 = load %struct.aq_vec_s*, %struct.aq_vec_s** %47, align 8
  store %struct.aq_vec_s* %48, %struct.aq_vec_s** %3, align 8
  br label %49

49:                                               ; preds = %62, %43
  %50 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %51 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %49
  %56 = load %struct.aq_vec_s*, %struct.aq_vec_s** %3, align 8
  %57 = call i32 @aq_vec_start(%struct.aq_vec_s* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %238

61:                                               ; preds = %55
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %5, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %5, align 4
  %65 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %66 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %65, i32 0, i32 7
  %67 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %67, i64 %69
  %71 = load %struct.aq_vec_s*, %struct.aq_vec_s** %70, align 8
  store %struct.aq_vec_s* %71, %struct.aq_vec_s** %3, align 8
  br label %49

72:                                               ; preds = %49
  %73 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %74 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %73, i32 0, i32 4
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32 (i32)*, i32 (i32)** %76, align 8
  %78 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %79 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 %77(i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %238

85:                                               ; preds = %72
  %86 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %87 = call i32 @aq_nic_update_interrupt_moderation_settings(%struct.aq_nic_s* %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %238

91:                                               ; preds = %85
  %92 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %93 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %92, i32 0, i32 10
  %94 = load i32, i32* @aq_nic_service_task, align 4
  %95 = call i32 @INIT_WORK(i32* %93, i32 %94)
  %96 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %97 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %96, i32 0, i32 9
  %98 = call i32 @timer_setup(i32* %97, i32 (i32*)* @aq_nic_service_timer_cb, i32 0)
  %99 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %100 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %99, i32 0, i32 9
  %101 = call i32 @aq_nic_service_timer_cb(i32* %100)
  %102 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %103 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %102, i32 0, i32 5
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %91
  %108 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %109 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %108, i32 0, i32 8
  %110 = call i32 @timer_setup(i32* %109, i32 (i32*)* @aq_nic_polling_timer_cb, i32 0)
  %111 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %112 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %111, i32 0, i32 8
  %113 = load i64, i64* @jiffies, align 8
  %114 = load i64, i64* @AQ_CFG_POLLING_TIMER_INTERVAL, align 8
  %115 = add nsw i64 %113, %114
  %116 = call i32 @mod_timer(i32* %112, i64 %115)
  br label %211

117:                                              ; preds = %91
  store i32 0, i32* %5, align 4
  %118 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %119 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %118, i32 0, i32 7
  %120 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %119, align 8
  %121 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %120, i64 0
  %122 = load %struct.aq_vec_s*, %struct.aq_vec_s** %121, align 8
  store %struct.aq_vec_s* %122, %struct.aq_vec_s** %3, align 8
  br label %123

123:                                              ; preds = %146, %117
  %124 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %125 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %5, align 4
  %128 = icmp ugt i32 %126, %127
  br i1 %128, label %129, label %156

129:                                              ; preds = %123
  %130 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %131 = load i32, i32* %5, align 4
  %132 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %133 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @aq_vec_isr, align 4
  %138 = load %struct.aq_vec_s*, %struct.aq_vec_s** %3, align 8
  %139 = load %struct.aq_vec_s*, %struct.aq_vec_s** %3, align 8
  %140 = call i32 @aq_vec_get_affinity_mask(%struct.aq_vec_s* %139)
  %141 = call i32 @aq_pci_func_alloc_irq(%struct.aq_nic_s* %130, i32 %131, i32 %136, i32 %137, %struct.aq_vec_s* %138, i32 %140)
  store i32 %141, i32* %4, align 4
  %142 = load i32, i32* %4, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %238

145:                                              ; preds = %129
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %5, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %5, align 4
  %149 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %150 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %149, i32 0, i32 7
  %151 = load %struct.aq_vec_s**, %struct.aq_vec_s*** %150, align 8
  %152 = load i32, i32* %5, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.aq_vec_s*, %struct.aq_vec_s** %151, i64 %153
  %155 = load %struct.aq_vec_s*, %struct.aq_vec_s** %154, align 8
  store %struct.aq_vec_s* %155, %struct.aq_vec_s** %3, align 8
  br label %123

156:                                              ; preds = %123
  %157 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %158 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %157, i32 0, i32 5
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %196

162:                                              ; preds = %156
  %163 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %164 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %163, i32 0, i32 6
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %167 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %166, i32 0, i32 5
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @pci_irq_vector(i32 %165, i32 %169)
  store i32 %170, i32* %6, align 4
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @aq_linkstate_threaded_isr, align 4
  %173 = load i32, i32* @IRQF_SHARED, align 4
  %174 = load i32, i32* @IRQF_ONESHOT, align 4
  %175 = or i32 %173, %174
  %176 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %177 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %176, i32 0, i32 2
  %178 = load %struct.TYPE_10__*, %struct.TYPE_10__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %182 = call i32 @request_threaded_irq(i32 %171, i32* null, i32 %172, i32 %175, i32 %180, %struct.aq_nic_s* %181)
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* %4, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %162
  br label %238

186:                                              ; preds = %162
  %187 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %188 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = shl i32 1, %190
  %192 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %193 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %191
  store i32 %195, i32* %193, align 4
  br label %196

196:                                              ; preds = %186, %156
  %197 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %198 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %197, i32 0, i32 4
  %199 = load %struct.TYPE_9__*, %struct.TYPE_9__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %199, i32 0, i32 3
  %201 = load i32 (i32, i32)*, i32 (i32, i32)** %200, align 8
  %202 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %203 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @AQ_CFG_IRQ_MASK, align 4
  %206 = call i32 %201(i32 %204, i32 %205)
  store i32 %206, i32* %4, align 4
  %207 = load i32, i32* %4, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %196
  br label %238

210:                                              ; preds = %196
  br label %211

211:                                              ; preds = %210, %107
  %212 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %213 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %212, i32 0, i32 2
  %214 = load %struct.TYPE_10__*, %struct.TYPE_10__** %213, align 8
  %215 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %216 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @netif_set_real_num_tx_queues(%struct.TYPE_10__* %214, i32 %217)
  store i32 %218, i32* %4, align 4
  %219 = load i32, i32* %4, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %211
  br label %238

222:                                              ; preds = %211
  %223 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %224 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %223, i32 0, i32 2
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %224, align 8
  %226 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %227 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @netif_set_real_num_rx_queues(%struct.TYPE_10__* %225, i32 %228)
  store i32 %229, i32* %4, align 4
  %230 = load i32, i32* %4, align 4
  %231 = icmp slt i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %222
  br label %238

233:                                              ; preds = %222
  %234 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %235 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %234, i32 0, i32 2
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = call i32 @netif_tx_start_all_queues(%struct.TYPE_10__* %236)
  br label %238

238:                                              ; preds = %233, %232, %221, %209, %185, %144, %90, %84, %60, %42, %26
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local i32 @aq_vec_start(%struct.aq_vec_s*) #1

declare dso_local i32 @aq_nic_update_interrupt_moderation_settings(%struct.aq_nic_s*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @timer_setup(i32*, i32 (i32*)*, i32) #1

declare dso_local i32 @aq_nic_service_timer_cb(i32*) #1

declare dso_local i32 @aq_nic_polling_timer_cb(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @aq_pci_func_alloc_irq(%struct.aq_nic_s*, i32, i32, i32, %struct.aq_vec_s*, i32) #1

declare dso_local i32 @aq_vec_get_affinity_mask(%struct.aq_vec_s*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i32, %struct.aq_nic_s*) #1

declare dso_local i32 @netif_set_real_num_tx_queues(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @netif_set_real_num_rx_queues(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

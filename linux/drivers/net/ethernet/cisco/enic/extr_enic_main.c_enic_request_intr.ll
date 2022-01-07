; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_request_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_request_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i8*, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.enic*, %struct.TYPE_4__*, i32, %struct.enic* }
%struct.TYPE_6__ = type { i8*, i32, %struct.net_device*, i8* }
%struct.net_device = type { i8*, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.net_device*, %struct.TYPE_4__*, i32, %struct.net_device* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@enic_isr_legacy = common dso_local global i8* null, align 8
@IRQF_SHARED = common dso_local global i32 0, align 4
@enic_isr_msi = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s-rx-%u\00", align 1
@enic_isr_msix = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"%s-tx-%u\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%s-err\00", align 1
@enic_isr_msix_err = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [10 x i8] c"%s-notify\00", align 1
@enic_isr_msix_notify = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*)* @enic_request_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_request_intr(%struct.enic* %0) #0 {
  %2 = alloca %struct.enic*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %2, align 8
  %8 = load %struct.enic*, %struct.enic** %2, align 8
  %9 = getelementptr inbounds %struct.enic, %struct.enic* %8, i32 0, i32 9
  %10 = load %struct.enic*, %struct.enic** %9, align 8
  %11 = bitcast %struct.enic* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.enic*, %struct.enic** %2, align 8
  %13 = bitcast %struct.enic* %12 to %struct.net_device*
  %14 = call i32 @enic_set_rx_cpu_rmap(%struct.net_device* %13)
  %15 = load %struct.enic*, %struct.enic** %2, align 8
  %16 = getelementptr inbounds %struct.enic, %struct.enic* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @vnic_dev_get_intr_mode(i32 %17)
  switch i32 %18, label %291 [
    i32 130, label %19
    i32 129, label %32
    i32 128, label %45
  ]

19:                                               ; preds = %1
  %20 = load %struct.enic*, %struct.enic** %2, align 8
  %21 = getelementptr inbounds %struct.enic, %struct.enic* %20, i32 0, i32 7
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** @enic_isr_legacy, align 8
  %26 = load i32, i32* @IRQF_SHARED, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @request_irq(i32 %24, i8* %25, i32 %26, i8* %29, %struct.net_device* %30)
  store i32 %31, i32* %6, align 4
  br label %292

32:                                               ; preds = %1
  %33 = load %struct.enic*, %struct.enic** %2, align 8
  %34 = getelementptr inbounds %struct.enic, %struct.enic* %33, i32 0, i32 7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** @enic_isr_msi, align 8
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.enic*, %struct.enic** %2, align 8
  %43 = bitcast %struct.enic* %42 to %struct.net_device*
  %44 = call i32 @request_irq(i32 %37, i8* %38, i32 0, i8* %41, %struct.net_device* %43)
  store i32 %44, i32* %6, align 4
  br label %292

45:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %92, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.enic*, %struct.enic** %2, align 8
  %49 = getelementptr inbounds %struct.enic, %struct.enic* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp ult i32 %47, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %46
  %53 = load %struct.enic*, %struct.enic** %2, align 8
  %54 = bitcast %struct.enic* %53 to %struct.net_device*
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @enic_msix_rq_intr(%struct.net_device* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.enic*, %struct.enic** %2, align 8
  %58 = getelementptr inbounds %struct.enic, %struct.enic* %57, i32 0, i32 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %64, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %67, i32 %68)
  %70 = load i8*, i8** @enic_isr_msix, align 8
  %71 = load %struct.enic*, %struct.enic** %2, align 8
  %72 = getelementptr inbounds %struct.enic, %struct.enic* %71, i32 0, i32 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  store i8* %70, i8** %77, align 8
  %78 = load %struct.enic*, %struct.enic** %2, align 8
  %79 = getelementptr inbounds %struct.enic, %struct.enic* %78, i32 0, i32 6
  %80 = load %struct.enic*, %struct.enic** %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.enic, %struct.enic* %80, i64 %82
  %84 = bitcast %struct.enic* %83 to %struct.net_device*
  %85 = load %struct.enic*, %struct.enic** %2, align 8
  %86 = getelementptr inbounds %struct.enic, %struct.enic* %85, i32 0, i32 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store %struct.net_device* %84, %struct.net_device** %91, align 8
  br label %92

92:                                               ; preds = %52
  %93 = load i32, i32* %4, align 4
  %94 = add i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %46

95:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %96

96:                                               ; preds = %146, %95
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.enic*, %struct.enic** %2, align 8
  %99 = getelementptr inbounds %struct.enic, %struct.enic* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ult i32 %97, %100
  br i1 %101, label %102, label %149

102:                                              ; preds = %96
  %103 = load %struct.enic*, %struct.enic** %2, align 8
  %104 = bitcast %struct.enic* %103 to %struct.net_device*
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @enic_cq_wq(%struct.net_device* %104, i32 %105)
  store i32 %106, i32* %7, align 4
  %107 = load %struct.enic*, %struct.enic** %2, align 8
  %108 = bitcast %struct.enic* %107 to %struct.net_device*
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @enic_msix_wq_intr(%struct.net_device* %108, i32 %109)
  store i32 %110, i32* %5, align 4
  %111 = load %struct.enic*, %struct.enic** %2, align 8
  %112 = getelementptr inbounds %struct.enic, %struct.enic* %111, i32 0, i32 4
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.net_device*, %struct.net_device** %3, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 0
  %121 = load i8*, i8** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %118, i32 8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %121, i32 %122)
  %124 = load i8*, i8** @enic_isr_msix, align 8
  %125 = load %struct.enic*, %struct.enic** %2, align 8
  %126 = getelementptr inbounds %struct.enic, %struct.enic* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 3
  store i8* %124, i8** %131, align 8
  %132 = load %struct.enic*, %struct.enic** %2, align 8
  %133 = getelementptr inbounds %struct.enic, %struct.enic* %132, i32 0, i32 6
  %134 = load %struct.enic*, %struct.enic** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.enic, %struct.enic* %134, i64 %136
  %138 = bitcast %struct.enic* %137 to %struct.net_device*
  %139 = load %struct.enic*, %struct.enic** %2, align 8
  %140 = getelementptr inbounds %struct.enic, %struct.enic* %139, i32 0, i32 4
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = load i32, i32* %5, align 4
  %143 = zext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  store %struct.net_device* %138, %struct.net_device** %145, align 8
  br label %146

146:                                              ; preds = %102
  %147 = load i32, i32* %4, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %4, align 4
  br label %96

149:                                              ; preds = %96
  %150 = load %struct.enic*, %struct.enic** %2, align 8
  %151 = bitcast %struct.enic* %150 to %struct.net_device*
  %152 = call i32 @enic_msix_err_intr(%struct.net_device* %151)
  store i32 %152, i32* %5, align 4
  %153 = load %struct.enic*, %struct.enic** %2, align 8
  %154 = getelementptr inbounds %struct.enic, %struct.enic* %153, i32 0, i32 4
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = load i32, i32* %5, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.net_device*, %struct.net_device** %3, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %160, i32 8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %163)
  %165 = load i8*, i8** @enic_isr_msix_err, align 8
  %166 = load %struct.enic*, %struct.enic** %2, align 8
  %167 = getelementptr inbounds %struct.enic, %struct.enic* %166, i32 0, i32 4
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = zext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 3
  store i8* %165, i8** %172, align 8
  %173 = load %struct.enic*, %struct.enic** %2, align 8
  %174 = bitcast %struct.enic* %173 to %struct.net_device*
  %175 = load %struct.enic*, %struct.enic** %2, align 8
  %176 = getelementptr inbounds %struct.enic, %struct.enic* %175, i32 0, i32 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 2
  store %struct.net_device* %174, %struct.net_device** %181, align 8
  %182 = load %struct.enic*, %struct.enic** %2, align 8
  %183 = bitcast %struct.enic* %182 to %struct.net_device*
  %184 = call i32 @enic_msix_notify_intr(%struct.net_device* %183)
  store i32 %184, i32* %5, align 4
  %185 = load %struct.enic*, %struct.enic** %2, align 8
  %186 = getelementptr inbounds %struct.enic, %struct.enic* %185, i32 0, i32 4
  %187 = load %struct.TYPE_6__*, %struct.TYPE_6__** %186, align 8
  %188 = load i32, i32* %5, align 4
  %189 = zext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = load i8*, i8** %191, align 8
  %193 = load %struct.net_device*, %struct.net_device** %3, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %192, i32 8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %195)
  %197 = load i8*, i8** @enic_isr_msix_notify, align 8
  %198 = load %struct.enic*, %struct.enic** %2, align 8
  %199 = getelementptr inbounds %struct.enic, %struct.enic* %198, i32 0, i32 4
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = load i32, i32* %5, align 4
  %202 = zext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 3
  store i8* %197, i8** %204, align 8
  %205 = load %struct.enic*, %struct.enic** %2, align 8
  %206 = bitcast %struct.enic* %205 to %struct.net_device*
  %207 = load %struct.enic*, %struct.enic** %2, align 8
  %208 = getelementptr inbounds %struct.enic, %struct.enic* %207, i32 0, i32 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = load i32, i32* %5, align 4
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i64 %211
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 2
  store %struct.net_device* %206, %struct.net_device** %213, align 8
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %229, %149
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.enic*, %struct.enic** %2, align 8
  %217 = getelementptr inbounds %struct.enic, %struct.enic* %216, i32 0, i32 4
  %218 = load %struct.TYPE_6__*, %struct.TYPE_6__** %217, align 8
  %219 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %218)
  %220 = icmp ult i32 %215, %219
  br i1 %220, label %221, label %232

221:                                              ; preds = %214
  %222 = load %struct.enic*, %struct.enic** %2, align 8
  %223 = getelementptr inbounds %struct.enic, %struct.enic* %222, i32 0, i32 4
  %224 = load %struct.TYPE_6__*, %struct.TYPE_6__** %223, align 8
  %225 = load i32, i32* %4, align 4
  %226 = zext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 1
  store i32 0, i32* %228, align 8
  br label %229

229:                                              ; preds = %221
  %230 = load i32, i32* %4, align 4
  %231 = add i32 %230, 1
  store i32 %231, i32* %4, align 4
  br label %214

232:                                              ; preds = %214
  store i32 0, i32* %4, align 4
  br label %233

233:                                              ; preds = %287, %232
  %234 = load i32, i32* %4, align 4
  %235 = load %struct.enic*, %struct.enic** %2, align 8
  %236 = getelementptr inbounds %struct.enic, %struct.enic* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp ult i32 %234, %237
  br i1 %238, label %239, label %290

239:                                              ; preds = %233
  %240 = load %struct.enic*, %struct.enic** %2, align 8
  %241 = getelementptr inbounds %struct.enic, %struct.enic* %240, i32 0, i32 5
  %242 = load %struct.TYPE_5__*, %struct.TYPE_5__** %241, align 8
  %243 = load i32, i32* %4, align 4
  %244 = zext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = load %struct.enic*, %struct.enic** %2, align 8
  %249 = getelementptr inbounds %struct.enic, %struct.enic* %248, i32 0, i32 4
  %250 = load %struct.TYPE_6__*, %struct.TYPE_6__** %249, align 8
  %251 = load i32, i32* %4, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 3
  %255 = load i8*, i8** %254, align 8
  %256 = load %struct.enic*, %struct.enic** %2, align 8
  %257 = getelementptr inbounds %struct.enic, %struct.enic* %256, i32 0, i32 4
  %258 = load %struct.TYPE_6__*, %struct.TYPE_6__** %257, align 8
  %259 = load i32, i32* %4, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = load %struct.enic*, %struct.enic** %2, align 8
  %265 = getelementptr inbounds %struct.enic, %struct.enic* %264, i32 0, i32 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %265, align 8
  %267 = load i32, i32* %4, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 2
  %271 = load %struct.net_device*, %struct.net_device** %270, align 8
  %272 = call i32 @request_irq(i32 %247, i8* %255, i32 0, i8* %263, %struct.net_device* %271)
  store i32 %272, i32* %6, align 4
  %273 = load i32, i32* %6, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %239
  %276 = load %struct.enic*, %struct.enic** %2, align 8
  %277 = bitcast %struct.enic* %276 to %struct.net_device*
  %278 = call i32 @enic_free_intr(%struct.net_device* %277)
  br label %290

279:                                              ; preds = %239
  %280 = load %struct.enic*, %struct.enic** %2, align 8
  %281 = getelementptr inbounds %struct.enic, %struct.enic* %280, i32 0, i32 4
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %281, align 8
  %283 = load i32, i32* %4, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 1
  store i32 1, i32* %286, align 8
  br label %287

287:                                              ; preds = %279
  %288 = load i32, i32* %4, align 4
  %289 = add i32 %288, 1
  store i32 %289, i32* %4, align 4
  br label %233

290:                                              ; preds = %275, %233
  br label %292

291:                                              ; preds = %1
  br label %292

292:                                              ; preds = %291, %290, %32, %19
  %293 = load i32, i32* %6, align 4
  ret i32 %293
}

declare dso_local i32 @enic_set_rx_cpu_rmap(%struct.net_device*) #1

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @request_irq(i32, i8*, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @enic_msix_rq_intr(%struct.net_device*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @enic_cq_wq(%struct.net_device*, i32) #1

declare dso_local i32 @enic_msix_wq_intr(%struct.net_device*, i32) #1

declare dso_local i32 @enic_msix_err_intr(%struct.net_device*) #1

declare dso_local i32 @enic_msix_notify_intr(%struct.net_device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @enic_free_intr(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

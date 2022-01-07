; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-drv.c_xgbe_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i8*, i32, i8*, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.xgbe_prv_data**, i32, i32, i32, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }
%struct.xgbe_channel = type { i8*, i32, i8*, i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.xgbe_channel**, i32, i32, i32, i32, %struct.net_device* }

@xgbe_isr_task = common dso_local global i32 0, align 4
@xgbe_ecc_isr_task = common dso_local global i32 0, align 4
@xgbe_isr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"error requesting irq %d\0A\00", align 1
@xgbe_ecc_isr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"error requesting ecc irq %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"%s-TxRx-%u\00", align 1
@xgbe_dma_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_request_irqs(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_channel*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 14
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %11, i32 0, i32 13
  %13 = load i32, i32* @xgbe_isr_task, align 4
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = ptrtoint %struct.xgbe_prv_data* %14 to i64
  %16 = call i32 @tasklet_init(i32* %12, i32 %13, i64 %15)
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %17, i32 0, i32 12
  %19 = load i32, i32* @xgbe_ecc_isr_task, align 4
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = ptrtoint %struct.xgbe_prv_data* %20 to i64
  %22 = call i32 @tasklet_init(i32* %18, i32 %19, i64 %21)
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @xgbe_isr, align 4
  %30 = load %struct.net_device*, %struct.net_device** %5, align 8
  %31 = call i8* @netdev_name(%struct.net_device* %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = call i32 @devm_request_irq(i32 %25, i32 %28, i32 %29, i32 0, i8* %31, %struct.xgbe_prv_data* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %1
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_alert(%struct.net_device* %37, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %212

43:                                               ; preds = %1
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %45 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %44, i32 0, i32 7
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %80

50:                                               ; preds = %43
  %51 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %52 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %80

58:                                               ; preds = %50
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %60 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %63 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @xgbe_ecc_isr, align 4
  %66 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %67 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %70 = call i32 @devm_request_irq(i32 %61, i32 %64, i32 %65, i32 0, i8* %68, %struct.xgbe_prv_data* %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.net_device*, %struct.net_device** %5, align 8
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @netdev_alert(%struct.net_device* %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %77)
  br label %202

79:                                               ; preds = %58
  br label %80

80:                                               ; preds = %79, %50, %43
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %212

86:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %139, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ult i32 %88, %91
  br i1 %92, label %93, label %142

93:                                               ; preds = %87
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %95 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %94, i32 0, i32 9
  %96 = load %struct.xgbe_prv_data**, %struct.xgbe_prv_data*** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %96, i64 %98
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %99, align 8
  %101 = bitcast %struct.xgbe_prv_data* %100 to %struct.xgbe_channel*
  store %struct.xgbe_channel* %101, %struct.xgbe_channel** %4, align 8
  %102 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %103 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load %struct.net_device*, %struct.net_device** %5, align 8
  %106 = call i8* @netdev_name(%struct.net_device* %105)
  %107 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %108 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @snprintf(i8* %104, i32 7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %106, i32 %109)
  %111 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %112 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %115 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @xgbe_dma_isr, align 4
  %118 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %119 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %122 = bitcast %struct.xgbe_channel* %121 to %struct.xgbe_prv_data*
  %123 = call i32 @devm_request_irq(i32 %113, i32 %116, i32 %117, i32 0, i8* %120, %struct.xgbe_prv_data* %122)
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %7, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %93
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %129 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %128, i32 0, i32 8
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @netdev_alert(%struct.net_device* %127, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %130)
  br label %143

132:                                              ; preds = %93
  %133 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %134 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %133, i32 0, i32 8
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %137 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %136, i32 0, i32 10
  %138 = call i32 @irq_set_affinity_hint(i32 %135, i32* %137)
  br label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  %141 = add i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %87

142:                                              ; preds = %87
  store i32 0, i32* %2, align 4
  br label %212

143:                                              ; preds = %126
  %144 = load i32, i32* %6, align 4
  %145 = add i32 %144, -1
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %174, %143
  %147 = load i32, i32* %6, align 4
  %148 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %149 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = icmp ult i32 %147, %150
  br i1 %151, label %152, label %177

152:                                              ; preds = %146
  %153 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %154 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %153, i32 0, i32 9
  %155 = load %struct.xgbe_prv_data**, %struct.xgbe_prv_data*** %154, align 8
  %156 = load i32, i32* %6, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %155, i64 %157
  %159 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %158, align 8
  %160 = bitcast %struct.xgbe_prv_data* %159 to %struct.xgbe_channel*
  store %struct.xgbe_channel* %160, %struct.xgbe_channel** %4, align 8
  %161 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %162 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %161, i32 0, i32 8
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @irq_set_affinity_hint(i32 %163, i32* null)
  %165 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %166 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %169 = getelementptr inbounds %struct.xgbe_channel, %struct.xgbe_channel* %168, i32 0, i32 8
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.xgbe_channel*, %struct.xgbe_channel** %4, align 8
  %172 = bitcast %struct.xgbe_channel* %171 to %struct.xgbe_prv_data*
  %173 = call i32 @devm_free_irq(i32 %167, i32 %170, %struct.xgbe_prv_data* %172)
  br label %174

174:                                              ; preds = %152
  %175 = load i32, i32* %6, align 4
  %176 = add i32 %175, -1
  store i32 %176, i32* %6, align 4
  br label %146

177:                                              ; preds = %146
  %178 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %179 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %178, i32 0, i32 7
  %180 = load %struct.TYPE_2__*, %struct.TYPE_2__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %177
  %185 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %186 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %189 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %187, %190
  br i1 %191, label %192, label %201

192:                                              ; preds = %184
  %193 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %194 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %197 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %196, i32 0, i32 6
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %200 = call i32 @devm_free_irq(i32 %195, i32 %198, %struct.xgbe_prv_data* %199)
  br label %201

201:                                              ; preds = %192, %184, %177
  br label %202

202:                                              ; preds = %201, %73
  %203 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %204 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %203, i32 0, i32 5
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %207 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %210 = call i32 @devm_free_irq(i32 %205, i32 %208, %struct.xgbe_prv_data* %209)
  %211 = load i32, i32* %7, align 4
  store i32 %211, i32* %2, align 4
  br label %212

212:                                              ; preds = %202, %142, %85, %36
  %213 = load i32, i32* %2, align 4
  ret i32 %213
}

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i8*, %struct.xgbe_prv_data*) #1

declare dso_local i8* @netdev_name(%struct.net_device*) #1

declare dso_local i32 @netdev_alert(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @irq_set_affinity_hint(i32, i32*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

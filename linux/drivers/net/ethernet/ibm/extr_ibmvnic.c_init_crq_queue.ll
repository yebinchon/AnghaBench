; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, %struct.vio_dev*, i32, %struct.ibmvnic_crq_queue }
%struct.vio_dev = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_crq_queue = type { i32, %union.ibmvnic_crq*, i32, i32, i64, i32 }
%union.ibmvnic_crq = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@H_REG_CRQ = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@H_CLOSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Partner adapter not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d opening adapter\0A\00", align 1
@ibmvnic_tasklet = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"registering irq 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"ibmvnic-%x\00", align 1
@ibmvnic_interrupt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Couldn't register irq 0x%x. rc=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error %d enabling interrupts\0A\00", align 1
@H_FREE_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*)* @init_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_crq_queue(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_crq_queue*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.vio_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 3
  store %struct.ibmvnic_crq_queue* %10, %struct.ibmvnic_crq_queue** %4, align 8
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 1
  %13 = load %struct.vio_dev*, %struct.vio_dev** %12, align 8
  %14 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %13, i32 0, i32 2
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.vio_dev*, %struct.vio_dev** %16, align 8
  store %struct.vio_dev* %17, %struct.vio_dev** %6, align 8
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %21 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %20, i32 0, i32 1
  %22 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %21, align 8
  %23 = icmp ne %union.ibmvnic_crq* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %189

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64 @get_zeroed_page(i32 %26)
  %28 = inttoptr i64 %27 to %union.ibmvnic_crq*
  %29 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %30 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %29, i32 0, i32 1
  store %union.ibmvnic_crq* %28, %union.ibmvnic_crq** %30, align 8
  %31 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %32 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %31, i32 0, i32 1
  %33 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %32, align 8
  %34 = icmp ne %union.ibmvnic_crq* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %25
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %189

38:                                               ; preds = %25
  %39 = load i32, i32* @PAGE_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = udiv i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %44 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.device*, %struct.device** %5, align 8
  %46 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %47 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %46, i32 0, i32 1
  %48 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %47, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %51 = call i32 @dma_map_single(%struct.device* %45, %union.ibmvnic_crq* %48, i32 %49, i32 %50)
  %52 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %53 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.device*, %struct.device** %5, align 8
  %55 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %56 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @dma_mapping_error(%struct.device* %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %38
  br label %180

61:                                               ; preds = %38
  %62 = load i32, i32* @H_REG_CRQ, align 4
  %63 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %64 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %67 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @PAGE_SIZE, align 4
  %70 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %62, i32 %65, i32 %68, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @H_RESOURCE, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %61
  %75 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %76 = call i32 @ibmvnic_reset_crq(%struct.ibmvnic_adapter* %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %61
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @H_CLOSED, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load %struct.device*, %struct.device** %5, align 8
  %84 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %93

85:                                               ; preds = %77
  %86 = load i32, i32* %7, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %172

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %82
  store i32 0, i32* %8, align 4
  %94 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %95 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %94, i32 0, i32 0
  %96 = load i64, i64* @ibmvnic_tasklet, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %99 = ptrtoint %struct.ibmvnic_adapter* %98 to i64
  %100 = call i32 @tasklet_init(i32* %95, i8* %97, i64 %99)
  %101 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %102 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %105 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netdev_dbg(i32 %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  %108 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %109 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %111, i32 0, i32 1
  %113 = load %struct.vio_dev*, %struct.vio_dev** %112, align 8
  %114 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @snprintf(i32 %110, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32 %115)
  %117 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %118 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ibmvnic_interrupt, align 4
  %121 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %122 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %125 = call i32 @request_irq(i32 %119, i32 %120, i32 0, i32 %123, %struct.ibmvnic_adapter* %124)
  store i32 %125, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %93
  %129 = load %struct.device*, %struct.device** %5, align 8
  %130 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %131 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %7, align 4
  %134 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %129, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %132, i32 %133)
  br label %151

135:                                              ; preds = %93
  %136 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %137 = call i32 @vio_enable_interrupts(%struct.vio_dev* %136)
  store i32 %137, i32* %7, align 4
  %138 = load i32, i32* %7, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = load i32, i32* %7, align 4
  %143 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %141, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %142)
  br label %151

144:                                              ; preds = %135
  %145 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %146 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %145, i32 0, i32 4
  store i64 0, i64* %146, align 8
  %147 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %148 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %147, i32 0, i32 3
  %149 = call i32 @spin_lock_init(i32* %148)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %2, align 4
  br label %189

151:                                              ; preds = %140, %128
  %152 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %153 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %152, i32 0, i32 0
  %154 = call i32 @tasklet_kill(i32* %153)
  br label %155

155:                                              ; preds = %169, %151
  %156 = load i32, i32* @H_FREE_CRQ, align 4
  %157 = load %struct.vio_dev*, %struct.vio_dev** %6, align 8
  %158 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 (i32, i32, ...) @plpar_hcall_norets(i32 %156, i32 %159)
  store i32 %160, i32* %7, align 4
  br label %161

161:                                              ; preds = %155
  %162 = load i32, i32* %7, align 4
  %163 = load i32, i32* @H_BUSY, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %169, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* %7, align 4
  %167 = call i64 @H_IS_LONG_BUSY(i32 %166)
  %168 = icmp ne i64 %167, 0
  br label %169

169:                                              ; preds = %165, %161
  %170 = phi i1 [ true, %161 ], [ %168, %165 ]
  br i1 %170, label %155, label %171

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171, %88
  %173 = load %struct.device*, %struct.device** %5, align 8
  %174 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %175 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @PAGE_SIZE, align 4
  %178 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %179 = call i32 @dma_unmap_single(%struct.device* %173, i32 %176, i32 %177, i32 %178)
  br label %180

180:                                              ; preds = %172, %60
  %181 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %182 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %181, i32 0, i32 1
  %183 = load %union.ibmvnic_crq*, %union.ibmvnic_crq** %182, align 8
  %184 = ptrtoint %union.ibmvnic_crq* %183 to i64
  %185 = call i32 @free_page(i64 %184)
  %186 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %4, align 8
  %187 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %186, i32 0, i32 1
  store %union.ibmvnic_crq* null, %union.ibmvnic_crq** %187, align 8
  %188 = load i32, i32* %8, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %180, %144, %35, %24
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, %union.ibmvnic_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, ...) #1

declare dso_local i32 @ibmvnic_reset_crq(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @tasklet_init(i32*, i8*, i64) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.ibmvnic_adapter*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i64 @H_IS_LONG_BUSY(i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

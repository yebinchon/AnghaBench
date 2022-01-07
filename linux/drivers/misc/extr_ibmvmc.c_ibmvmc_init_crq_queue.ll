; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_init_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_ibmvmc.c_ibmvmc_init_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crq_server_adapter = type { i32, i32, %struct.crq_queue }
%struct.crq_queue = type { i32, %struct.ibmvmc_crq_msg*, i32, i32, i64 }
%struct.ibmvmc_crq_msg = type { i32 }
%struct.vio_dev = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@H_REG_CRQ = common dso_local global i32 0, align 4
@H_RESOURCE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Partner adapter not ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Error %d opening adapter\0A\00", align 1
@ibmvmc_task = common dso_local global i32 0, align 4
@ibmvmc_handle_event = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"ibmvmc\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"couldn't register irq 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Error %d enabling interrupts!!!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.crq_server_adapter*)* @ibmvmc_init_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvmc_init_crq_queue(%struct.crq_server_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.crq_server_adapter*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca %struct.crq_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.crq_server_adapter* %0, %struct.crq_server_adapter** %3, align 8
  %8 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.vio_dev* @to_vio_dev(i32 %10)
  store %struct.vio_dev* %11, %struct.vio_dev** %4, align 8
  %12 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %12, i32 0, i32 2
  store %struct.crq_queue* %13, %struct.crq_queue** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to %struct.ibmvmc_crq_msg*
  %17 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %18 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %17, i32 0, i32 1
  store %struct.ibmvmc_crq_msg* %16, %struct.ibmvmc_crq_msg** %18, align 8
  %19 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %20 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %19, i32 0, i32 1
  %21 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %20, align 8
  %22 = icmp ne %struct.ibmvmc_crq_msg* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %161

24:                                               ; preds = %1
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = sext i32 %25 to i64
  %27 = udiv i64 %26, 4
  %28 = trunc i64 %27 to i32
  %29 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %30 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %35 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %34, i32 0, i32 1
  %36 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %35, align 8
  %37 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %38 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %44 = call i32 @dma_map_single(i32 %33, %struct.ibmvmc_crq_msg* %36, i32 %42, i32 %43)
  %45 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %46 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %51 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @dma_mapping_error(i32 %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %24
  br label %155

56:                                               ; preds = %24
  %57 = load i32, i32* @H_REG_CRQ, align 4
  %58 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %59 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %62 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @plpar_hcall_norets(i32 %57, i32 %60, i32 %63, i32 %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @H_RESOURCE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %72 = call i32 @ibmvmc_reset_crq_queue(%struct.crq_server_adapter* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %56
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %74, 2
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %78 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @dev_warn(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %91

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %140

90:                                               ; preds = %81
  br label %91

91:                                               ; preds = %90, %76
  %92 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %93 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %92, i32 0, i32 4
  store i64 0, i64* %93, align 8
  %94 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %95 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %94, i32 0, i32 3
  %96 = call i32 @spin_lock_init(i32* %95)
  %97 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %98 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %97, i32 0, i32 1
  %99 = load i32, i32* @ibmvmc_task, align 4
  %100 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %101 = ptrtoint %struct.crq_server_adapter* %100 to i64
  %102 = call i32 @tasklet_init(i32* %98, i32 %99, i64 %101)
  %103 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %104 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @ibmvmc_handle_event, align 4
  %107 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %108 = bitcast %struct.crq_server_adapter* %107 to i8*
  %109 = call i64 @request_irq(i32 %105, i32 %106, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %91
  %112 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %113 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %116 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @dev_err(i32 %114, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %117)
  br label %132

119:                                              ; preds = %91
  %120 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %121 = call i32 @vio_enable_interrupts(%struct.vio_dev* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %126 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = call i32 @dev_err(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %132

130:                                              ; preds = %119
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %164

132:                                              ; preds = %124, %111
  %133 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %134 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %133, i32 0, i32 1
  %135 = call i32 @tasklet_kill(i32* %134)
  %136 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %137 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @h_free_crq(i32 %138)
  br label %140

140:                                              ; preds = %132, %84
  %141 = load %struct.crq_server_adapter*, %struct.crq_server_adapter** %3, align 8
  %142 = getelementptr inbounds %struct.crq_server_adapter, %struct.crq_server_adapter* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %145 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %148 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = mul i64 %150, 4
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %154 = call i32 @dma_unmap_single(i32 %143, i32 %146, i32 %152, i32 %153)
  br label %155

155:                                              ; preds = %140, %55
  %156 = load %struct.crq_queue*, %struct.crq_queue** %5, align 8
  %157 = getelementptr inbounds %struct.crq_queue, %struct.crq_queue* %156, i32 0, i32 1
  %158 = load %struct.ibmvmc_crq_msg*, %struct.ibmvmc_crq_msg** %157, align 8
  %159 = ptrtoint %struct.ibmvmc_crq_msg* %158 to i64
  %160 = call i32 @free_page(i64 %159)
  br label %161

161:                                              ; preds = %155, %23
  %162 = load i32, i32* @ENOMEM, align 4
  %163 = sub nsw i32 0, %162
  store i32 %163, i32* %2, align 4
  br label %164

164:                                              ; preds = %161, %130
  %165 = load i32, i32* %2, align 4
  ret i32 %165
}

declare dso_local %struct.vio_dev* @to_vio_dev(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @dma_map_single(i32, %struct.ibmvmc_crq_msg*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @plpar_hcall_norets(i32, i32, i32, i32) #1

declare dso_local i32 @ibmvmc_reset_crq_queue(%struct.crq_server_adapter*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, i32, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @vio_enable_interrupts(%struct.vio_dev*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @h_free_crq(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

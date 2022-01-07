; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_sdio.c_ath6kl_sdio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdio_func = type { i32, i32, i32, i32, i32, i32 }
%struct.sdio_device_id = type { i32 }
%struct.ath6kl_sdio = type { i32, %struct.ath6kl_sdio*, %struct.ath6kl*, %struct.sdio_func*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.sdio_device_id* }
%struct.ath6kl = type { %struct.TYPE_2__, i32*, %struct.ath6kl_sdio*, i32 }
%struct.TYPE_2__ = type { i32 }

@ATH6KL_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"sdio new func %d vendor 0x%x device 0x%x block 0x%x/0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HIF_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@ath6kl_sdio_write_async_work = common dso_local global i32 0, align 4
@BUS_REQUEST_MAX_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to alloc ath6kl core\0A\00", align 1
@ATH6KL_HIF_TYPE_SDIO = common dso_local global i32 0, align 4
@ath6kl_sdio_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to config sdio: %d\0A\00", align 1
@ATH6KL_HTC_TYPE_MBOX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to init ath6kl core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdio_func*, %struct.sdio_device_id*)* @ath6kl_sdio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_sdio_probe(%struct.sdio_func* %0, %struct.sdio_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.sdio_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath6kl_sdio*, align 8
  %8 = alloca %struct.ath6kl*, align 8
  %9 = alloca i32, align 4
  store %struct.sdio_func* %0, %struct.sdio_func** %4, align 8
  store %struct.sdio_device_id* %1, %struct.sdio_device_id** %5, align 8
  %10 = load i32, i32* @ATH6KL_DBG_BOOT, align 4
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %15 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %18 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %21 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %24 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ath6kl_dbg(i32 %10, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %22, i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kzalloc(i32 88, i32 %27)
  %29 = bitcast i8* %28 to %struct.ath6kl_sdio*
  store %struct.ath6kl_sdio* %29, %struct.ath6kl_sdio** %7, align 8
  %30 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %31 = icmp ne %struct.ath6kl_sdio* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %165

35:                                               ; preds = %2
  %36 = load i32, i32* @HIF_DMA_BUFFER_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kzalloc(i32 %36, i32 %37)
  %39 = bitcast i8* %38 to %struct.ath6kl_sdio*
  %40 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %41 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %40, i32 0, i32 1
  store %struct.ath6kl_sdio* %39, %struct.ath6kl_sdio** %41, align 8
  %42 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %43 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %42, i32 0, i32 1
  %44 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %43, align 8
  %45 = icmp ne %struct.ath6kl_sdio* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %35
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %161

49:                                               ; preds = %35
  %50 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %51 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %52 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %51, i32 0, i32 3
  store %struct.sdio_func* %50, %struct.sdio_func** %52, align 8
  %53 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %54 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %55 = call i32 @sdio_set_drvdata(%struct.sdio_func* %53, %struct.ath6kl_sdio* %54)
  %56 = load %struct.sdio_device_id*, %struct.sdio_device_id** %5, align 8
  %57 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %58 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %57, i32 0, i32 14
  store %struct.sdio_device_id* %56, %struct.sdio_device_id** %58, align 8
  %59 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %60 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %62 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %61, i32 0, i32 13
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %65 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %64, i32 0, i32 12
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %68 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %67, i32 0, i32 11
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %71 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %70, i32 0, i32 10
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %74 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %73, i32 0, i32 9
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %77 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %76, i32 0, i32 8
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %80 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %79, i32 0, i32 7
  %81 = call i32 @INIT_LIST_HEAD(i32* %80)
  %82 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %83 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %82, i32 0, i32 6
  %84 = load i32, i32* @ath6kl_sdio_write_async_work, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %87 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %86, i32 0, i32 5
  %88 = call i32 @init_waitqueue_head(i32* %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %102, %49
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @BUS_REQUEST_MAX_NUM, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %95 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %96 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = call i32 @ath6kl_sdio_free_bus_req(%struct.ath6kl_sdio* %94, i32* %100)
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %9, align 4
  br label %89

105:                                              ; preds = %89
  %106 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %107 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %106, i32 0, i32 3
  %108 = load %struct.sdio_func*, %struct.sdio_func** %107, align 8
  %109 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %108, i32 0, i32 0
  %110 = call %struct.ath6kl* @ath6kl_core_create(i32* %109)
  store %struct.ath6kl* %110, %struct.ath6kl** %8, align 8
  %111 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %112 = icmp ne %struct.ath6kl* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %105
  %114 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* @ENOMEM, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %6, align 4
  br label %156

117:                                              ; preds = %105
  %118 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %119 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %120 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %119, i32 0, i32 2
  store %struct.ath6kl* %118, %struct.ath6kl** %120, align 8
  %121 = load i32, i32* @ATH6KL_HIF_TYPE_SDIO, align 4
  %122 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %123 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  %124 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %125 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %126 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %125, i32 0, i32 2
  store %struct.ath6kl_sdio* %124, %struct.ath6kl_sdio** %126, align 8
  %127 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %128 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %127, i32 0, i32 1
  store i32* @ath6kl_sdio_ops, i32** %128, align 8
  %129 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %130 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  store i32 256, i32* %131, align 8
  %132 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %133 = call i32 @ath6kl_sdio_set_mbox_info(%struct.ath6kl* %132)
  %134 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %135 = call i32 @ath6kl_sdio_config(%struct.ath6kl* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %117
  %139 = load i32, i32* %6, align 4
  %140 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %151

141:                                              ; preds = %117
  %142 = load %struct.ath6kl*, %struct.ath6kl** %8, align 8
  %143 = load i32, i32* @ATH6KL_HTC_TYPE_MBOX, align 4
  %144 = call i32 @ath6kl_core_init(%struct.ath6kl* %142, i32 %143)
  store i32 %144, i32* %6, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %149

147:                                              ; preds = %141
  %148 = call i32 (i8*, ...) @ath6kl_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %151

149:                                              ; preds = %141
  %150 = load i32, i32* %6, align 4
  store i32 %150, i32* %3, align 4
  br label %165

151:                                              ; preds = %147, %138
  %152 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %153 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %152, i32 0, i32 2
  %154 = load %struct.ath6kl*, %struct.ath6kl** %153, align 8
  %155 = call i32 @ath6kl_core_destroy(%struct.ath6kl* %154)
  br label %156

156:                                              ; preds = %151, %113
  %157 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %158 = getelementptr inbounds %struct.ath6kl_sdio, %struct.ath6kl_sdio* %157, i32 0, i32 1
  %159 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %158, align 8
  %160 = call i32 @kfree(%struct.ath6kl_sdio* %159)
  br label %161

161:                                              ; preds = %156, %46
  %162 = load %struct.ath6kl_sdio*, %struct.ath6kl_sdio** %7, align 8
  %163 = call i32 @kfree(%struct.ath6kl_sdio* %162)
  %164 = load i32, i32* %6, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %161, %149, %32
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @sdio_set_drvdata(%struct.sdio_func*, %struct.ath6kl_sdio*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @ath6kl_sdio_free_bus_req(%struct.ath6kl_sdio*, i32*) #1

declare dso_local %struct.ath6kl* @ath6kl_core_create(i32*) #1

declare dso_local i32 @ath6kl_err(i8*, ...) #1

declare dso_local i32 @ath6kl_sdio_set_mbox_info(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_sdio_config(%struct.ath6kl*) #1

declare dso_local i32 @ath6kl_core_init(%struct.ath6kl*, i32) #1

declare dso_local i32 @ath6kl_core_destroy(%struct.ath6kl*) #1

declare dso_local i32 @kfree(%struct.ath6kl_sdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

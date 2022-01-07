; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.memstick_host = type { i32, i32, i32 }
%struct.r592_device = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.pci_dev*, %struct.memstick_host* }

@ENOMEM = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@r592_detect_timer = common dso_local global i32 0, align 4
@MEMSTICK_CAP_PAR4 = common dso_local global i32 0, align 4
@r592_submit_req = common dso_local global i32 0, align 4
@r592_set_param = common dso_local global i32 0, align 4
@r592_process_thread = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"r592_io\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@r592_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"driver successfully loaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @r592_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.memstick_host*, align 8
  %8 = alloca %struct.r592_device*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %6, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = call %struct.memstick_host* @memstick_alloc_host(i32 64, i32* %12)
  store %struct.memstick_host* %13, %struct.memstick_host** %7, align 8
  %14 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %15 = icmp ne %struct.memstick_host* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %181

17:                                               ; preds = %2
  %18 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %19 = call %struct.r592_device* @memstick_priv(%struct.memstick_host* %18)
  store %struct.r592_device* %19, %struct.r592_device** %8, align 8
  %20 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %21 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %22 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %21, i32 0, i32 11
  store %struct.memstick_host* %20, %struct.memstick_host** %22, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %25 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %24, i32 0, i32 10
  store %struct.pci_dev* %23, %struct.pci_dev** %25, align 8
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %28 = call i32 @pci_set_drvdata(%struct.pci_dev* %26, %struct.r592_device* %27)
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = call i32 @pci_enable_device(%struct.pci_dev* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %17
  br label %178

34:                                               ; preds = %17
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_set_master(%struct.pci_dev* %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %37, i32 0, i32 0
  %39 = call i32 @DMA_BIT_MASK(i32 32)
  %40 = call i32 @dma_set_mask(i32* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %175

44:                                               ; preds = %34
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = load i32, i32* @DRV_NAME, align 4
  %47 = call i32 @pci_request_regions(%struct.pci_dev* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %175

51:                                               ; preds = %44
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = call i32 @pci_ioremap_bar(%struct.pci_dev* %52, i32 0)
  %54 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %55 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %57 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %51
  br label %172

61:                                               ; preds = %51
  %62 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %63 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %66 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %68 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %67, i32 0, i32 9
  %69 = call i32 @spin_lock_init(i32* %68)
  %70 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %71 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %70, i32 0, i32 8
  %72 = call i32 @spin_lock_init(i32* %71)
  %73 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %74 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %73, i32 0, i32 7
  %75 = call i32 @init_completion(i32* %74)
  %76 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %77 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @INIT_KFIFO(i32 %78)
  %80 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %81 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %80, i32 0, i32 5
  %82 = load i32, i32* @r592_detect_timer, align 4
  %83 = call i32 @timer_setup(i32* %81, i32 %82, i32 0)
  %84 = load i32, i32* @MEMSTICK_CAP_PAR4, align 4
  %85 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %86 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @r592_submit_req, align 4
  %88 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %89 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @r592_set_param, align 4
  %91 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %92 = getelementptr inbounds %struct.memstick_host, %struct.memstick_host* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %94 = call i32 @r592_check_dma(%struct.r592_device* %93)
  %95 = load i32, i32* @r592_process_thread, align 4
  %96 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %97 = call i32 @kthread_run(i32 %95, %struct.r592_device* %96, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %98 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %99 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %101 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @IS_ERR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %61
  %106 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %107 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @PTR_ERR(i32 %108)
  store i32 %109, i32* %6, align 4
  br label %167

110:                                              ; preds = %61
  %111 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %112 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %111, i32 0, i32 0
  %113 = load i32, i32* @PAGE_SIZE, align 4
  %114 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %115 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %114, i32 0, i32 2
  %116 = load i32, i32* @GFP_KERNEL, align 4
  %117 = call i64 @dma_alloc_coherent(i32* %112, i32 %113, i32* %115, i32 %116)
  %118 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %119 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %118, i32 0, i32 3
  store i64 %117, i64* %119, align 8
  %120 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %121 = call i32 @r592_stop_dma(%struct.r592_device* %120, i32 0)
  %122 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %123 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %122, i32 0, i32 4
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @IRQF_SHARED, align 4
  %126 = load i32, i32* @DRV_NAME, align 4
  %127 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %128 = call i64 @request_irq(i32 %124, i32* @r592_irq, i32 %125, i32 %126, %struct.r592_device* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %110
  br label %146

131:                                              ; preds = %110
  %132 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %133 = call i32 @r592_update_card_detect(%struct.r592_device* %132)
  %134 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %135 = call i64 @memstick_add_host(%struct.memstick_host* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %140

138:                                              ; preds = %131
  %139 = call i32 @message(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %183

140:                                              ; preds = %137
  %141 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %142 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %145 = call i32 @free_irq(i32 %143, %struct.r592_device* %144)
  br label %146

146:                                              ; preds = %140, %130
  %147 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %148 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %153 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %152, i32 0, i32 0
  %154 = load i32, i32* @PAGE_SIZE, align 4
  %155 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %156 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %159 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @dma_free_coherent(i32* %153, i32 %154, i64 %157, i32 %160)
  br label %162

162:                                              ; preds = %151, %146
  %163 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %164 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @kthread_stop(i32 %165)
  br label %167

167:                                              ; preds = %162, %105
  %168 = load %struct.r592_device*, %struct.r592_device** %8, align 8
  %169 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @iounmap(i32 %170)
  br label %172

172:                                              ; preds = %167, %60
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = call i32 @pci_release_regions(%struct.pci_dev* %173)
  br label %175

175:                                              ; preds = %172, %50, %43
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = call i32 @pci_disable_device(%struct.pci_dev* %176)
  br label %178

178:                                              ; preds = %175, %33
  %179 = load %struct.memstick_host*, %struct.memstick_host** %7, align 8
  %180 = call i32 @memstick_free_host(%struct.memstick_host* %179)
  br label %181

181:                                              ; preds = %178, %16
  %182 = load i32, i32* %6, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %138
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local %struct.memstick_host* @memstick_alloc_host(i32, i32*) #1

declare dso_local %struct.r592_device* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.r592_device*) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_KFIFO(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @r592_check_dma(%struct.r592_device*) #1

declare dso_local i32 @kthread_run(i32, %struct.r592_device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @r592_stop_dma(%struct.r592_device*, i32) #1

declare dso_local i64 @request_irq(i32, i32*, i32, i32, %struct.r592_device*) #1

declare dso_local i32 @r592_update_card_detect(%struct.r592_device*) #1

declare dso_local i64 @memstick_add_host(%struct.memstick_host*) #1

declare dso_local i32 @message(i8*) #1

declare dso_local i32 @free_irq(i32, %struct.r592_device*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

declare dso_local i32 @kthread_stop(i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @memstick_free_host(%struct.memstick_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

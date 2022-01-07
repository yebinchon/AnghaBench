; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_dma_setup_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hbm.c_mei_hbm_dma_setup_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mei_msg_hdr = type { i32 }
%struct.hbm_dma_setup_request = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@MEI_HBM_DMA_SETUP_REQ_CMD = common dso_local global i32 0, align 4
@DMA_DSCR_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dma setup request write failed: ret = %d.\0A\00", align 1
@MEI_HBM_DR_SETUP = common dso_local global i32 0, align 4
@MEI_CLIENTS_INIT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_hbm_dma_setup_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_hbm_dma_setup_req(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_msg_hdr, align 4
  %5 = alloca %struct.hbm_dma_setup_request, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  store i64 16, i64* %6, align 8
  %10 = call i32 @mei_hbm_hdr(%struct.mei_msg_hdr* %4, i64 16)
  %11 = call i32 @memset(%struct.hbm_dma_setup_request* %5, i32 0, i64 16)
  %12 = load i32, i32* @MEI_HBM_DMA_SETUP_REQ_CMD, align 4
  %13 = getelementptr inbounds %struct.hbm_dma_setup_request, %struct.hbm_dma_setup_request* %5, i32 0, i32 1
  store i32 %12, i32* %13, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %57, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @DMA_DSCR_NUM, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %60

18:                                               ; preds = %14
  %19 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %20 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @upper_32_bits(i32 %27)
  %29 = getelementptr inbounds %struct.hbm_dma_setup_request, %struct.hbm_dma_setup_request* %5, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 2
  store i32 %28, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @lower_32_bits(i32 %35)
  %37 = getelementptr inbounds %struct.hbm_dma_setup_request, %struct.hbm_dma_setup_request* %5, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %36, i32* %42, align 4
  %43 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %44 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.hbm_dma_setup_request, %struct.hbm_dma_setup_request* %5, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %50, i32* %56, align 4
  br label %57

57:                                               ; preds = %18
  %58 = load i32, i32* %7, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %62 = call i32 @mei_dma_ring_reset(%struct.mei_device* %61)
  %63 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %64 = call i32 @mei_hbm_write_message(%struct.mei_device* %63, %struct.mei_msg_hdr* %4, %struct.hbm_dma_setup_request* %5)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %69 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* %8, align 4
  store i32 %73, i32* %2, align 4
  br label %83

74:                                               ; preds = %60
  %75 = load i32, i32* @MEI_HBM_DR_SETUP, align 4
  %76 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %77 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @MEI_CLIENTS_INIT_TIMEOUT, align 4
  %79 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %80 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %82 = call i32 @mei_schedule_stall_timer(%struct.mei_device* %81)
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %67
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @mei_hbm_hdr(%struct.mei_msg_hdr*, i64) #1

declare dso_local i32 @memset(%struct.hbm_dma_setup_request*, i32, i64) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @mei_dma_ring_reset(%struct.mei_device*) #1

declare dso_local i32 @mei_hbm_write_message(%struct.mei_device*, %struct.mei_msg_hdr*, %struct.hbm_dma_setup_request*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mei_schedule_stall_timer(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

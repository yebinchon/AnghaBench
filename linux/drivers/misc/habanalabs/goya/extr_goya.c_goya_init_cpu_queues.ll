; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_cpu_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_init_cpu_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.hl_eq, i32, %struct.hl_hw_queue*, %struct.goya_device* }
%struct.hl_eq = type { i32 }
%struct.hl_hw_queue = type { i32 }
%struct.goya_device = type { i32 }

@GOYA_QUEUE_ID_CPU_PQ = common dso_local global i64 0, align 8
@HW_CAP_CPU_Q = common dso_local global i32 0, align 4
@mmCPU_PQ_BASE_ADDR_LOW = common dso_local global i32 0, align 4
@mmCPU_PQ_BASE_ADDR_HIGH = common dso_local global i32 0, align 4
@mmCPU_EQ_BASE_ADDR_LOW = common dso_local global i32 0, align 4
@mmCPU_EQ_BASE_ADDR_HIGH = common dso_local global i32 0, align 4
@mmCPU_CQ_BASE_ADDR_LOW = common dso_local global i32 0, align 4
@VA_CPU_ACCESSIBLE_MEM_ADDR = common dso_local global i32 0, align 4
@mmCPU_CQ_BASE_ADDR_HIGH = common dso_local global i32 0, align 4
@mmCPU_PQ_LENGTH = common dso_local global i32 0, align 4
@HL_QUEUE_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@mmCPU_EQ_LENGTH = common dso_local global i32 0, align 4
@HL_EQ_SIZE_IN_BYTES = common dso_local global i32 0, align 4
@mmCPU_CQ_LENGTH = common dso_local global i32 0, align 4
@HL_CPU_ACCESSIBLE_MEM_SIZE = common dso_local global i32 0, align 4
@mmCPU_EQ_CI = common dso_local global i32 0, align 4
@mmCPU_IF_PF_PQ_PI = common dso_local global i32 0, align 4
@mmCPU_PQ_INIT_STATUS = common dso_local global i32 0, align 4
@PQ_INIT_STATUS_READY_FOR_CP = common dso_local global i32 0, align 4
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_PI_UPDATE = common dso_local global i32 0, align 4
@PQ_INIT_STATUS_READY_FOR_HOST = common dso_local global i64 0, align 8
@GOYA_CPU_TIMEOUT_USEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Failed to setup communication with device CPU\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @goya_init_cpu_queues(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca %struct.goya_device*, align 8
  %5 = alloca %struct.hl_eq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hl_hw_queue*, align 8
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 4
  %11 = load %struct.goya_device*, %struct.goya_device** %10, align 8
  store %struct.goya_device* %11, %struct.goya_device** %4, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 3
  %14 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %13, align 8
  %15 = load i64, i64* @GOYA_QUEUE_ID_CPU_PQ, align 8
  %16 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %14, i64 %15
  store %struct.hl_hw_queue* %16, %struct.hl_hw_queue** %7, align 8
  %17 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

22:                                               ; preds = %1
  %23 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %24 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HW_CAP_CPU_Q, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %108

30:                                               ; preds = %22
  %31 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 1
  store %struct.hl_eq* %32, %struct.hl_eq** %5, align 8
  %33 = load i32, i32* @mmCPU_PQ_BASE_ADDR_LOW, align 4
  %34 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %7, align 8
  %35 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @lower_32_bits(i32 %36)
  %38 = call i32 @WREG32(i32 %33, i32 %37)
  %39 = load i32, i32* @mmCPU_PQ_BASE_ADDR_HIGH, align 4
  %40 = load %struct.hl_hw_queue*, %struct.hl_hw_queue** %7, align 8
  %41 = getelementptr inbounds %struct.hl_hw_queue, %struct.hl_hw_queue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = call i32 @WREG32(i32 %39, i32 %43)
  %45 = load i32, i32* @mmCPU_EQ_BASE_ADDR_LOW, align 4
  %46 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %47 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @lower_32_bits(i32 %48)
  %50 = call i32 @WREG32(i32 %45, i32 %49)
  %51 = load i32, i32* @mmCPU_EQ_BASE_ADDR_HIGH, align 4
  %52 = load %struct.hl_eq*, %struct.hl_eq** %5, align 8
  %53 = getelementptr inbounds %struct.hl_eq, %struct.hl_eq* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @upper_32_bits(i32 %54)
  %56 = call i32 @WREG32(i32 %51, i32 %55)
  %57 = load i32, i32* @mmCPU_CQ_BASE_ADDR_LOW, align 4
  %58 = load i32, i32* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 4
  %59 = call i32 @lower_32_bits(i32 %58)
  %60 = call i32 @WREG32(i32 %57, i32 %59)
  %61 = load i32, i32* @mmCPU_CQ_BASE_ADDR_HIGH, align 4
  %62 = load i32, i32* @VA_CPU_ACCESSIBLE_MEM_ADDR, align 4
  %63 = call i32 @upper_32_bits(i32 %62)
  %64 = call i32 @WREG32(i32 %61, i32 %63)
  %65 = load i32, i32* @mmCPU_PQ_LENGTH, align 4
  %66 = load i32, i32* @HL_QUEUE_SIZE_IN_BYTES, align 4
  %67 = call i32 @WREG32(i32 %65, i32 %66)
  %68 = load i32, i32* @mmCPU_EQ_LENGTH, align 4
  %69 = load i32, i32* @HL_EQ_SIZE_IN_BYTES, align 4
  %70 = call i32 @WREG32(i32 %68, i32 %69)
  %71 = load i32, i32* @mmCPU_CQ_LENGTH, align 4
  %72 = load i32, i32* @HL_CPU_ACCESSIBLE_MEM_SIZE, align 4
  %73 = call i32 @WREG32(i32 %71, i32 %72)
  %74 = load i32, i32* @mmCPU_EQ_CI, align 4
  %75 = call i32 @WREG32(i32 %74, i32 0)
  %76 = load i32, i32* @mmCPU_IF_PF_PQ_PI, align 4
  %77 = call i32 @WREG32(i32 %76, i32 0)
  %78 = load i32, i32* @mmCPU_PQ_INIT_STATUS, align 4
  %79 = load i32, i32* @PQ_INIT_STATUS_READY_FOR_CP, align 4
  %80 = call i32 @WREG32(i32 %78, i32 %79)
  %81 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %82 = load i32, i32* @GOYA_ASYNC_EVENT_ID_PI_UPDATE, align 4
  %83 = call i32 @WREG32(i32 %81, i32 %82)
  %84 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %85 = load i32, i32* @mmCPU_PQ_INIT_STATUS, align 4
  %86 = load i64, i64* %6, align 8
  %87 = load i64, i64* %6, align 8
  %88 = load i64, i64* @PQ_INIT_STATUS_READY_FOR_HOST, align 8
  %89 = icmp eq i64 %87, %88
  %90 = zext i1 %89 to i32
  %91 = load i32, i32* @GOYA_CPU_TIMEOUT_USEC, align 4
  %92 = call i32 @hl_poll_timeout(%struct.hl_device* %84, i32 %85, i64 %86, i32 %90, i32 1000, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %30
  %96 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %97 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @dev_err(i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %100 = load i32, i32* @EIO, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %2, align 4
  br label %108

102:                                              ; preds = %30
  %103 = load i32, i32* @HW_CAP_CPU_Q, align 4
  %104 = load %struct.goya_device*, %struct.goya_device** %4, align 8
  %105 = getelementptr inbounds %struct.goya_device, %struct.goya_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %102, %95, %29, %21
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @WREG32(i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @hl_poll_timeout(%struct.hl_device*, i32, i64, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

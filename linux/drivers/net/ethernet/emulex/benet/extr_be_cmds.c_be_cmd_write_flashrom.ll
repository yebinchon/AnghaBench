; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_write_flashrom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_write_flashrom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { i32, i32, i32 }
%struct.be_dma_mem = type { i32, %struct.be_cmd_write_flashrom* }
%struct.be_cmd_write_flashrom = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8* }
%struct.be_mcc_wrb = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@CMD_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@OPCODE_COMMON_WRITE_FLASHROM = common dso_local global i32 0, align 4
@OPTYPE_OFFSET_SPECIFIED = common dso_local global i64 0, align 8
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.be_adapter*, %struct.be_dma_mem*, i64, i64, i64, i64)* @be_cmd_write_flashrom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_cmd_write_flashrom(%struct.be_adapter* %0, %struct.be_dma_mem* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.be_adapter*, align 8
  %9 = alloca %struct.be_dma_mem*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.be_mcc_wrb*, align 8
  %15 = alloca %struct.be_cmd_write_flashrom*, align 8
  %16 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %8, align 8
  store %struct.be_dma_mem* %1, %struct.be_dma_mem** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %21 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %23 = call %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter* %22)
  store %struct.be_mcc_wrb* %23, %struct.be_mcc_wrb** %14, align 8
  %24 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %25 = icmp ne %struct.be_mcc_wrb* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %16, align 4
  br label %91

29:                                               ; preds = %6
  %30 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %31 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %30, i32 0, i32 1
  %32 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %31, align 8
  store %struct.be_cmd_write_flashrom* %32, %struct.be_cmd_write_flashrom** %15, align 8
  %33 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %15, align 8
  %34 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %33, i32 0, i32 1
  %35 = load i32, i32* @CMD_SUBSYSTEM_COMMON, align 4
  %36 = load i32, i32* @OPCODE_COMMON_WRITE_FLASHROM, align 4
  %37 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %38 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.be_mcc_wrb*, %struct.be_mcc_wrb** %14, align 8
  %41 = load %struct.be_dma_mem*, %struct.be_dma_mem** %9, align 8
  %42 = call i32 @be_wrb_cmd_hdr_prepare(i32* %34, i32 %35, i32 %36, i32 %39, %struct.be_mcc_wrb* %40, %struct.be_dma_mem* %41)
  %43 = load i64, i64* %10, align 8
  %44 = call i8* @cpu_to_le32(i64 %43)
  %45 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %15, align 8
  %46 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i8* %44, i8** %47, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @OPTYPE_OFFSET_SPECIFIED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %29
  %52 = load i64, i64* %12, align 8
  %53 = call i8* @cpu_to_le32(i64 %52)
  %54 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %15, align 8
  %55 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  store i8* %53, i8** %56, align 8
  br label %57

57:                                               ; preds = %51, %29
  %58 = load i64, i64* %11, align 8
  %59 = call i8* @cpu_to_le32(i64 %58)
  %60 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %15, align 8
  %61 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i8* %59, i8** %62, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i8* @cpu_to_le32(i64 %63)
  %65 = load %struct.be_cmd_write_flashrom*, %struct.be_cmd_write_flashrom** %15, align 8
  %66 = getelementptr inbounds %struct.be_cmd_write_flashrom, %struct.be_cmd_write_flashrom* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %69 = call i32 @be_mcc_notify(%struct.be_adapter* %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %57
  br label %91

73:                                               ; preds = %57
  %74 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %75 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %74, i32 0, i32 1
  %76 = call i32 @mutex_unlock(i32* %75)
  %77 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %78 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %77, i32 0, i32 2
  %79 = call i32 @msecs_to_jiffies(i32 40000)
  %80 = call i32 @wait_for_completion_timeout(i32* %78, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @ETIMEDOUT, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  br label %89

85:                                               ; preds = %73
  %86 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %87 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %16, align 4
  br label %89

89:                                               ; preds = %85, %82
  %90 = load i32, i32* %16, align 4
  store i32 %90, i32* %7, align 4
  br label %96

91:                                               ; preds = %72, %26
  %92 = load %struct.be_adapter*, %struct.be_adapter** %8, align 8
  %93 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %92, i32 0, i32 1
  %94 = call i32 @mutex_unlock(i32* %93)
  %95 = load i32, i32* %16, align 4
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %91, %89
  %97 = load i32, i32* %7, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.be_mcc_wrb* @wrb_from_mccq(%struct.be_adapter*) #1

declare dso_local i32 @be_wrb_cmd_hdr_prepare(i32*, i32, i32, i32, %struct.be_mcc_wrb*, %struct.be_dma_mem*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @be_mcc_notify(%struct.be_adapter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

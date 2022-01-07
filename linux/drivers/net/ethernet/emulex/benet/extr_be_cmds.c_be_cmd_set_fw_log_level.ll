; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_fw_log_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_cmds.c_be_cmd_set_fw_log_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.be_dma_mem = type { i32, i32, i64 }
%struct.be_fat_conf_params = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MODE_UART = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @be_cmd_set_fw_log_level(%struct.be_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.be_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_dma_mem, align 8
  %7 = alloca %struct.be_fat_conf_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = call i32 @memset(%struct.be_dma_mem* %6, i32 0, i32 16)
  %13 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call i64 @dma_alloc_coherent(i32* %17, i32 %19, i32* %20, i32 %21)
  %23 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %118

30:                                               ; preds = %2
  %31 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %32 = call i32 @be_cmd_get_ext_fat_capabilites(%struct.be_adapter* %31, %struct.be_dma_mem* %6)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %105

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 4
  %40 = inttoptr i64 %39 to %struct.be_fat_conf_params*
  store %struct.be_fat_conf_params* %40, %struct.be_fat_conf_params** %7, align 8
  store i32 0, i32* %9, align 4
  br label %41

41:                                               ; preds = %98, %36
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.be_fat_conf_params*, %struct.be_fat_conf_params** %7, align 8
  %44 = getelementptr inbounds %struct.be_fat_conf_params, %struct.be_fat_conf_params* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le32_to_cpu(i32 %45)
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %101

48:                                               ; preds = %41
  %49 = load %struct.be_fat_conf_params*, %struct.be_fat_conf_params** %7, align 8
  %50 = getelementptr inbounds %struct.be_fat_conf_params, %struct.be_fat_conf_params* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le32_to_cpu(i32 %56)
  store i32 %57, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %58

58:                                               ; preds = %94, %48
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %97

62:                                               ; preds = %58
  %63 = load %struct.be_fat_conf_params*, %struct.be_fat_conf_params** %7, align 8
  %64 = getelementptr inbounds %struct.be_fat_conf_params, %struct.be_fat_conf_params* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @MODE_UART, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %93

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @cpu_to_le32(i32 %79)
  %81 = load %struct.be_fat_conf_params*, %struct.be_fat_conf_params** %7, align 8
  %82 = getelementptr inbounds %struct.be_fat_conf_params, %struct.be_fat_conf_params* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %80, i32* %92, align 8
  br label %93

93:                                               ; preds = %78, %62
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %58

97:                                               ; preds = %58
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %41

101:                                              ; preds = %41
  %102 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %103 = load %struct.be_fat_conf_params*, %struct.be_fat_conf_params** %7, align 8
  %104 = call i32 @be_cmd_set_ext_fat_capabilites(%struct.be_adapter* %102, %struct.be_dma_mem* %6, %struct.be_fat_conf_params* %103)
  store i32 %104, i32* %8, align 4
  br label %105

105:                                              ; preds = %101, %35
  %106 = load %struct.be_adapter*, %struct.be_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds %struct.be_dma_mem, %struct.be_dma_mem* %6, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dma_free_coherent(i32* %109, i32 %111, i64 %113, i32 %115)
  %117 = load i32, i32* %8, align 4
  store i32 %117, i32* %3, align 4
  br label %118

118:                                              ; preds = %105, %27
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i32 @memset(%struct.be_dma_mem*, i32, i32) #1

declare dso_local i64 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @be_cmd_get_ext_fat_capabilites(%struct.be_adapter*, %struct.be_dma_mem*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @be_cmd_set_ext_fat_capabilites(%struct.be_adapter*, %struct.be_dma_mem*, %struct.be_fat_conf_params*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

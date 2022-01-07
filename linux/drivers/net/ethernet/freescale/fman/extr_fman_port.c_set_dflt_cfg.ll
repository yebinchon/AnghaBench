; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_set_dflt_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_port.c_set_dflt_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_port = type { %struct.TYPE_3__, i32, %struct.fman_port_cfg*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fman_port_cfg = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.fman_port_params = type { i32 }

@FMAN_PORT_DMA_NO_SWAP = common dso_local global i32 0, align 4
@FMAN_PORT_COLOR_GREEN = common dso_local global i32 0, align 4
@DFLT_PORT_CUT_BYTES_FROM_END = common dso_local global i32 0, align 4
@BMI_PRIORITY_ELEVATION_LEVEL = common dso_local global i32 0, align 4
@BMI_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@FMAN_PORT_DEQ_BY_PRI = common dso_local global i32 0, align 4
@FMAN_PORT_DEQ_FULL_PREFETCH = common dso_local global i32 0, align 4
@DFLT_PORT_BUFFER_PREFIX_CONTEXT_DATA_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fman_port*, %struct.fman_port_params*)* @set_dflt_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dflt_cfg(%struct.fman_port* %0, %struct.fman_port_params* %1) #0 {
  %3 = alloca %struct.fman_port*, align 8
  %4 = alloca %struct.fman_port_params*, align 8
  %5 = alloca %struct.fman_port_cfg*, align 8
  store %struct.fman_port* %0, %struct.fman_port** %3, align 8
  store %struct.fman_port_params* %1, %struct.fman_port_params** %4, align 8
  %6 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %7 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %6, i32 0, i32 2
  %8 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %7, align 8
  store %struct.fman_port_cfg* %8, %struct.fman_port_cfg** %5, align 8
  %9 = load i32, i32* @FMAN_PORT_DMA_NO_SWAP, align 4
  %10 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @FMAN_PORT_COLOR_GREEN, align 4
  %13 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %14 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %13, i32 0, i32 12
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @DFLT_PORT_CUT_BYTES_FROM_END, align 4
  %16 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %16, i32 0, i32 11
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @BMI_PRIORITY_ELEVATION_LEVEL, align 4
  %19 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %20 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @BMI_FIFO_THRESHOLD, align 4
  %22 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %23 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %22, i32 0, i32 5
  store i32 %21, i32* %23, align 4
  %24 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %25 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %24, i32 0, i32 0
  store i32 5120, i32* %25, align 4
  %26 = load i32, i32* @FMAN_PORT_DEQ_BY_PRI, align 4
  %27 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %28 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @FMAN_PORT_DEQ_FULL_PREFETCH, align 4
  %30 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 4
  %32 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %33 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %36 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @BMI_DEQUEUE_PIPELINE_DEPTH(i32 %34, i32 %37)
  %39 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %40 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %39, i32 0, i32 8
  store i32 %38, i32* %40, align 4
  %41 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %42 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @QMI_BYTE_COUNT_LEVEL_CONTROL(i32 %43)
  %45 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %46 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %45, i32 0, i32 7
  store i32 %44, i32* %46, align 4
  %47 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %48 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @DFLT_PORT_RX_FIFO_PRI_ELEVATION_LEV(i32 %49)
  %51 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %52 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %54 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %58 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @DFLT_PORT_RX_FIFO_THRESHOLD(i32 %56, i32 %59)
  %61 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %62 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %61, i32 0, i32 2
  %63 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %62, align 8
  %64 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %63, i32 0, i32 5
  store i32 %60, i32* %64, align 4
  %65 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %66 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %68, 6
  br i1 %69, label %70, label %85

70:                                               ; preds = %2
  %71 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %72 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %82, label %76

76:                                               ; preds = %70
  %77 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %78 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 3
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %70
  %83 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %84 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %83, i32 0, i32 1
  store i32 1, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %76, %2
  %86 = load %struct.fman_port*, %struct.fman_port** %3, align 8
  %87 = getelementptr inbounds %struct.fman_port, %struct.fman_port* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %89, 6
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %93 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %92, i32 0, i32 2
  store i32 1, i32* %93, align 4
  br label %97

94:                                               ; preds = %85
  %95 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %96 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %95, i32 0, i32 3
  store i32 1, i32* %96, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = load i32, i32* @DFLT_PORT_BUFFER_PREFIX_CONTEXT_DATA_ALIGN, align 4
  %99 = load %struct.fman_port_cfg*, %struct.fman_port_cfg** %5, align 8
  %100 = getelementptr inbounds %struct.fman_port_cfg, %struct.fman_port_cfg* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 4
  ret void
}

declare dso_local i32 @BMI_DEQUEUE_PIPELINE_DEPTH(i32, i32) #1

declare dso_local i32 @QMI_BYTE_COUNT_LEVEL_CONTROL(i32) #1

declare dso_local i32 @DFLT_PORT_RX_FIFO_PRI_ELEVATION_LEV(i32) #1

declare dso_local i32 @DFLT_PORT_RX_FIFO_THRESHOLD(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

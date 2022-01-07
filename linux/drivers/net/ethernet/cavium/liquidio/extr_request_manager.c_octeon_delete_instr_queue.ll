; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_delete_instr_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_request_manager.c_octeon_delete_instr_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, %struct.octeon_instr_queue**, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.octeon_instr_queue = type { i32, i32, i64, %struct.octeon_instr_queue* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@cn6xxx = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@cn23xx_vf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_delete_instr_queue(%struct.octeon_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.octeon_instr_queue*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %10 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %9, i32 0, i32 1
  %11 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %10, align 8
  %12 = load i64, i64* %5, align 8
  %13 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %11, i64 %12
  %14 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %13, align 8
  store %struct.octeon_instr_queue* %14, %struct.octeon_instr_queue** %8, align 8
  %15 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %16 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %15, i32 0, i32 3
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = load i64, i64* %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @cancel_delayed_work_sync(i32* %21)
  %23 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @destroy_workqueue(i32 %29)
  %31 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %32 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %36 = load i32, i32* @cn6xxx, align 4
  %37 = call i32 @CHIP_CONF(%struct.octeon_device* %35, i32 %36)
  %38 = call i32 @CFG_GET_IQ_INSTR_TYPE(i32 %37)
  store i32 %38, i32* %6, align 4
  br label %59

39:                                               ; preds = %2
  %40 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %41 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %45 = load i32, i32* @cn23xx_pf, align 4
  %46 = call i32 @CHIP_CONF(%struct.octeon_device* %44, i32 %45)
  %47 = call i32 @CFG_GET_IQ_INSTR_TYPE(i32 %46)
  store i32 %47, i32* %6, align 4
  br label %58

48:                                               ; preds = %39
  %49 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %50 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %54 = load i32, i32* @cn23xx_vf, align 4
  %55 = call i32 @CHIP_CONF(%struct.octeon_device* %53, i32 %54)
  %56 = call i32 @CFG_GET_IQ_INSTR_TYPE(i32 %55)
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %48
  br label %58

58:                                               ; preds = %57, %43
  br label %59

59:                                               ; preds = %58, %34
  %60 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %61 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %60, i32 0, i32 3
  %62 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %61, align 8
  %63 = call i32 @vfree(%struct.octeon_instr_queue* %62)
  %64 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %65 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %108

68:                                               ; preds = %59
  %69 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %70 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = mul nsw i32 %71, %72
  store i32 %73, i32* %7, align 4
  %74 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %78 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %81 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @lio_dma_free(%struct.octeon_device* %74, i64 %76, i64 %79, i32 %82)
  %84 = load i64, i64* %5, align 8
  %85 = shl i64 1, %84
  %86 = xor i64 %85, -1
  %87 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %88 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = and i64 %90, %86
  store i64 %91, i64* %89, align 8
  %92 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %93 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %92, i32 0, i32 1
  %94 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %93, align 8
  %95 = load i64, i64* %5, align 8
  %96 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %94, i64 %95
  %97 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %96, align 8
  %98 = call i32 @vfree(%struct.octeon_instr_queue* %97)
  %99 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %100 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %99, i32 0, i32 1
  %101 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %101, i64 %102
  store %struct.octeon_instr_queue* null, %struct.octeon_instr_queue** %103, align 8
  %104 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 8
  store i32 0, i32* %3, align 4
  br label %109

108:                                              ; preds = %59
  store i32 1, i32* %3, align 4
  br label %109

109:                                              ; preds = %108, %68
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i32 @CFG_GET_IQ_INSTR_TYPE(i32) #1

declare dso_local i32 @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local i32 @vfree(%struct.octeon_instr_queue*) #1

declare dso_local i32 @lio_dma_free(%struct.octeon_device*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

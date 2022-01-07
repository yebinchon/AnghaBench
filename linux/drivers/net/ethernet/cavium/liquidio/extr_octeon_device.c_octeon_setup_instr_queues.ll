; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_setup_instr_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_octeon_device.c_octeon_setup_instr_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i64, %struct.TYPE_11__**, %struct.TYPE_9__, %struct.TYPE_8__* }
%struct.TYPE_11__ = type { i64, i8*, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%union.oct_txpciq = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i64, i32, i32 }

@cn6xxx = common dso_local global i32 0, align 4
@cn23xx_pf = common dso_local global i32 0, align 4
@cn23xx_vf = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @octeon_setup_instr_queues(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.oct_txpciq, align 8
  %7 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %8 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %9 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %8, i32 0, i32 3
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = call i32 @dev_to_node(i32* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %14 = call i64 @OCTEON_CN6XXX(%struct.octeon_device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = load i32, i32* @cn6xxx, align 4
  %19 = call i32 @CHIP_CONF(%struct.octeon_device* %17, i32 %18)
  %20 = call i32 @CFG_GET_NUM_DEF_TX_DESCS(i32 %19)
  store i32 %20, i32* %4, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %23 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = load i32, i32* @cn23xx_pf, align 4
  %28 = call i32 @CHIP_CONF(%struct.octeon_device* %26, i32 %27)
  %29 = call i32 @CFG_GET_NUM_DEF_TX_DESCS(i32 %28)
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %21
  %31 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %32 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %36 = load i32, i32* @cn23xx_vf, align 4
  %37 = call i32 @CHIP_CONF(%struct.octeon_device* %35, i32 %36)
  %38 = call i32 @CFG_GET_NUM_DEF_TX_DESCS(i32 %37)
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %34, %30
  br label %40

40:                                               ; preds = %39, %25
  br label %41

41:                                               ; preds = %40, %16
  %42 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %43 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call %struct.TYPE_11__* @vzalloc_node(i32 24, i32 %44)
  %46 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %48, i64 0
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %49, align 8
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %52, i64 0
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %53, align 8
  %55 = icmp ne %struct.TYPE_11__* %54, null
  br i1 %55, label %62, label %56

56:                                               ; preds = %41
  %57 = call %struct.TYPE_11__* @vzalloc(i32 4)
  %58 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %59 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %58, i32 0, i32 1
  %60 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %60, i64 0
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %61, align 8
  br label %62

62:                                               ; preds = %56, %41
  %63 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %64 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i64 0
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = icmp ne %struct.TYPE_11__* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %62
  store i32 1, i32* %2, align 4
  br label %129

70:                                               ; preds = %62
  %71 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %72 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %71, i32 0, i32 1
  %73 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %73, i64 0
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = call i32 @memset(%struct.TYPE_11__* %75, i32 0, i32 4)
  %77 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %79, i64 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %84 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %83, i32 0, i32 1
  %85 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %85, i64 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i8* null, i8** %88, align 8
  %89 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %91, i64 0
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  store i64 0, i64* %94, align 8
  %95 = bitcast %union.oct_txpciq* %6 to i64*
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %5, align 4
  %97 = bitcast %union.oct_txpciq* %6 to %struct.TYPE_10__*
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 3
  store i32 %96, i32* %98, align 4
  %99 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %100 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = bitcast %union.oct_txpciq* %6 to %struct.TYPE_10__*
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = bitcast %union.oct_txpciq* %6 to %struct.TYPE_10__*
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  store i64 0, i64* %106, align 8
  %107 = bitcast %union.oct_txpciq* %6 to %struct.TYPE_10__*
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  store i64 0, i64* %108, align 8
  %109 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %110 = load i32, i32* %4, align 4
  %111 = call i64 @octeon_init_instr_queue(%struct.octeon_device* %109, %union.oct_txpciq* byval(%union.oct_txpciq) align 8 %6, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %70
  %114 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %115 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %114, i32 0, i32 1
  %116 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %116, i64 0
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = call i32 @vfree(%struct.TYPE_11__* %118)
  %120 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %121 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %120, i32 0, i32 1
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %122, i64 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %123, align 8
  store i32 1, i32* %2, align 4
  br label %129

124:                                              ; preds = %70
  %125 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %126 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %124, %113, %69
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @dev_to_node(i32*) #1

declare dso_local i64 @OCTEON_CN6XXX(%struct.octeon_device*) #1

declare dso_local i32 @CFG_GET_NUM_DEF_TX_DESCS(i32) #1

declare dso_local i32 @CHIP_CONF(%struct.octeon_device*, i32) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

declare dso_local %struct.TYPE_11__* @vzalloc_node(i32, i32) #1

declare dso_local %struct.TYPE_11__* @vzalloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @octeon_init_instr_queue(%struct.octeon_device*, %union.oct_txpciq* byval(%union.oct_txpciq) align 8, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

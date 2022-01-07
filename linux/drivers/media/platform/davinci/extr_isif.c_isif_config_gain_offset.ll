; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_gain_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_config_gain_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.isif_gain_offsets_adj }
%struct.isif_gain_offsets_adj = type { i32, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@isif_cfg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@GAIN_SDRAM_EN_SHIFT = common dso_local global i32 0, align 4
@GAIN_IPIPE_EN_SHIFT = common dso_local global i32 0, align 4
@GAIN_H3A_EN_SHIFT = common dso_local global i32 0, align 4
@OFST_SDRAM_EN_SHIFT = common dso_local global i32 0, align 4
@OFST_IPIPE_EN_SHIFT = common dso_local global i32 0, align 4
@OFST_H3A_EN_SHIFT = common dso_local global i32 0, align 4
@GAIN_OFFSET_EN_MASK = common dso_local global i32 0, align 4
@CGAMMAWD = common dso_local global i32 0, align 4
@GAIN_INTEGER_SHIFT = common dso_local global i32 0, align 4
@CRGAIN = common dso_local global i32 0, align 4
@CGRGAIN = common dso_local global i32 0, align 4
@CGBGAIN = common dso_local global i32 0, align 4
@CBGAIN = common dso_local global i32 0, align 4
@COFSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @isif_config_gain_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isif_config_gain_offset() #0 {
  %1 = alloca %struct.isif_gain_offsets_adj*, align 8
  %2 = alloca i32, align 4
  store %struct.isif_gain_offsets_adj* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @isif_cfg, i32 0, i32 0, i32 0, i32 0), %struct.isif_gain_offsets_adj** %1, align 8
  %3 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %4 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %3, i32 0, i32 7
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = load i32, i32* @GAIN_SDRAM_EN_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %13 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* @GAIN_IPIPE_EN_SHIFT, align 4
  %20 = shl i32 %18, %19
  %21 = or i32 %11, %20
  %22 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %23 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @GAIN_H3A_EN_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = or i32 %21, %30
  %32 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %33 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* @OFST_SDRAM_EN_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = or i32 %31, %40
  %42 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %43 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* @OFST_IPIPE_EN_SHIFT, align 4
  %50 = shl i32 %48, %49
  %51 = or i32 %41, %50
  %52 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %53 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* @OFST_H3A_EN_SHIFT, align 4
  %60 = shl i32 %58, %59
  %61 = or i32 %51, %60
  store i32 %61, i32* %2, align 4
  %62 = load i32, i32* @GAIN_OFFSET_EN_MASK, align 4
  %63 = load i32, i32* %2, align 4
  %64 = load i32, i32* @CGAMMAWD, align 4
  %65 = call i32 @reg_modify(i32 %62, i32 %63, i32 %64)
  %66 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %67 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @GAIN_INTEGER_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %74 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %72, %77
  store i32 %78, i32* %2, align 4
  %79 = load i32, i32* %2, align 4
  %80 = load i32, i32* @CRGAIN, align 4
  %81 = call i32 @regw(i32 %79, i32 %80)
  %82 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %83 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @GAIN_INTEGER_SHIFT, align 4
  %88 = shl i32 %86, %87
  %89 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %90 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %88, %93
  store i32 %94, i32* %2, align 4
  %95 = load i32, i32* %2, align 4
  %96 = load i32, i32* @CGRGAIN, align 4
  %97 = call i32 @regw(i32 %95, i32 %96)
  %98 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %99 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @GAIN_INTEGER_SHIFT, align 4
  %104 = shl i32 %102, %103
  %105 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %106 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %104, %109
  store i32 %110, i32* %2, align 4
  %111 = load i32, i32* %2, align 4
  %112 = load i32, i32* @CGBGAIN, align 4
  %113 = call i32 @regw(i32 %111, i32 %112)
  %114 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %115 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @GAIN_INTEGER_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %122 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %120, %125
  store i32 %126, i32* %2, align 4
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* @CBGAIN, align 4
  %129 = call i32 @regw(i32 %127, i32 %128)
  %130 = load %struct.isif_gain_offsets_adj*, %struct.isif_gain_offsets_adj** %1, align 8
  %131 = getelementptr inbounds %struct.isif_gain_offsets_adj, %struct.isif_gain_offsets_adj* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @COFSTA, align 4
  %134 = call i32 @regw(i32 %132, i32 %133)
  ret void
}

declare dso_local i32 @reg_modify(i32, i32, i32) #1

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

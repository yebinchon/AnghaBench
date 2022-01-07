; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_start_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_start_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { i32, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.regmap* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.regmap = type { i32 }

@ISC_PFE_CFG1 = common dso_local global i32 0, align 4
@ISC_PFE_CFG1_COLMIN_MASK = common dso_local global i32 0, align 4
@ISC_PFE_CFG1_COLMAX_MASK = common dso_local global i32 0, align 4
@ISC_PFE_CFG2 = common dso_local global i32 0, align 4
@ISC_PFE_CFG2_ROWMIN_MASK = common dso_local global i32 0, align 4
@ISC_PFE_CFG2_ROWMAX_MASK = common dso_local global i32 0, align 4
@ISC_PFE_CFG0 = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_COLEN = common dso_local global i32 0, align 4
@ISC_PFE_CFG0_ROWEN = common dso_local global i32 0, align 4
@ISC_DAD0 = common dso_local global i32 0, align 4
@ISC_DAD1 = common dso_local global i32 0, align 4
@ISC_DAD2 = common dso_local global i32 0, align 4
@ISC_DCTRL = common dso_local global i32 0, align 4
@ISC_DCTRL_IE_IS = common dso_local global i32 0, align 4
@ISC_CTRLEN = common dso_local global i32 0, align 4
@ISC_CTRL_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_device*)* @isc_start_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_start_dma(%struct.isc_device* %0) #0 {
  %2 = alloca %struct.isc_device*, align 8
  %3 = alloca %struct.regmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %2, align 8
  %9 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %10 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %9, i32 0, i32 4
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %3, align 8
  %12 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %13 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %19 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %25 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %31 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ISC_IS_FORMAT_RAW(i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* %7, align 4
  %40 = shl i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = shl i32 %41, 1
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %38, %1
  %44 = load %struct.regmap*, %struct.regmap** %3, align 8
  %45 = load i32, i32* @ISC_PFE_CFG1, align 4
  %46 = call i32 @ISC_PFE_CFG1_COLMIN(i32 0)
  %47 = load i32, i32* @ISC_PFE_CFG1_COLMIN_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* %8, align 4
  %50 = sub nsw i32 %49, 1
  %51 = call i32 @ISC_PFE_CFG1_COLMAX(i32 %50)
  %52 = load i32, i32* @ISC_PFE_CFG1_COLMAX_MASK, align 4
  %53 = and i32 %51, %52
  %54 = or i32 %48, %53
  %55 = call i32 @regmap_write(%struct.regmap* %44, i32 %45, i32 %54)
  %56 = load %struct.regmap*, %struct.regmap** %3, align 8
  %57 = load i32, i32* @ISC_PFE_CFG2, align 4
  %58 = call i32 @ISC_PFE_CFG2_ROWMIN(i32 0)
  %59 = load i32, i32* @ISC_PFE_CFG2_ROWMIN_MASK, align 4
  %60 = and i32 %58, %59
  %61 = load i32, i32* %7, align 4
  %62 = sub nsw i32 %61, 1
  %63 = call i32 @ISC_PFE_CFG2_ROWMAX(i32 %62)
  %64 = load i32, i32* @ISC_PFE_CFG2_ROWMAX_MASK, align 4
  %65 = and i32 %63, %64
  %66 = or i32 %60, %65
  %67 = call i32 @regmap_write(%struct.regmap* %56, i32 %57, i32 %66)
  %68 = load %struct.regmap*, %struct.regmap** %3, align 8
  %69 = load i32, i32* @ISC_PFE_CFG0, align 4
  %70 = load i32, i32* @ISC_PFE_CFG0_COLEN, align 4
  %71 = load i32, i32* @ISC_PFE_CFG0_ROWEN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @ISC_PFE_CFG0_COLEN, align 4
  %74 = load i32, i32* @ISC_PFE_CFG0_ROWEN, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @regmap_update_bits(%struct.regmap* %68, i32 %69, i32 %72, i32 %75)
  %77 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %78 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %77, i32 0, i32 2
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = call i32 @vb2_dma_contig_plane_dma_addr(i32* %81, i32 0)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.regmap*, %struct.regmap** %3, align 8
  %84 = load i32, i32* @ISC_DAD0, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i32 @regmap_write(%struct.regmap* %83, i32 %84, i32 %85)
  %87 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %88 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %124 [
    i32 129, label %91
    i32 128, label %108
  ]

91:                                               ; preds = %43
  %92 = load %struct.regmap*, %struct.regmap** %3, align 8
  %93 = load i32, i32* @ISC_DAD1, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %4, align 4
  %96 = mul nsw i32 %95, 2
  %97 = sdiv i32 %96, 3
  %98 = add nsw i32 %94, %97
  %99 = call i32 @regmap_write(%struct.regmap* %92, i32 %93, i32 %98)
  %100 = load %struct.regmap*, %struct.regmap** %3, align 8
  %101 = load i32, i32* @ISC_DAD2, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %4, align 4
  %104 = mul nsw i32 %103, 5
  %105 = sdiv i32 %104, 6
  %106 = add nsw i32 %102, %105
  %107 = call i32 @regmap_write(%struct.regmap* %100, i32 %101, i32 %106)
  br label %125

108:                                              ; preds = %43
  %109 = load %struct.regmap*, %struct.regmap** %3, align 8
  %110 = load i32, i32* @ISC_DAD1, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %4, align 4
  %113 = sdiv i32 %112, 2
  %114 = add nsw i32 %111, %113
  %115 = call i32 @regmap_write(%struct.regmap* %109, i32 %110, i32 %114)
  %116 = load %struct.regmap*, %struct.regmap** %3, align 8
  %117 = load i32, i32* @ISC_DAD2, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %4, align 4
  %120 = mul nsw i32 %119, 3
  %121 = sdiv i32 %120, 4
  %122 = add nsw i32 %118, %121
  %123 = call i32 @regmap_write(%struct.regmap* %116, i32 %117, i32 %122)
  br label %125

124:                                              ; preds = %43
  br label %125

125:                                              ; preds = %124, %108, %91
  %126 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %127 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  store i32 %129, i32* %5, align 4
  %130 = load %struct.regmap*, %struct.regmap** %3, align 8
  %131 = load i32, i32* @ISC_DCTRL, align 4
  %132 = load i32, i32* %5, align 4
  %133 = load i32, i32* @ISC_DCTRL_IE_IS, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @regmap_write(%struct.regmap* %130, i32 %131, i32 %134)
  %136 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %137 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %136, i32 0, i32 0
  %138 = call i32 @spin_lock(i32* %137)
  %139 = load %struct.regmap*, %struct.regmap** %3, align 8
  %140 = load i32, i32* @ISC_CTRLEN, align 4
  %141 = load i32, i32* @ISC_CTRL_CAPTURE, align 4
  %142 = call i32 @regmap_write(%struct.regmap* %139, i32 %140, i32 %141)
  %143 = load %struct.isc_device*, %struct.isc_device** %2, align 8
  %144 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock(i32* %144)
  ret void
}

declare dso_local i32 @ISC_IS_FORMAT_RAW(i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @ISC_PFE_CFG1_COLMIN(i32) #1

declare dso_local i32 @ISC_PFE_CFG1_COLMAX(i32) #1

declare dso_local i32 @ISC_PFE_CFG2_ROWMIN(i32) #1

declare dso_local i32 @ISC_PFE_CFG2_ROWMAX(i32) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

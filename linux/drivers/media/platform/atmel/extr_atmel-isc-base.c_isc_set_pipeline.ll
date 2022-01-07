; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_set_pipeline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isc-base.c_isc_set_pipeline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isc_device = type { %struct.TYPE_4__, i32*, %struct.isc_ctrls, %struct.regmap* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.isc_ctrls = type { i64, i64, i32, i32 }
%struct.regmap = type { i32 }

@ISC_PIPE_LINE_NODE_NUM = common dso_local global i32 0, align 4
@ISC_WB_NONE = common dso_local global i64 0, align 8
@ISC_WB_CFG = common dso_local global i32 0, align 4
@ISC_CFA_CFG = common dso_local global i32 0, align 4
@ISC_CFA_CFG_EITPOL = common dso_local global i32 0, align 4
@isc_gamma_table = common dso_local global i32** null, align 8
@ISC_GAM_BENTRY = common dso_local global i32 0, align 4
@GAMMA_ENTRIES = common dso_local global i32 0, align 4
@ISC_GAM_GENTRY = common dso_local global i32 0, align 4
@ISC_GAM_RENTRY = common dso_local global i32 0, align 4
@ISC_CSC_YR_YG = common dso_local global i32 0, align 4
@ISC_CSC_YB_OY = common dso_local global i32 0, align 4
@ISC_CSC_CBR_CBG = common dso_local global i32 0, align 4
@ISC_CSC_CBB_OCB = common dso_local global i32 0, align 4
@ISC_CSC_CRR_CRG = common dso_local global i32 0, align 4
@ISC_CSC_CRB_OCR = common dso_local global i32 0, align 4
@ISC_CBC_BRIGHT = common dso_local global i32 0, align 4
@ISC_CBC_CONTRAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isc_device*, i32)* @isc_set_pipeline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isc_set_pipeline(%struct.isc_device* %0, i32 %1) #0 {
  %3 = alloca %struct.isc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  %6 = alloca %struct.isc_ctrls*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.isc_device* %0, %struct.isc_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %12 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %11, i32 0, i32 3
  %13 = load %struct.regmap*, %struct.regmap** %12, align 8
  store %struct.regmap* %13, %struct.regmap** %5, align 8
  %14 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %15 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %14, i32 0, i32 2
  store %struct.isc_ctrls* %15, %struct.isc_ctrls** %6, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %37, %2
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @ISC_PIPE_LINE_NODE_NUM, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %16
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @BIT(i32 %22)
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %7, align 4
  %28 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %29 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %10, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @regmap_field_write(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %20
  %38 = load i32, i32* %10, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %10, align 4
  br label %16

40:                                               ; preds = %16
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  br label %124

44:                                               ; preds = %40
  %45 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %46 = getelementptr inbounds %struct.isc_device, %struct.isc_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %52 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ISC_WB_NONE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %44
  %57 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %58 = call i32 @isc_reset_awb_ctrls(%struct.isc_device* %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = load %struct.regmap*, %struct.regmap** %5, align 8
  %61 = load i32, i32* @ISC_WB_CFG, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @regmap_write(%struct.regmap* %60, i32 %61, i32 %62)
  %64 = load %struct.isc_device*, %struct.isc_device** %3, align 8
  %65 = call i32 @isc_update_awb_ctrls(%struct.isc_device* %64)
  %66 = load %struct.regmap*, %struct.regmap** %5, align 8
  %67 = load i32, i32* @ISC_CFA_CFG, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ISC_CFA_CFG_EITPOL, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @regmap_write(%struct.regmap* %66, i32 %67, i32 %70)
  %72 = load i32**, i32*** @isc_gamma_table, align 8
  %73 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %74 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i32*, i32** %72, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32* %78, i32** %9, align 8
  %79 = load %struct.regmap*, %struct.regmap** %5, align 8
  %80 = load i32, i32* @ISC_GAM_BENTRY, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @GAMMA_ENTRIES, align 4
  %83 = call i32 @regmap_bulk_write(%struct.regmap* %79, i32 %80, i32* %81, i32 %82)
  %84 = load %struct.regmap*, %struct.regmap** %5, align 8
  %85 = load i32, i32* @ISC_GAM_GENTRY, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* @GAMMA_ENTRIES, align 4
  %88 = call i32 @regmap_bulk_write(%struct.regmap* %84, i32 %85, i32* %86, i32 %87)
  %89 = load %struct.regmap*, %struct.regmap** %5, align 8
  %90 = load i32, i32* @ISC_GAM_RENTRY, align 4
  %91 = load i32*, i32** %9, align 8
  %92 = load i32, i32* @GAMMA_ENTRIES, align 4
  %93 = call i32 @regmap_bulk_write(%struct.regmap* %89, i32 %90, i32* %91, i32 %92)
  %94 = load %struct.regmap*, %struct.regmap** %5, align 8
  %95 = load i32, i32* @ISC_CSC_YR_YG, align 4
  %96 = call i32 @regmap_write(%struct.regmap* %94, i32 %95, i32 8454210)
  %97 = load %struct.regmap*, %struct.regmap** %5, align 8
  %98 = load i32, i32* @ISC_CSC_YB_OY, align 4
  %99 = call i32 @regmap_write(%struct.regmap* %97, i32 %98, i32 1048601)
  %100 = load %struct.regmap*, %struct.regmap** %5, align 8
  %101 = load i32, i32* @ISC_CSC_CBR_CBG, align 4
  %102 = call i32 @regmap_write(%struct.regmap* %100, i32 %101, i32 263589850)
  %103 = load %struct.regmap*, %struct.regmap** %5, align 8
  %104 = load i32, i32* @ISC_CSC_CBB_OCB, align 4
  %105 = call i32 @regmap_write(%struct.regmap* %103, i32 %104, i32 8388720)
  %106 = load %struct.regmap*, %struct.regmap** %5, align 8
  %107 = load i32, i32* @ISC_CSC_CRR_CRG, align 4
  %108 = call i32 @regmap_write(%struct.regmap* %106, i32 %107, i32 262275184)
  %109 = load %struct.regmap*, %struct.regmap** %5, align 8
  %110 = load i32, i32* @ISC_CSC_CRB_OCR, align 4
  %111 = call i32 @regmap_write(%struct.regmap* %109, i32 %110, i32 8392686)
  %112 = load %struct.regmap*, %struct.regmap** %5, align 8
  %113 = load i32, i32* @ISC_CBC_BRIGHT, align 4
  %114 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %115 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @regmap_write(%struct.regmap* %112, i32 %113, i32 %116)
  %118 = load %struct.regmap*, %struct.regmap** %5, align 8
  %119 = load i32, i32* @ISC_CBC_CONTRAST, align 4
  %120 = load %struct.isc_ctrls*, %struct.isc_ctrls** %6, align 8
  %121 = getelementptr inbounds %struct.isc_ctrls, %struct.isc_ctrls* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @regmap_write(%struct.regmap* %118, i32 %119, i32 %122)
  br label %124

124:                                              ; preds = %59, %43
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @isc_reset_awb_ctrls(%struct.isc_device*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

declare dso_local i32 @isc_update_awb_ctrls(%struct.isc_device*) #1

declare dso_local i32 @regmap_bulk_write(%struct.regmap*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

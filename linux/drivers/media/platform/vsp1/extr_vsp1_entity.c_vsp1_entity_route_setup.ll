; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_route_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_entity.c_vsp1_entity_route_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_entity = type { i64, i64, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.vsp1_entity** }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.vsp1_pipeline = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.vsp1_dl_body = type { i32 }

@VSP1_ENTITY_HGO = common dso_local global i64 0, align 8
@VI6_DPR_SMPPT_TGW_SHIFT = common dso_local global i32 0, align 4
@VI6_DPR_SMPPT_PT_SHIFT = common dso_local global i32 0, align 4
@VI6_DPR_HGO_SMPPT = common dso_local global i64 0, align 8
@VSP1_ENTITY_HGT = common dso_local global i64 0, align 8
@VI6_DPR_HGT_SMPPT = common dso_local global i64 0, align 8
@VSP1_ENTITY_BRS = common dso_local global i64 0, align 8
@VI6_DPR_ROUTE_BRSSEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vsp1_entity_route_setup(%struct.vsp1_entity* %0, %struct.vsp1_pipeline* %1, %struct.vsp1_dl_body* %2) #0 {
  %4 = alloca %struct.vsp1_entity*, align 8
  %5 = alloca %struct.vsp1_pipeline*, align 8
  %6 = alloca %struct.vsp1_dl_body*, align 8
  %7 = alloca %struct.vsp1_entity*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vsp1_entity* %0, %struct.vsp1_entity** %4, align 8
  store %struct.vsp1_pipeline* %1, %struct.vsp1_pipeline** %5, align 8
  store %struct.vsp1_dl_body* %2, %struct.vsp1_dl_body** %6, align 8
  %11 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %12 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VSP1_ENTITY_HGO, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %3
  %17 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %18 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %17, i32 0, i32 4
  %19 = load %struct.vsp1_entity**, %struct.vsp1_entity*** %18, align 8
  %20 = getelementptr inbounds %struct.vsp1_entity*, %struct.vsp1_entity** %19, i64 0
  %21 = load %struct.vsp1_entity*, %struct.vsp1_entity** %20, align 8
  store %struct.vsp1_entity* %21, %struct.vsp1_entity** %7, align 8
  %22 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %23 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %22, i32 0, i32 0
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VI6_DPR_SMPPT_TGW_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %31 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @VI6_DPR_SMPPT_PT_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %29, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %39 = load i64, i64* @VI6_DPR_HGO_SMPPT, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %38, i64 %39, i32 %40)
  br label %115

42:                                               ; preds = %3
  %43 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %44 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VSP1_ENTITY_HGT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %74

48:                                               ; preds = %42
  %49 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  %50 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %49, i32 0, i32 4
  %51 = load %struct.vsp1_entity**, %struct.vsp1_entity*** %50, align 8
  %52 = getelementptr inbounds %struct.vsp1_entity*, %struct.vsp1_entity** %51, i64 0
  %53 = load %struct.vsp1_entity*, %struct.vsp1_entity** %52, align 8
  store %struct.vsp1_entity* %53, %struct.vsp1_entity** %7, align 8
  %54 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %5, align 8
  %55 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VI6_DPR_SMPPT_TGW_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %63 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %62, i32 0, i32 2
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VI6_DPR_SMPPT_PT_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %61, %68
  store i32 %69, i32* %10, align 4
  %70 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %71 = load i64, i64* @VI6_DPR_HGT_SMPPT, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %70, i64 %71, i32 %72)
  br label %115

74:                                               ; preds = %42
  br label %75

75:                                               ; preds = %74
  %76 = load %struct.vsp1_entity*, %struct.vsp1_entity** %4, align 8
  store %struct.vsp1_entity* %76, %struct.vsp1_entity** %7, align 8
  %77 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %78 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %77, i32 0, i32 2
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  br label %115

84:                                               ; preds = %75
  %85 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %86 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %85, i32 0, i32 3
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %93 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %8, align 4
  %97 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %98 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VSP1_ENTITY_BRS, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %84
  %103 = load i32, i32* @VI6_DPR_ROUTE_BRSSEL, align 4
  %104 = load i32, i32* %8, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %102, %84
  %107 = load %struct.vsp1_dl_body*, %struct.vsp1_dl_body** %6, align 8
  %108 = load %struct.vsp1_entity*, %struct.vsp1_entity** %7, align 8
  %109 = getelementptr inbounds %struct.vsp1_entity, %struct.vsp1_entity* %108, i32 0, i32 2
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = call i32 @vsp1_dl_body_write(%struct.vsp1_dl_body* %107, i64 %112, i32 %113)
  br label %115

115:                                              ; preds = %106, %83, %48, %16
  ret void
}

declare dso_local i32 @vsp1_dl_body_write(%struct.vsp1_dl_body*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

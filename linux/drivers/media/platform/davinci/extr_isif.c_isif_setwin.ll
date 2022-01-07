; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_setwin.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_isif.c_isif_setwin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }

@isif_cfg = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [25 x i8] c"\0AStarting isif_setwin...\00", align 1
@START_PX_HOR_MASK = common dso_local global i32 0, align 4
@SPH = common dso_local global i32 0, align 4
@NUM_PX_HOR_MASK = common dso_local global i32 0, align 4
@LNH = common dso_local global i32 0, align 4
@CCDC_FRMFMT_INTERLACED = common dso_local global i32 0, align 4
@VDINT1 = common dso_local global i32 0, align 4
@VDINT0 = common dso_local global i32 0, align 4
@START_VER_ONE_MASK = common dso_local global i32 0, align 4
@SLV0 = common dso_local global i32 0, align 4
@START_VER_TWO_MASK = common dso_local global i32 0, align 4
@SLV1 = common dso_local global i32 0, align 4
@NUM_LINES_VER = common dso_local global i32 0, align 4
@LNV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_rect*, i32, i32)* @isif_setwin to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isif_setwin(%struct.v4l2_rect* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_rect* %0, %struct.v4l2_rect** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @isif_cfg, i32 0, i32 0), align 4
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %15 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = sub nsw i32 %17, 1
  %19 = shl i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = sub nsw i32 %23, 1
  %25 = shl i32 %22, %24
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @START_PX_HOR_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SPH, align 4
  %31 = call i32 @regw(i32 %29, i32 %30)
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @NUM_PX_HOR_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32, i32* @LNH, align 4
  %36 = call i32 @regw(i32 %34, i32 %35)
  %37 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @CCDC_FRMFMT_INTERLACED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %3
  %44 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %45 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 1
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %9, align 4
  %50 = ashr i32 %49, 1
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %69

53:                                               ; preds = %3
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  %56 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %57 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = sub nsw i32 %58, 1
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %62 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = sdiv i32 %63, 2
  %65 = add nsw i32 %60, %64
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @VDINT1, align 4
  %68 = call i32 @regw(i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %53, %43
  %70 = load i32, i32* @VDINT0, align 4
  %71 = call i32 @regw(i32 0, i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @START_VER_ONE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @SLV0, align 4
  %76 = call i32 @regw(i32 %74, i32 %75)
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @START_VER_TWO_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @SLV1, align 4
  %81 = call i32 @regw(i32 %79, i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @NUM_LINES_VER, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* @LNV, align 4
  %86 = call i32 @regw(i32 %84, i32 %85)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regw(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

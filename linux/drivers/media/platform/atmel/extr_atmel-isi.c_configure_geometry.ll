; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_configure_geometry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/atmel/extr_atmel-isi.c_configure_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_isi = type { i32, %struct.TYPE_8__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@V4L2_PIX_FMT_RGB565 = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_RGB32 = common dso_local global i64 0, align 8
@ISI_CTRL = common dso_local global i32 0, align 4
@ISI_CTRL_DIS = common dso_local global i64 0, align 8
@ISI_CFG2_IM_HSIZE_OFFSET = common dso_local global i32 0, align 4
@ISI_CFG2_IM_HSIZE_MASK = common dso_local global i32 0, align 4
@ISI_CFG2_IM_VSIZE_OFFSET = common dso_local global i32 0, align 4
@ISI_CFG2_IM_VSIZE_MASK = common dso_local global i32 0, align 4
@ISI_CFG2 = common dso_local global i32 0, align 4
@ISI_PSIZE_PREV_HSIZE_OFFSET = common dso_local global i32 0, align 4
@ISI_PSIZE_PREV_HSIZE_MASK = common dso_local global i32 0, align 4
@ISI_PSIZE_PREV_VSIZE_OFFSET = common dso_local global i32 0, align 4
@ISI_PSIZE_PREV_VSIZE_MASK = common dso_local global i32 0, align 4
@ISI_PSIZE = common dso_local global i32 0, align 4
@ISI_PDECF = common dso_local global i32 0, align 4
@ISI_PDECF_NO_SAMPLING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atmel_isi*)* @configure_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_geometry(%struct.atmel_isi* %0) #0 {
  %2 = alloca %struct.atmel_isi*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.atmel_isi* %0, %struct.atmel_isi** %2, align 8
  %6 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %7 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @V4L2_PIX_FMT_RGB565, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @V4L2_PIX_FMT_RGB32, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %1
  %19 = phi i1 [ true, %1 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %22 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %24 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  %28 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %29 = load i32, i32* @ISI_CTRL, align 4
  %30 = load i64, i64* @ISI_CTRL_DIS, align 8
  %31 = call i32 @isi_writel(%struct.atmel_isi* %28, i32 %29, i64 %30)
  %32 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %33 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = load i32, i32* @ISI_CFG2_IM_HSIZE_OFFSET, align 4
  %40 = shl i32 %38, %39
  %41 = load i32, i32* @ISI_CFG2_IM_HSIZE_MASK, align 4
  %42 = and i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %3, align 8
  %45 = or i64 %44, %43
  store i64 %45, i64* %3, align 8
  %46 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %47 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sub nsw i32 %51, 1
  %53 = load i32, i32* @ISI_CFG2_IM_VSIZE_OFFSET, align 4
  %54 = shl i32 %52, %53
  %55 = load i32, i32* @ISI_CFG2_IM_VSIZE_MASK, align 4
  %56 = and i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load i64, i64* %3, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %3, align 8
  %60 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %61 = load i32, i32* @ISI_CFG2, align 4
  %62 = load i64, i64* %3, align 8
  %63 = call i32 @isi_writel(%struct.atmel_isi* %60, i32 %61, i64 %62)
  %64 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %65 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 %69, 1
  %71 = load i32, i32* @ISI_PSIZE_PREV_HSIZE_OFFSET, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* @ISI_PSIZE_PREV_HSIZE_MASK, align 4
  %74 = and i32 %72, %73
  %75 = sext i32 %74 to i64
  store i64 %75, i64* %4, align 8
  %76 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %77 = getelementptr inbounds %struct.atmel_isi, %struct.atmel_isi* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  %83 = load i32, i32* @ISI_PSIZE_PREV_VSIZE_OFFSET, align 4
  %84 = shl i32 %82, %83
  %85 = load i32, i32* @ISI_PSIZE_PREV_VSIZE_MASK, align 4
  %86 = and i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %4, align 8
  %89 = or i64 %88, %87
  store i64 %89, i64* %4, align 8
  %90 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %91 = load i32, i32* @ISI_PSIZE, align 4
  %92 = load i64, i64* %4, align 8
  %93 = call i32 @isi_writel(%struct.atmel_isi* %90, i32 %91, i64 %92)
  %94 = load %struct.atmel_isi*, %struct.atmel_isi** %2, align 8
  %95 = load i32, i32* @ISI_PDECF, align 4
  %96 = load i64, i64* @ISI_PDECF_NO_SAMPLING, align 8
  %97 = call i32 @isi_writel(%struct.atmel_isi* %94, i32 %95, i64 %96)
  ret void
}

declare dso_local i32 @isi_writel(%struct.atmel_isi*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

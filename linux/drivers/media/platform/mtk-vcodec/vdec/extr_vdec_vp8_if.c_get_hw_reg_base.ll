; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp8_if.c_get_hw_reg_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp8_if.c_get_hw_reg_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp8_inst = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@VDEC_TOP = common dso_local global i32 0, align 4
@VDEC_CM = common dso_local global i32 0, align 4
@VDEC_HWD = common dso_local global i32 0, align 4
@VDEC_SYS = common dso_local global i32 0, align 4
@VDEC_MISC = common dso_local global i32 0, align 4
@VDEC_LD = common dso_local global i32 0, align 4
@VDEC_HWB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_vp8_inst*)* @get_hw_reg_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_hw_reg_base(%struct.vdec_vp8_inst* %0) #0 {
  %2 = alloca %struct.vdec_vp8_inst*, align 8
  store %struct.vdec_vp8_inst* %0, %struct.vdec_vp8_inst** %2, align 8
  %3 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %4 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @VDEC_TOP, align 4
  %7 = call i8* @mtk_vcodec_get_reg_addr(i32 %5, i32 %6)
  %8 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %9 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 6
  store i8* %7, i8** %10, align 8
  %11 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %12 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @VDEC_CM, align 4
  %15 = call i8* @mtk_vcodec_get_reg_addr(i32 %13, i32 %14)
  %16 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %17 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 5
  store i8* %15, i8** %18, align 8
  %19 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %20 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @VDEC_HWD, align 4
  %23 = call i8* @mtk_vcodec_get_reg_addr(i32 %21, i32 %22)
  %24 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %25 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i8* %23, i8** %26, align 8
  %27 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %28 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @VDEC_SYS, align 4
  %31 = call i8* @mtk_vcodec_get_reg_addr(i32 %29, i32 %30)
  %32 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %33 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 3
  store i8* %31, i8** %34, align 8
  %35 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %36 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @VDEC_MISC, align 4
  %39 = call i8* @mtk_vcodec_get_reg_addr(i32 %37, i32 %38)
  %40 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %41 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %44 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VDEC_LD, align 4
  %47 = call i8* @mtk_vcodec_get_reg_addr(i32 %45, i32 %46)
  %48 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %49 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i8* %47, i8** %50, align 8
  %51 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %52 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @VDEC_HWB, align 4
  %55 = call i8* @mtk_vcodec_get_reg_addr(i32 %53, i32 %54)
  %56 = load %struct.vdec_vp8_inst*, %struct.vdec_vp8_inst** %2, align 8
  %57 = getelementptr inbounds %struct.vdec_vp8_inst, %struct.vdec_vp8_inst* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  store i8* %55, i8** %58, align 8
  ret void
}

declare dso_local i8* @mtk_vcodec_get_reg_addr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

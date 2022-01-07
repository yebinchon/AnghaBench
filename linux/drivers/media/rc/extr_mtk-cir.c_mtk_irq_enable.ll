; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_mtk-cir.c_mtk_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_mtk-cir.c_mtk_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_ir = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@MTK_IRINT_EN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_ir*, i32)* @mtk_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_irq_enable(%struct.mtk_ir* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_ir*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_ir* %0, %struct.mtk_ir** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_ir*, %struct.mtk_ir** %3, align 8
  %7 = load %struct.mtk_ir*, %struct.mtk_ir** %3, align 8
  %8 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i64, i64* @MTK_IRINT_EN_REG, align 8
  %13 = getelementptr inbounds i32, i32* %11, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mtk_r32(%struct.mtk_ir* %6, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.mtk_ir*, %struct.mtk_ir** %3, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.mtk_ir*, %struct.mtk_ir** %3, align 8
  %21 = getelementptr inbounds %struct.mtk_ir, %struct.mtk_ir* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @MTK_IRINT_EN_REG, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mtk_w32(%struct.mtk_ir* %16, i32 %19, i32 %27)
  ret void
}

declare dso_local i32 @mtk_r32(%struct.mtk_ir*, i32) #1

declare dso_local i32 @mtk_w32(%struct.mtk_ir*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

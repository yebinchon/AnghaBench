; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { %struct.vsp1_rwpf**, %struct.TYPE_4__* }
%struct.vsp1_rwpf = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@VI6_WFP_IRQ_STA_DFE = common dso_local global i32 0, align 4
@VI6_WFP_IRQ_STA_FRE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @vsp1_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vsp1_rwpf*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @VI6_WFP_IRQ_STA_DFE, align 4
  %12 = load i32, i32* @VI6_WFP_IRQ_STA_FRE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.vsp1_device*
  store %struct.vsp1_device* %15, %struct.vsp1_device** %6, align 8
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %61, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %20 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ult i32 %18, %23
  br i1 %24, label %25, label %64

25:                                               ; preds = %17
  %26 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %27 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %26, i32 0, i32 0
  %28 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %28, i64 %30
  %32 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %31, align 8
  store %struct.vsp1_rwpf* %32, %struct.vsp1_rwpf** %10, align 8
  %33 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %34 = icmp eq %struct.vsp1_rwpf* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  br label %61

36:                                               ; preds = %25
  %37 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @VI6_WPF_IRQ_STA(i32 %38)
  %40 = call i32 @vsp1_read(%struct.vsp1_device* %37, i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load %struct.vsp1_device*, %struct.vsp1_device** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @VI6_WPF_IRQ_STA(i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %45, %46
  %48 = call i32 @vsp1_write(%struct.vsp1_device* %41, i32 %43, i32 %47)
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @VI6_WFP_IRQ_STA_DFE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %36
  %54 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %10, align 8
  %55 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @vsp1_pipeline_frame_end(i32 %57)
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %53, %36
  br label %61

61:                                               ; preds = %60, %35
  %62 = load i32, i32* %8, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %17

64:                                               ; preds = %17
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @vsp1_read(%struct.vsp1_device*, i32) #1

declare dso_local i32 @VI6_WPF_IRQ_STA(i32) #1

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @vsp1_pipeline_frame_end(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

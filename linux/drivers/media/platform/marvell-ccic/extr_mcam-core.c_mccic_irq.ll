; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/marvell-ccic/extr_mcam-core.c_mccic_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcam_camera = type { i32, i64, i32 }

@REG_IRQSTAT = common dso_local global i32 0, align 4
@FRAMEIRQS = common dso_local global i32 0, align 4
@IRQ_EOF0 = common dso_local global i32 0, align 4
@CF_FRAME_SOF0 = common dso_local global i64 0, align 8
@B_DMA_sg = common dso_local global i64 0, align 8
@IRQ_SOF0 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CF_DMA_ACTIVE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mccic_irq(%struct.mcam_camera* %0, i32 %1) #0 {
  %3 = alloca %struct.mcam_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mcam_camera* %0, %struct.mcam_camera** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %8 = load i32, i32* @REG_IRQSTAT, align 4
  %9 = load i32, i32* @FRAMEIRQS, align 4
  %10 = call i32 @mcam_reg_write(%struct.mcam_camera* %7, i32 %8, i32 %9)
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %52, %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %14 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IRQ_EOF0, align 4
  %20 = load i32, i32* %5, align 4
  %21 = shl i32 %19, %20
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %17
  %25 = load i64, i64* @CF_FRAME_SOF0, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = add nsw i64 %25, %27
  %29 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %30 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %29, i32 0, i32 2
  %31 = call i64 @test_bit(i64 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %24
  %34 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @mcam_frame_complete(%struct.mcam_camera* %34, i32 %35)
  store i32 1, i32* %6, align 4
  %37 = load i64, i64* @CF_FRAME_SOF0, align 8
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %42 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %41, i32 0, i32 2
  %43 = call i32 @clear_bit(i64 %40, i32* %42)
  %44 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %45 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @B_DMA_sg, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %33
  br label %55

50:                                               ; preds = %33
  br label %51

51:                                               ; preds = %50, %24, %17
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %5, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %11

55:                                               ; preds = %49, %11
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %79, %55
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %59 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ult i32 %57, %60
  br i1 %61, label %62, label %82

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @IRQ_SOF0, align 4
  %65 = load i32, i32* %5, align 4
  %66 = shl i32 %64, %65
  %67 = and i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i64, i64* @CF_FRAME_SOF0, align 8
  %71 = load i32, i32* %5, align 4
  %72 = zext i32 %71 to i64
  %73 = add nsw i64 %70, %72
  %74 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %75 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %74, i32 0, i32 2
  %76 = call i32 @set_bit(i64 %73, i32* %75)
  %77 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %69, %62
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %5, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %5, align 4
  br label %56

82:                                               ; preds = %56
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i64, i64* @CF_DMA_ACTIVE, align 8
  %88 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %89 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %88, i32 0, i32 2
  %90 = call i32 @set_bit(i64 %87, i32* %89)
  %91 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %92 = getelementptr inbounds %struct.mcam_camera, %struct.mcam_camera* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @B_DMA_sg, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %86
  %97 = load %struct.mcam_camera*, %struct.mcam_camera** %3, align 8
  %98 = call i32 @mcam_ctlr_stop(%struct.mcam_camera* %97)
  br label %99

99:                                               ; preds = %96, %86
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i32 @mcam_reg_write(%struct.mcam_camera*, i32, i32) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @mcam_frame_complete(%struct.mcam_camera*, i32) #1

declare dso_local i32 @clear_bit(i64, i32*) #1

declare dso_local i32 @set_bit(i64, i32*) #1

declare dso_local i32 @mcam_ctlr_stop(%struct.mcam_camera*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

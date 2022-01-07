; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_enable_irq_pix_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_enable_irq_pix_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vfe_output }
%struct.vfe_output = type { i32, i32* }

@VFE_0_IRQ_MASK_0_CAMIF_SOF = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_0_CAMIF_EOF = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_1_CAMIF_ERROR = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_0 = common dso_local global i32 0, align 4
@VFE_0_IRQ_MASK_1 = common dso_local global i32 0, align 4
@VFE_0_IRQ_COMPOSITE_MASK_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i32, i32, i32)* @vfe_enable_irq_pix_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_enable_irq_pix_line(%struct.vfe_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vfe_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfe_output*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %15 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store %struct.vfe_output* %20, %struct.vfe_output** %9, align 8
  store i32 0, i32* %13, align 4
  %21 = load i32, i32* @VFE_0_IRQ_MASK_0_CAMIF_SOF, align 4
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @VFE_0_IRQ_MASK_0_CAMIF_EOF, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @VFE_0_IRQ_MASK_0_IMAGE_COMPOSITE_DONE_n(i32 %25)
  %27 = load i32, i32* %11, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @VFE_0_IRQ_MASK_0_line_n_REG_UPDATE(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @VFE_0_IRQ_MASK_1_CAMIF_ERROR, align 4
  store i32 %33, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %64, %4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.vfe_output*, %struct.vfe_output** %9, align 8
  %37 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ult i32 %35, %38
  br i1 %39, label %40, label %67

40:                                               ; preds = %34
  %41 = load %struct.vfe_output*, %struct.vfe_output** %9, align 8
  %42 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %10, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @VFE_0_IRQ_MASK_1_IMAGE_MASTER_n_BUS_OVERFLOW(i32 %47)
  %49 = load i32, i32* %12, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.vfe_output*, %struct.vfe_output** %9, align 8
  %52 = getelementptr inbounds %struct.vfe_output, %struct.vfe_output* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 1, %57
  %59 = load i32, i32* %6, align 4
  %60 = mul nsw i32 %59, 8
  %61 = shl i32 %58, %60
  %62 = load i32, i32* %13, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %40
  %65 = load i32, i32* %10, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %10, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %67
  %71 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %72 = load i32, i32* @VFE_0_IRQ_MASK_0, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @vfe_reg_set(%struct.vfe_device* %71, i32 %72, i32 %73)
  %75 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %76 = load i32, i32* @VFE_0_IRQ_MASK_1, align 4
  %77 = load i32, i32* %12, align 4
  %78 = call i32 @vfe_reg_set(%struct.vfe_device* %75, i32 %76, i32 %77)
  %79 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %80 = load i32, i32* @VFE_0_IRQ_COMPOSITE_MASK_0, align 4
  %81 = load i32, i32* %13, align 4
  %82 = call i32 @vfe_reg_set(%struct.vfe_device* %79, i32 %80, i32 %81)
  br label %96

83:                                               ; preds = %67
  %84 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %85 = load i32, i32* @VFE_0_IRQ_MASK_0, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @vfe_reg_clr(%struct.vfe_device* %84, i32 %85, i32 %86)
  %88 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %89 = load i32, i32* @VFE_0_IRQ_MASK_1, align 4
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @vfe_reg_clr(%struct.vfe_device* %88, i32 %89, i32 %90)
  %92 = load %struct.vfe_device*, %struct.vfe_device** %5, align 8
  %93 = load i32, i32* @VFE_0_IRQ_COMPOSITE_MASK_0, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @vfe_reg_clr(%struct.vfe_device* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %83, %70
  ret void
}

declare dso_local i32 @VFE_0_IRQ_MASK_0_IMAGE_COMPOSITE_DONE_n(i32) #1

declare dso_local i32 @VFE_0_IRQ_MASK_0_line_n_REG_UPDATE(i32) #1

declare dso_local i32 @VFE_0_IRQ_MASK_1_IMAGE_MASTER_n_BUS_OVERFLOW(i32) #1

declare dso_local i32 @vfe_reg_set(%struct.vfe_device*, i32, i32) #1

declare dso_local i32 @vfe_reg_clr(%struct.vfe_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

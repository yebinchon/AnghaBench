; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_input_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_input_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32 }

@MSCTRL_SEL_DMA_CAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_input_path(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %4 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %5 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %8 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @S3C_CAMIF_REG_MSCTRL(i32 %9)
  %11 = call i32 @camif_read(i32 %6, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* @MSCTRL_SEL_DMA_CAM, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %17 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %20 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S3C_CAMIF_REG_MSCTRL(i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @camif_write(i32 %18, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @camif_read(i32, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_MSCTRL(i32) #1

declare dso_local i32 @camif_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

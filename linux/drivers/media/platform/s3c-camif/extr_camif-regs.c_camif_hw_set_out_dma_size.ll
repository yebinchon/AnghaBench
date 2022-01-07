; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_out_dma_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_out_dma_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, i32, %struct.camif_frame }
%struct.camif_frame = type { i32, i32 }

@CITRGFMT_TARGETSIZE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_vp*)* @camif_hw_set_out_dma_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_hw_set_out_dma_size(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_frame*, align 8
  %4 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %5 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %6 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %5, i32 0, i32 3
  store %struct.camif_frame* %6, %struct.camif_frame** %3, align 8
  %7 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %8 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %11 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %14 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @S3C_CAMIF_REG_CITRGFMT(i32 %12, i32 %15)
  %17 = call i32 @camif_read(i32 %9, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @CITRGFMT_TARGETSIZE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  %22 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %23 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 16
  %26 = load %struct.camif_frame*, %struct.camif_frame** %3, align 8
  %27 = getelementptr inbounds %struct.camif_frame, %struct.camif_frame* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %25, %28
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %33 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %36 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %39 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @S3C_CAMIF_REG_CITRGFMT(i32 %37, i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @camif_write(i32 %34, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @camif_read(i32, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CITRGFMT(i32, i32) #1

declare dso_local i32 @camif_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

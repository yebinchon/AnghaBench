; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_prescaler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_prescaler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, %struct.camif_scaler, %struct.camif_dev* }
%struct.camif_scaler = type { i32, i32, i32, i32, i32, i32 }
%struct.camif_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.camif_vp*)* @camif_hw_set_prescaler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @camif_hw_set_prescaler(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca %struct.camif_scaler*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %8 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %9 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %8, i32 0, i32 3
  %10 = load %struct.camif_dev*, %struct.camif_dev** %9, align 8
  store %struct.camif_dev* %10, %struct.camif_dev** %3, align 8
  %11 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %12 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %11, i32 0, i32 2
  store %struct.camif_scaler* %12, %struct.camif_scaler** %4, align 8
  %13 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %14 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %17 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @S3C_CAMIF_REG_CISCPRERATIO(i32 %15, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %21 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %24 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %22, %25
  %27 = sub nsw i32 10, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = shl i32 %28, 28
  store i32 %29, i32* %5, align 4
  %30 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %31 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %35 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %33, %36
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  %40 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @camif_write(%struct.camif_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %45 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 16
  %48 = load %struct.camif_scaler*, %struct.camif_scaler** %4, align 8
  %49 = getelementptr inbounds %struct.camif_scaler, %struct.camif_scaler* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %47, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %53 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %54 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %57 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @S3C_CAMIF_REG_CISCPREDST(i32 %55, i32 %58)
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @camif_write(%struct.camif_dev* %52, i32 %59, i32 %60)
  ret void
}

declare dso_local i32 @S3C_CAMIF_REG_CISCPRERATIO(i32, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CISCPREDST(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

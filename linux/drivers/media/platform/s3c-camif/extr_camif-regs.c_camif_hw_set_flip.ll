; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_flip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_flip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, i32, i64, i64 }

@CITRGFMT_FLIP_MASK = common dso_local global i32 0, align 4
@CITRGFMT_FLIP_Y_MIRROR = common dso_local global i32 0, align 4
@CITRGFMT_FLIP_X_MIRROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_flip(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %4 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %5 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %8 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %11 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @S3C_CAMIF_REG_CITRGFMT(i32 %9, i32 %12)
  %14 = call i32 @camif_read(i32 %6, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @CITRGFMT_FLIP_MASK, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %20 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @CITRGFMT_FLIP_Y_MIRROR, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %29 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @CITRGFMT_FLIP_X_MIRROR, align 4
  %34 = load i32, i32* %3, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %38 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %41 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %44 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @S3C_CAMIF_REG_CITRGFMT(i32 %42, i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @camif_write(i32 %39, i32 %46, i32 %47)
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

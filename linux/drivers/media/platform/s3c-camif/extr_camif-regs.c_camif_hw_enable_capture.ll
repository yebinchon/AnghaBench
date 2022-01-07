; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_enable_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_enable_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_vp = type { i32, i32, %struct.TYPE_4__, %struct.camif_dev* }
%struct.TYPE_4__ = type { i64 }
%struct.camif_dev = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@CIIMGCPT_IMGCPTEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CIIMGCPT: %#x, camif->stream_count: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_enable_capture(%struct.camif_vp* %0) #0 {
  %2 = alloca %struct.camif_vp*, align 8
  %3 = alloca %struct.camif_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.camif_vp* %0, %struct.camif_vp** %2, align 8
  %5 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %6 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %5, i32 0, i32 3
  %7 = load %struct.camif_dev*, %struct.camif_dev** %6, align 8
  store %struct.camif_dev* %7, %struct.camif_dev** %3, align 8
  %8 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %9 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %10 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @S3C_CAMIF_REG_CIIMGCPT(i32 %11)
  %13 = call i32 @camif_read(%struct.camif_dev* %8, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %15 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %19 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %1
  %26 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %27 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CIIMGCPT_CPT_FREN_ENABLE(i32 %28)
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %34 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %40 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @CIIMGCPT_IMGCPTEN_SC(i32 %41)
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %32
  %46 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %47 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @CIIMGCPT_IMGCPTEN, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %56 = load %struct.camif_vp*, %struct.camif_vp** %2, align 8
  %57 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @S3C_CAMIF_REG_CIIMGCPT(i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @camif_write(%struct.camif_dev* %55, i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.camif_dev*, %struct.camif_dev** %3, align 8
  %64 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %65)
  ret void
}

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @S3C_CAMIF_REG_CIIMGCPT(i32) #1

declare dso_local i32 @CIIMGCPT_CPT_FREN_ENABLE(i32) #1

declare dso_local i32 @CIIMGCPT_IMGCPTEN_SC(i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

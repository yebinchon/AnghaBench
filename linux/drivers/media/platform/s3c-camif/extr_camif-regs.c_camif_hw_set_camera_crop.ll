; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_camera_crop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_set_camera_crop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_2__*, %struct.v4l2_rect, %struct.v4l2_mbus_framefmt }
%struct.TYPE_2__ = type { i64 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@S3C_CAMIF_REG_CIWDOFST = common dso_local global i32 0, align 4
@CIWDOFST_OFST_MASK = common dso_local global i32 0, align 4
@CIWDOFST_WINOFSEN = common dso_local global i32 0, align 4
@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@S3C_CAMIF_REG_CIWDOFST2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_set_camera_crop(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.v4l2_rect*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %8 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %9 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %8, i32 0, i32 2
  store %struct.v4l2_mbus_framefmt* %9, %struct.v4l2_mbus_framefmt** %3, align 8
  %10 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %11 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %10, i32 0, i32 1
  store %struct.v4l2_rect* %11, %struct.v4l2_rect** %4, align 8
  %12 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %13 = load i32, i32* @S3C_CAMIF_REG_CIWDOFST, align 4
  %14 = call i32 @camif_read(%struct.camif_dev* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @CIWDOFST_OFST_MASK, align 4
  %16 = load i32, i32* @CIWDOFST_WINOFSEN, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %22 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 16
  %25 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %26 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %1
  %36 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35, %1
  %41 = load i32, i32* @CIWDOFST_WINOFSEN, align 4
  %42 = load i32, i32* %7, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %46 = load i32, i32* @S3C_CAMIF_REG_CIWDOFST, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @camif_write(%struct.camif_dev* %45, i32 %46, i32 %47)
  %49 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %50 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %87

56:                                               ; preds = %44
  %57 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %58 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %61 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %59, %62
  %64 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %65 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %63, %66
  store i32 %67, i32* %5, align 4
  %68 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %72 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = sub nsw i32 %70, %73
  %75 = load %struct.v4l2_rect*, %struct.v4l2_rect** %4, align 8
  %76 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %7, align 4
  %83 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %84 = load i32, i32* @S3C_CAMIF_REG_CIWDOFST2, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @camif_write(%struct.camif_dev* %83, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %56, %44
  ret void
}

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_request_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-core.c_camif_request_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.camif_dev = type { %struct.camif_vp* }
%struct.camif_vp = type { i32 }

@CAMIF_VP_NUM = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@s3c_camif_irq_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to install IRQ: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.camif_dev*)* @camif_request_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @camif_request_irqs(%struct.platform_device* %0, %struct.camif_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.camif_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.camif_vp*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.camif_dev* %1, %struct.camif_dev** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %50, %2
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @CAMIF_VP_NUM, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %53

14:                                               ; preds = %10
  %15 = load %struct.camif_dev*, %struct.camif_dev** %5, align 8
  %16 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %15, i32 0, i32 0
  %17 = load %struct.camif_vp*, %struct.camif_vp** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %17, i64 %19
  store %struct.camif_vp* %20, %struct.camif_vp** %9, align 8
  %21 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %22 = getelementptr inbounds %struct.camif_vp, %struct.camif_vp* %21, i32 0, i32 0
  %23 = call i32 @init_waitqueue_head(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @platform_get_irq(%struct.platform_device* %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @ENXIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %14
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @s3c_camif_irq_handler, align 4
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = call i32 @dev_name(i32* %38)
  %40 = load %struct.camif_vp*, %struct.camif_vp** %9, align 8
  %41 = call i32 @devm_request_irq(i32* %34, i32 %35, i32 %36, i32 0, i32 %39, %struct.camif_vp* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_err(i32* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %53

49:                                               ; preds = %32
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %8, align 4
  br label %10

53:                                               ; preds = %44, %10
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.camif_vp*) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

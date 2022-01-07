; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_camera_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32, i64 }

@CISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Camera interrupt status 0x%lx\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@CISR_EOF = common dso_local global i64 0, align 8
@CICR0 = common dso_local global i64 0, align 8
@CICR0_EOFM = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pxa_camera_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_camera_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pxa_camera_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.pxa_camera_dev*
  store %struct.pxa_camera_dev* %10, %struct.pxa_camera_dev** %6, align 8
  %11 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %12 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CISR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i64 @__raw_readl(i64 %15)
  store i64 %16, i64* %7, align 8
  %17 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %18 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %17)
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %58

25:                                               ; preds = %2
  %26 = load i64, i64* %7, align 8
  %27 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %28 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CISR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @__raw_writel(i64 %26, i64 %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @CISR_EOF, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %25
  %38 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %39 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CICR0, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i64 @__raw_readl(i64 %42)
  %44 = load i64, i64* @CICR0_EOFM, align 8
  %45 = or i64 %43, %44
  store i64 %45, i64* %8, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %48 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CICR0, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @__raw_writel(i64 %46, i64 %51)
  %53 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %6, align 8
  %54 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %53, i32 0, i32 0
  %55 = call i32 @tasklet_schedule(i32* %54)
  br label %56

56:                                               ; preds = %37, %25
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %23
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @__raw_readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @__raw_writel(i64, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

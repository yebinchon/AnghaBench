; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.tw68_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @tw68_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw68_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.tw68_dev*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.tw68_dev* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.tw68_dev* %16, %struct.tw68_dev** %12, align 8
  %17 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %18 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add i32 %19, %21
  store i32 %22, i32* %13, align 4
  %23 = load %struct.tw68_dev*, %struct.tw68_dev** %12, align 8
  %24 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.tw68_dev*, %struct.tw68_dev** %12, align 8
  %29 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %27, %30
  %32 = load %struct.tw68_dev*, %struct.tw68_dev** %12, align 8
  %33 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = ashr i32 %35, 3
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ult i32 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %5
  store i32 2, i32* %13, align 4
  br label %40

40:                                               ; preds = %39, %5
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @tw68_buffer_count(i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %46 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sub i32 %44, %47
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %40
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %53
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %53
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %6, align 4
  br label %70

65:                                               ; preds = %40
  %66 = load i32*, i32** %9, align 8
  store i32 1, i32* %66, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %10, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %67, i32* %69, align 4
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %63
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.tw68_dev* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @tw68_buffer_count(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

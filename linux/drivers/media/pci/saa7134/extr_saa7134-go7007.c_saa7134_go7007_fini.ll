; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-go7007.c_saa7134_go7007_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32* }
%struct.go7007 = type { i32, i32, i32, %struct.saa7134_go7007*, i64 }
%struct.saa7134_go7007 = type { i32, i64, i64 }

@STATUS_SHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*)* @saa7134_go7007_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_go7007_fini(%struct.saa7134_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca %struct.go7007*, align 8
  %5 = alloca %struct.saa7134_go7007*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

11:                                               ; preds = %1
  %12 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %13 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = call %struct.go7007* @video_get_drvdata(i32* %14)
  store %struct.go7007* %15, %struct.go7007** %4, align 8
  %16 = load %struct.go7007*, %struct.go7007** %4, align 8
  %17 = getelementptr inbounds %struct.go7007, %struct.go7007* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %11
  %21 = load %struct.go7007*, %struct.go7007** %4, align 8
  %22 = call i32 @go7007_snd_remove(%struct.go7007* %21)
  br label %23

23:                                               ; preds = %20, %11
  %24 = load %struct.go7007*, %struct.go7007** %4, align 8
  %25 = getelementptr inbounds %struct.go7007, %struct.go7007* %24, i32 0, i32 3
  %26 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %25, align 8
  store %struct.saa7134_go7007* %26, %struct.saa7134_go7007** %5, align 8
  %27 = load i32, i32* @STATUS_SHUTDOWN, align 4
  %28 = load %struct.go7007*, %struct.go7007** %4, align 8
  %29 = getelementptr inbounds %struct.go7007, %struct.go7007* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %31 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @free_page(i64 %32)
  %34 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %35 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @free_page(i64 %36)
  %38 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %39 = getelementptr inbounds %struct.saa7134_go7007, %struct.saa7134_go7007* %38, i32 0, i32 0
  %40 = call i32 @v4l2_device_unregister_subdev(i32* %39)
  %41 = load %struct.saa7134_go7007*, %struct.saa7134_go7007** %5, align 8
  %42 = call i32 @kfree(%struct.saa7134_go7007* %41)
  %43 = load %struct.go7007*, %struct.go7007** %4, align 8
  %44 = getelementptr inbounds %struct.go7007, %struct.go7007* %43, i32 0, i32 1
  %45 = call i32 @video_unregister_device(i32* %44)
  %46 = load %struct.go7007*, %struct.go7007** %4, align 8
  %47 = getelementptr inbounds %struct.go7007, %struct.go7007* %46, i32 0, i32 0
  %48 = call i32 @v4l2_device_put(i32* %47)
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %50 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %49, i32 0, i32 0
  store i32* null, i32** %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %23, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.go7007* @video_get_drvdata(i32*) #1

declare dso_local i32 @go7007_snd_remove(%struct.go7007*) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @v4l2_device_unregister_subdev(i32*) #1

declare dso_local i32 @kfree(%struct.saa7134_go7007*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @v4l2_device_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

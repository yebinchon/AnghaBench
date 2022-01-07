; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_unregister_video.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-core.c_saa7134_unregister_video.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.saa7134_dev*)* @saa7134_unregister_video to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @saa7134_unregister_video(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %4 = call i32 @saa7134_media_release(%struct.saa7134_dev* %3)
  %5 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %6 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %28

9:                                                ; preds = %1
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %11 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %10, i32 0, i32 2
  %12 = load i32*, i32** %11, align 8
  %13 = call i64 @video_is_registered(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @video_unregister_device(i32* %18)
  br label %25

20:                                               ; preds = %9
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @video_device_release(i32* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 2
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %52

33:                                               ; preds = %28
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = call i64 @video_is_registered(i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @video_unregister_device(i32* %42)
  br label %49

44:                                               ; preds = %33
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @video_device_release(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %51 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %49, %28
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %76

57:                                               ; preds = %52
  %58 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %59 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i64 @video_is_registered(i32* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %65 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @video_unregister_device(i32* %66)
  br label %73

68:                                               ; preds = %57
  %69 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %70 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @video_device_release(i32* %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %75 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %73, %52
  ret void
}

declare dso_local i32 @saa7134_media_release(%struct.saa7134_dev*) #1

declare dso_local i64 @video_is_registered(i32*) #1

declare dso_local i32 @video_unregister_device(i32*) #1

declare dso_local i32 @video_device_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

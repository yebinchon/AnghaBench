; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_overlay.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_overlay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa7134_dev = type { i8*, i32 }

@saa7134_no_overlay = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"no_overlay\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @saa7134_overlay to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_overlay(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %10)
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %49

14:                                               ; preds = %3
  %15 = load i64, i64* @saa7134_no_overlay, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = call i32 @video_dbg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %75

21:                                               ; preds = %14
  %22 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %23 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %29 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %27, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %75

35:                                               ; preds = %26, %21
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %38 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %40 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @spin_lock_irqsave(i32* %40, i64 %41)
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %44 = call i32 @start_preview(%struct.saa7134_dev* %43)
  %45 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %46 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %45, i32 0, i32 1
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  br label %49

49:                                               ; preds = %35, %3
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %49
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %55 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %53, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %52
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %75

61:                                               ; preds = %52
  %62 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %63 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %62, i32 0, i32 1
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %67 = call i32 @stop_preview(%struct.saa7134_dev* %66)
  %68 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %69 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %68, i32 0, i32 1
  %70 = load i64, i64* %9, align 8
  %71 = call i32 @spin_unlock_irqrestore(i32* %69, i64 %70)
  %72 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %73 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %72, i32 0, i32 0
  store i8* null, i8** %73, align 8
  br label %74

74:                                               ; preds = %61, %49
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %58, %32, %17
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @video_dbg(i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @start_preview(%struct.saa7134_dev*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @stop_preview(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

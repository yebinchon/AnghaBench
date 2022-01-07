; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_sg_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_sg_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { %struct.tw686x_video_channel* }
%struct.tw686x_video_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TW686X_SG_TABLE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw686x_dev*)* @tw686x_sg_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_sg_setup(%struct.tw686x_dev* %0) #0 {
  %2 = alloca %struct.tw686x_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tw686x_video_channel*, align 8
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %2, align 8
  %8 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %9 = call i64 @is_second_gen(%struct.tw686x_dev* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %13 = call i32 @max_channels(%struct.tw686x_dev* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @TW686X_SG_TABLE_SIZE, align 4
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %1
  store i32 1, i32* %6, align 4
  %16 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %17 = call i32 @max_channels(%struct.tw686x_dev* %16)
  %18 = load i32, i32* @TW686X_SG_TABLE_SIZE, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %11
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %48, %20
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %27 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %26, i32 0, i32 0
  %28 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %28, i64 %30
  store %struct.tw686x_video_channel* %31, %struct.tw686x_video_channel** %7, align 8
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %44, %25
  %33 = load i32, i32* %4, align 4
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %7, align 8
  %38 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 %36, i32* %43, align 4
  br label %44

44:                                               ; preds = %35
  %45 = load i32, i32* %4, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %4, align 4
  br label %32

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %21

51:                                               ; preds = %21
  ret i32 0
}

declare dso_local i64 @is_second_gen(%struct.tw686x_dev*) #1

declare dso_local i32 @max_channels(%struct.tw686x_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

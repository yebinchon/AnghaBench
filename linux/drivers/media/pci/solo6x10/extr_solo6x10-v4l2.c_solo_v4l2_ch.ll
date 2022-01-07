; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_ch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_v4l2_ch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i64, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i64, i32)* @solo_v4l2_ch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_v4l2_ch(%struct.solo_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.solo_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.solo_dev* %0, %struct.solo_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %6, align 8
  %10 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %11 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %44

14:                                               ; preds = %3
  %15 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %24

20:                                               ; preds = %14
  %21 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %22 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  br label %24

24:                                               ; preds = %20, %19
  %25 = phi i32 [ 0, %19 ], [ %23, %20 ]
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %32

29:                                               ; preds = %24
  %30 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %31 = call i32 @solo_vlines(%struct.solo_dev* %30)
  br label %32

32:                                               ; preds = %29, %28
  %33 = phi i32 [ 0, %28 ], [ %31, %29 ]
  %34 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %35 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %38 = call i32 @solo_vlines(%struct.solo_dev* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = call i32 @solo_win_setup(%struct.solo_dev* %15, i64 %16, i32 %25, i32 %33, i32 %36, i32 %38, i32 %42)
  store i32 0, i32* %4, align 4
  br label %74

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %47 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %50 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = icmp sge i64 %45, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %74

57:                                               ; preds = %44
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %60 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = sub nsw i64 %58, %61
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp slt i64 %63, 4
  br i1 %64, label %65, label %70

65:                                               ; preds = %57
  %66 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @solo_v4l2_ch_ext_4up(%struct.solo_dev* %66, i64 %67, i32 %68)
  store i32 %69, i32* %4, align 4
  br label %74

70:                                               ; preds = %57
  %71 = load %struct.solo_dev*, %struct.solo_dev** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @solo_v4l2_ch_ext_16up(%struct.solo_dev* %71, i32 %72)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %70, %65, %54, %32
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @solo_win_setup(%struct.solo_dev*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i32 @solo_vlines(%struct.solo_dev*) #1

declare dso_local i32 @solo_v4l2_ch_ext_4up(%struct.solo_dev*, i64, i32) #1

declare dso_local i32 @solo_v4l2_ch_ext_16up(%struct.solo_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

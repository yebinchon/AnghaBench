; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_set_video_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2.c_solo_set_video_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32, i32, %struct.TYPE_2__**, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SOLO_VO_FMT_TYPE_PAL = common dso_local global i32 0, align 4
@SOLO_VO_FMT_TYPE_NTSC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @solo_set_video_type(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %8 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %7, i32 0, i32 4
  %9 = call i64 @vb2_is_busy(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %80

14:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %36, %14
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %18 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %23 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %26
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i64 @vb2_is_busy(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %80

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* @SOLO_VO_FMT_TYPE_PAL, align 4
  br label %46

44:                                               ; preds = %39
  %45 = load i32, i32* @SOLO_VO_FMT_TYPE_NTSC, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %49 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %51 = call i32 @solo_disp_init(%struct.solo_dev* %50)
  %52 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %53 = call i32 @solo_enc_init(%struct.solo_dev* %52)
  %54 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %55 = call i32 @solo_tw28_init(%struct.solo_dev* %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %71, %46
  %57 = load i32, i32* %6, align 4
  %58 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %59 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %64 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %65, i64 %67
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = call i32 @solo_update_mode(%struct.TYPE_2__* %69)
  br label %71

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %76 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %77 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @solo_v4l2_set_ch(%struct.solo_dev* %75, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %74, %32, %11
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @solo_disp_init(%struct.solo_dev*) #1

declare dso_local i32 @solo_enc_init(%struct.solo_dev*) #1

declare dso_local i32 @solo_tw28_init(%struct.solo_dev*) #1

declare dso_local i32 @solo_update_mode(%struct.TYPE_2__*) #1

declare dso_local i32 @solo_v4l2_set_ch(%struct.solo_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_set_fmt_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enc_set_fmt_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.v4l2_pix_format }
%struct.v4l2_pix_format = type { i64, i32 }
%struct.solo_enc_dev = type { i32, i32, i32, %struct.solo_dev* }
%struct.solo_dev = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@SOLO_ENC_MODE_D1 = common dso_local global i32 0, align 4
@SOLO_ENC_MODE_CIF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @solo_enc_set_fmt_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enc_set_fmt_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.solo_enc_dev*, align 8
  %9 = alloca %struct.solo_dev*, align 8
  %10 = alloca %struct.v4l2_pix_format*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %12)
  store %struct.solo_enc_dev* %13, %struct.solo_enc_dev** %8, align 8
  %14 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %15 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %14, i32 0, i32 3
  %16 = load %struct.solo_dev*, %struct.solo_dev** %15, align 8
  store %struct.solo_dev* %16, %struct.solo_dev** %9, align 8
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store %struct.v4l2_pix_format* %19, %struct.v4l2_pix_format** %10, align 8
  %20 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %21 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %20, i32 0, i32 2
  %22 = call i64 @vb2_is_busy(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %31 = call i32 @solo_enc_try_fmt_cap(%struct.file* %28, i8* %29, %struct.v4l2_format* %30)
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %4, align 4
  br label %60

36:                                               ; preds = %27
  %37 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %38 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %41 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %36
  %45 = load i32, i32* @SOLO_ENC_MODE_D1, align 4
  %46 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %47 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %52

48:                                               ; preds = %36
  %49 = load i32, i32* @SOLO_ENC_MODE_CIF, align 4
  %50 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %51 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %44
  %53 = load %struct.v4l2_pix_format*, %struct.v4l2_pix_format** %10, align 8
  %54 = getelementptr inbounds %struct.v4l2_pix_format, %struct.v4l2_pix_format* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %57 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %59 = call i32 @solo_update_mode(%struct.solo_enc_dev* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %34, %24
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @solo_enc_try_fmt_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

declare dso_local i32 @solo_update_mode(%struct.solo_enc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

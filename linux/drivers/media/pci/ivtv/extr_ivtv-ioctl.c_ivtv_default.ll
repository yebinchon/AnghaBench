; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.ivtv* }

@EBUSY = common dso_local global i64 0, align 8
@core = common dso_local global i32 0, align 4
@reset = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i32, i8*)* @ivtv_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ivtv_default(%struct.file* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.ivtv*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = call %struct.TYPE_4__* @fh2id(i8* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.ivtv*, %struct.ivtv** %16, align 8
  store %struct.ivtv* %17, %struct.ivtv** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* %10, align 4
  switch i32 %21, label %25 [
    i32 139, label %22
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @EBUSY, align 8
  %24 = sub nsw i64 0, %23
  store i64 %24, i64* %6, align 8
  br label %68

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %5
  %27 = load i32, i32* %10, align 4
  switch i32 %27, label %64 [
    i32 128, label %28
    i32 140, label %59
    i32 139, label %59
  ]

28:                                               ; preds = %26
  %29 = load i8*, i8** %11, align 8
  %30 = bitcast i8* %29 to i32*
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  %36 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %34, %28
  %41 = load i32, i32* %13, align 4
  %42 = and i32 %41, 1
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %40, %34
  %45 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  %46 = call i32 @ivtv_reset_ir_gpio(%struct.ivtv* %45)
  br label %47

47:                                               ; preds = %44, %40
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.ivtv*, %struct.ivtv** %12, align 8
  %53 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @core, align 4
  %56 = load i32, i32* @reset, align 4
  %57 = call i32 @v4l2_subdev_call(i32 %54, i32 %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51, %47
  br label %67

59:                                               ; preds = %26, %26
  %60 = load %struct.file*, %struct.file** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = call i64 @ivtv_decoder_ioctls(%struct.file* %60, i32 %61, i8* %62)
  store i64 %63, i64* %6, align 8
  br label %68

64:                                               ; preds = %26
  %65 = load i64, i64* @ENOTTY, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %6, align 8
  br label %68

67:                                               ; preds = %58
  store i64 0, i64* %6, align 8
  br label %68

68:                                               ; preds = %67, %64, %59, %22
  %69 = load i64, i64* %6, align 8
  ret i64 %69
}

declare dso_local %struct.TYPE_4__* @fh2id(i8*) #1

declare dso_local i32 @ivtv_reset_ir_gpio(%struct.ivtv*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32) #1

declare dso_local i64 @ivtv_decoder_ioctls(%struct.file*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv = type { i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.ivtv* }

@V4L2_STD_ALL = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IVTV_F_I_RADIO_USER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Switching standard to %llx.\0A\00", align 1
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i64)* @ivtv_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_s_std(%struct.file* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ivtv*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = call %struct.TYPE_2__* @fh2id(i8* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @V4L2_STD_ALL, align 8
  %15 = and i64 %13, %14
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %65

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %23 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %65

27:                                               ; preds = %20
  %28 = load i32, i32* @IVTV_F_I_RADIO_USER, align 4
  %29 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %30 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %29, i32 0, i32 4
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %27
  %34 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %35 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %34, i32 0, i32 3
  %36 = call i64 @atomic_read(i32* %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %33
  %39 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %40 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %39, i32 0, i32 2
  %41 = call i64 @atomic_read(i32* %40)
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38, %33, %27
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %65

46:                                               ; preds = %38
  %47 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %48 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %49)
  %51 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @ivtv_s_std_enc(%struct.ivtv* %51, i64 %52)
  %54 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.ivtv*, %struct.ivtv** %8, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @ivtv_s_std_dec(%struct.ivtv* %61, i64 %62)
  br label %64

64:                                               ; preds = %60, %46
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %43, %26, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_2__* @fh2id(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i64) #1

declare dso_local i32 @ivtv_s_std_enc(%struct.ivtv*, i64) #1

declare dso_local i32 @ivtv_s_std_dec(%struct.ivtv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

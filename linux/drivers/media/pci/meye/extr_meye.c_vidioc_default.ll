; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/meye/extr_meye.c_vidioc_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.meye_params = type { i32 }

@ENOTTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i8*, i32, i32, i8*)* @vidioc_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vidioc_default(%struct.file* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %12 = load i32, i32* %10, align 4
  switch i32 %12, label %37 [
    i32 133, label %13
    i32 128, label %17
    i32 132, label %21
    i32 129, label %25
    i32 131, label %31
    i32 130, label %33
  ]

13:                                               ; preds = %5
  %14 = load i8*, i8** %11, align 8
  %15 = bitcast i8* %14 to %struct.meye_params*
  %16 = call i64 @meyeioc_g_params(%struct.meye_params* %15)
  store i64 %16, i64* %6, align 8
  br label %40

17:                                               ; preds = %5
  %18 = load i8*, i8** %11, align 8
  %19 = bitcast i8* %18 to %struct.meye_params*
  %20 = call i64 @meyeioc_s_params(%struct.meye_params* %19)
  store i64 %20, i64* %6, align 8
  br label %40

21:                                               ; preds = %5
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to i32*
  %24 = call i64 @meyeioc_qbuf_capt(i32* %23)
  store i64 %24, i64* %6, align 8
  br label %40

25:                                               ; preds = %5
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = load i8*, i8** %11, align 8
  %29 = bitcast i8* %28 to i32*
  %30 = call i64 @meyeioc_sync(%struct.file* %26, i8* %27, i32* %29)
  store i64 %30, i64* %6, align 8
  br label %40

31:                                               ; preds = %5
  %32 = call i64 (...) @meyeioc_stillcapt()
  store i64 %32, i64* %6, align 8
  br label %40

33:                                               ; preds = %5
  %34 = load i8*, i8** %11, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = call i64 @meyeioc_stilljcapt(i32* %35)
  store i64 %36, i64* %6, align 8
  br label %40

37:                                               ; preds = %5
  %38 = load i64, i64* @ENOTTY, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %37, %33, %31, %25, %21, %17, %13
  %41 = load i64, i64* %6, align 8
  ret i64 %41
}

declare dso_local i64 @meyeioc_g_params(%struct.meye_params*) #1

declare dso_local i64 @meyeioc_s_params(%struct.meye_params*) #1

declare dso_local i64 @meyeioc_qbuf_capt(i32*) #1

declare dso_local i64 @meyeioc_sync(%struct.file*, i8*, i32*) #1

declare dso_local i64 @meyeioc_stillcapt(...) #1

declare dso_local i64 @meyeioc_stilljcapt(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

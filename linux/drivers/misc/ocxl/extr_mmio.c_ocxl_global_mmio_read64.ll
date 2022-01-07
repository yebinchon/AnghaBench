; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_mmio.c_ocxl_global_mmio_read64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_mmio.c_ocxl_global_mmio_read64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCXL_HOST_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_global_mmio_read64(%struct.ocxl_afu* %0, i64 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocxl_afu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %12 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sub nsw i32 %14, 8
  %16 = sext i32 %15 to i64
  %17 = icmp ugt i64 %10, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %42

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %32 [
    i32 128, label %23
  ]

23:                                               ; preds = %21
  %24 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %25 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to i8*
  %28 = load i64, i64* %7, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = call i32 @readq_be(i8* %29)
  %31 = load i32*, i32** %9, align 8
  store i32 %30, i32* %31, align 4
  br label %41

32:                                               ; preds = %21
  %33 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %34 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i8, i8* %36, i64 %37
  %39 = call i32 @readq(i8* %38)
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %32, %23
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %18
  %43 = load i32, i32* %5, align 4
  ret i32 %43
}

declare dso_local i32 @readq_be(i8*) #1

declare dso_local i32 @readq(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

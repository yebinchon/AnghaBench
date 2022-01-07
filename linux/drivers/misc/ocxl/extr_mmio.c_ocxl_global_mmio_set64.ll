; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_mmio.c_ocxl_global_mmio_set64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_mmio.c_ocxl_global_mmio_set64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCXL_HOST_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_global_mmio_set64(%struct.ocxl_afu* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocxl_afu*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ocxl_afu* %0, %struct.ocxl_afu** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %7, align 8
  %12 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %13 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %15, 8
  %17 = sext i32 %16 to i64
  %18 = icmp ugt i64 %11, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %43 [
    i32 128, label %24
  ]

24:                                               ; preds = %22
  %25 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %26 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = load i64, i64* %7, align 8
  %30 = getelementptr inbounds i8, i8* %28, i64 %29
  %31 = call i32 @readq_be(i8* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %37 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = load i64, i64* %7, align 8
  %41 = getelementptr inbounds i8, i8* %39, i64 %40
  %42 = call i32 @writeq_be(i32 %35, i8* %41)
  br label %62

43:                                               ; preds = %22
  %44 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %45 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i8*
  %48 = load i64, i64* %7, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = call i32 @readq(i8* %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %10, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %56 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = call i32 @writeq(i32 %54, i8* %60)
  br label %62

62:                                               ; preds = %43, %24
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %62, %19
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @readq_be(i8*) #1

declare dso_local i32 @writeq_be(i32, i8*) #1

declare dso_local i32 @readq(i8*) #1

declare dso_local i32 @writeq(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_mmio.c_ocxl_global_mmio_clear64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_mmio.c_ocxl_global_mmio_clear64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocxl_afu = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCXL_HOST_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_global_mmio_clear64(%struct.ocxl_afu* %0, i64 %1, i32 %2, i32 %3) #0 {
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
  br label %73

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %44 [
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
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %38 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = call i32 @writeq_be(i32 %36, i8* %42)
  br label %64

44:                                               ; preds = %22
  %45 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %46 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  %51 = call i32 @readq(i8* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %9, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %10, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %58 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i8*
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = call i32 @writeq(i32 %56, i8* %62)
  br label %64

64:                                               ; preds = %44, %24
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.ocxl_afu*, %struct.ocxl_afu** %6, align 8
  %67 = getelementptr inbounds %struct.ocxl_afu, %struct.ocxl_afu* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load i64, i64* %7, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  %72 = call i32 @writeq(i32 %65, i8* %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %64, %19
  %74 = load i32, i32* %5, align 4
  ret i32 %74
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

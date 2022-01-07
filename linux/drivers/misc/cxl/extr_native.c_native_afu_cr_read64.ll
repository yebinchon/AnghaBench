; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_cr_read64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_cr_read64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32, %struct.cxl_afu*)* }
%struct.cxl_afu = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@cxl_ops = common dso_local global %struct.TYPE_4__* null, align 8
@EIO = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, i32, i32, i32*)* @native_afu_cr_read64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_afu_cr_read64(%struct.cxl_afu* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxl_afu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cxl_afu* %0, %struct.cxl_afu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @cxl_ops, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32 (i32, %struct.cxl_afu*)*, i32 (i32, %struct.cxl_afu*)** %11, align 8
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %17 = call i32 %12(i32 %15, %struct.cxl_afu* %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %58

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %29 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @ERANGE, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %58

38:                                               ; preds = %26
  %39 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %40 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %39, i32 0, i32 2
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %45 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %50 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %48, %51
  %53 = add nsw i32 %47, %52
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i32 @in_le64(i32 %55)
  %57 = load i32*, i32** %9, align 8
  store i32 %56, i32* %57, align 4
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %38, %35, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @in_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

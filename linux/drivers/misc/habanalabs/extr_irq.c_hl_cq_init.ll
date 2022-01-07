; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_cq_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_irq.c_hl_cq_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.hl_device*, i64, i32*, i32)* }
%struct.hl_cq = type { i32, i64, i64, i32, i64, %struct.hl_device*, i32 }

@HL_CQ_SIZE_IN_BYTES = common dso_local global i64 0, align 8
@HL_PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HL_CQ_LENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_cq_init(%struct.hl_device* %0, %struct.hl_cq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hl_device*, align 8
  %6 = alloca %struct.hl_cq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %5, align 8
  store %struct.hl_cq* %1, %struct.hl_cq** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @HL_CQ_SIZE_IN_BYTES, align 8
  %10 = load i64, i64* @HL_PAGE_SIZE, align 8
  %11 = icmp sgt i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUILD_BUG_ON(i32 %12)
  %14 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8* (%struct.hl_device*, i64, i32*, i32)*, i8* (%struct.hl_device*, i64, i32*, i32)** %17, align 8
  %19 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %20 = load i64, i64* @HL_CQ_SIZE_IN_BYTES, align 8
  %21 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %22 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %21, i32 0, i32 6
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load i32, i32* @__GFP_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i8* %18(%struct.hl_device* %19, i64 %20, i32* %22, i32 %25)
  store i8* %26, i8** %8, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %51

32:                                               ; preds = %3
  %33 = load %struct.hl_device*, %struct.hl_device** %5, align 8
  %34 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %35 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %34, i32 0, i32 5
  store %struct.hl_device* %33, %struct.hl_device** %35, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %39 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %38, i32 0, i32 4
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %42 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %44 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %46 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.hl_cq*, %struct.hl_cq** %6, align 8
  %48 = getelementptr inbounds %struct.hl_cq, %struct.hl_cq* %47, i32 0, i32 0
  %49 = load i32, i32* @HL_CQ_LENGTH, align 4
  %50 = call i32 @atomic_set(i32* %48, i32 %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %32, %29
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

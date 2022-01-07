; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_ring_doorbell.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_ring_doorbell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmDMA_QM_0_PQ_PI = common dso_local global i32 0, align 4
@mmDMA_QM_1_PQ_PI = common dso_local global i32 0, align 4
@mmDMA_QM_2_PQ_PI = common dso_local global i32 0, align 4
@mmDMA_QM_3_PQ_PI = common dso_local global i32 0, align 4
@mmDMA_QM_4_PQ_PI = common dso_local global i32 0, align 4
@mmCPU_IF_PF_PQ_PI = common dso_local global i32 0, align 4
@mmMME_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC0_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC1_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC2_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC3_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC4_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC5_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC6_QM_PQ_PI = common dso_local global i32 0, align 4
@mmTPC7_QM_PQ_PI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"H/W queue %d is invalid. Can't set pi\0A\00", align 1
@mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR = common dso_local global i32 0, align 4
@GOYA_ASYNC_EVENT_ID_PI_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @goya_ring_doorbell(%struct.hl_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %40 [
    i32 141, label %10
    i32 140, label %12
    i32 139, label %14
    i32 138, label %16
    i32 137, label %18
    i32 142, label %20
    i32 136, label %22
    i32 135, label %24
    i32 134, label %26
    i32 133, label %28
    i32 132, label %30
    i32 131, label %32
    i32 130, label %34
    i32 129, label %36
    i32 128, label %38
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* @mmDMA_QM_0_PQ_PI, align 4
  store i32 %11, i32* %7, align 4
  br label %46

12:                                               ; preds = %3
  %13 = load i32, i32* @mmDMA_QM_1_PQ_PI, align 4
  store i32 %13, i32* %7, align 4
  br label %46

14:                                               ; preds = %3
  %15 = load i32, i32* @mmDMA_QM_2_PQ_PI, align 4
  store i32 %15, i32* %7, align 4
  br label %46

16:                                               ; preds = %3
  %17 = load i32, i32* @mmDMA_QM_3_PQ_PI, align 4
  store i32 %17, i32* %7, align 4
  br label %46

18:                                               ; preds = %3
  %19 = load i32, i32* @mmDMA_QM_4_PQ_PI, align 4
  store i32 %19, i32* %7, align 4
  br label %46

20:                                               ; preds = %3
  %21 = load i32, i32* @mmCPU_IF_PF_PQ_PI, align 4
  store i32 %21, i32* %7, align 4
  br label %46

22:                                               ; preds = %3
  %23 = load i32, i32* @mmMME_QM_PQ_PI, align 4
  store i32 %23, i32* %7, align 4
  br label %46

24:                                               ; preds = %3
  %25 = load i32, i32* @mmTPC0_QM_PQ_PI, align 4
  store i32 %25, i32* %7, align 4
  br label %46

26:                                               ; preds = %3
  %27 = load i32, i32* @mmTPC1_QM_PQ_PI, align 4
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %3
  %29 = load i32, i32* @mmTPC2_QM_PQ_PI, align 4
  store i32 %29, i32* %7, align 4
  br label %46

30:                                               ; preds = %3
  %31 = load i32, i32* @mmTPC3_QM_PQ_PI, align 4
  store i32 %31, i32* %7, align 4
  br label %46

32:                                               ; preds = %3
  %33 = load i32, i32* @mmTPC4_QM_PQ_PI, align 4
  store i32 %33, i32* %7, align 4
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* @mmTPC5_QM_PQ_PI, align 4
  store i32 %35, i32* %7, align 4
  br label %46

36:                                               ; preds = %3
  %37 = load i32, i32* @mmTPC6_QM_PQ_PI, align 4
  store i32 %37, i32* %7, align 4
  br label %46

38:                                               ; preds = %3
  %39 = load i32, i32* @mmTPC7_QM_PQ_PI, align 4
  store i32 %39, i32* %7, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %57

46:                                               ; preds = %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @WREG32(i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = icmp eq i32 %51, 142
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @mmGIC_DISTRIBUTOR__5_GICD_SETSPI_NSR, align 4
  %55 = load i32, i32* @GOYA_ASYNC_EVENT_ID_PI_UPDATE, align 4
  %56 = call i32 @WREG32(i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %40, %53, %46
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @WREG32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

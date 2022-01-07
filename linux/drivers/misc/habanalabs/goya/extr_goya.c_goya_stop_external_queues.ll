; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_stop_external_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_stop_external_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32 }

@mmDMA_QM_0_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmDMA_QM_0_CP_STS = common dso_local global i32 0, align 4
@mmDMA_QM_0_GLBL_STS0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to stop DMA QMAN 0\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@mmDMA_QM_1_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmDMA_QM_1_CP_STS = common dso_local global i32 0, align 4
@mmDMA_QM_1_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to stop DMA QMAN 1\0A\00", align 1
@mmDMA_QM_2_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmDMA_QM_2_CP_STS = common dso_local global i32 0, align 4
@mmDMA_QM_2_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to stop DMA QMAN 2\0A\00", align 1
@mmDMA_QM_3_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmDMA_QM_3_CP_STS = common dso_local global i32 0, align 4
@mmDMA_QM_3_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to stop DMA QMAN 3\0A\00", align 1
@mmDMA_QM_4_GLBL_CFG1 = common dso_local global i32 0, align 4
@mmDMA_QM_4_CP_STS = common dso_local global i32 0, align 4
@mmDMA_QM_4_GLBL_STS0 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"failed to stop DMA QMAN 4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*)* @goya_stop_external_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goya_stop_external_queues(%struct.hl_device* %0) #0 {
  %2 = alloca %struct.hl_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %6 = load i32, i32* @mmDMA_QM_0_GLBL_CFG1, align 4
  %7 = load i32, i32* @mmDMA_QM_0_CP_STS, align 4
  %8 = load i32, i32* @mmDMA_QM_0_GLBL_STS0, align 4
  %9 = call i32 @goya_stop_queue(%struct.hl_device* %5, i32 %6, i32 %7, i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %14 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_err(i32 %15, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %12, %1
  %20 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %21 = load i32, i32* @mmDMA_QM_1_GLBL_CFG1, align 4
  %22 = load i32, i32* @mmDMA_QM_1_CP_STS, align 4
  %23 = load i32, i32* @mmDMA_QM_1_GLBL_STS0, align 4
  %24 = call i32 @goya_stop_queue(%struct.hl_device* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %29 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %36 = load i32, i32* @mmDMA_QM_2_GLBL_CFG1, align 4
  %37 = load i32, i32* @mmDMA_QM_2_CP_STS, align 4
  %38 = load i32, i32* @mmDMA_QM_2_GLBL_STS0, align 4
  %39 = call i32 @goya_stop_queue(%struct.hl_device* %35, i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %3, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %34
  %43 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %44 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %42, %34
  %50 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %51 = load i32, i32* @mmDMA_QM_3_GLBL_CFG1, align 4
  %52 = load i32, i32* @mmDMA_QM_3_CP_STS, align 4
  %53 = load i32, i32* @mmDMA_QM_3_GLBL_STS0, align 4
  %54 = call i32 @goya_stop_queue(%struct.hl_device* %50, i32 %51, i32 %52, i32 %53)
  store i32 %54, i32* %3, align 4
  %55 = load i32, i32* %3, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %49
  %58 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %59 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %57, %49
  %65 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %66 = load i32, i32* @mmDMA_QM_4_GLBL_CFG1, align 4
  %67 = load i32, i32* @mmDMA_QM_4_CP_STS, align 4
  %68 = load i32, i32* @mmDMA_QM_4_GLBL_STS0, align 4
  %69 = call i32 @goya_stop_queue(%struct.hl_device* %65, i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %64
  %73 = load %struct.hl_device*, %struct.hl_device** %2, align 8
  %74 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %72, %64
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @goya_stop_queue(%struct.hl_device*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

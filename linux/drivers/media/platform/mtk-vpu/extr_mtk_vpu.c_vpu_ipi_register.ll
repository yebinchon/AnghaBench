; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_ipi_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_ipi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtk_vpu = type { %struct.vpu_ipi_desc* }
%struct.vpu_ipi_desc = type { i8*, i8*, i64 }

@.str = private unnamed_addr constant [25 x i8] c"vpu device in not ready\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@IPI_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"register vpu ipi id %d with invalid arguments\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_ipi_register(%struct.platform_device* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.mtk_vpu*, align 8
  %13 = alloca %struct.vpu_ipi_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %15 = call %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device* %14)
  store %struct.mtk_vpu* %15, %struct.mtk_vpu** %12, align 8
  %16 = load %struct.mtk_vpu*, %struct.mtk_vpu** %12, align 8
  %17 = icmp ne %struct.mtk_vpu* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %5
  %19 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EPROBE_DEFER, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %63

24:                                               ; preds = %5
  %25 = load i32, i32* %8, align 4
  %26 = icmp uge i32 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @IPI_MAX, align 4
  %30 = icmp ult i32 %28, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %27
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %31
  %35 = load %struct.mtk_vpu*, %struct.mtk_vpu** %12, align 8
  %36 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %35, i32 0, i32 0
  %37 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %36, align 8
  store %struct.vpu_ipi_desc* %37, %struct.vpu_ipi_desc** %13, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %13, align 8
  %40 = load i32, i32* %8, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %39, i64 %41
  %43 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %42, i32 0, i32 0
  store i8* %38, i8** %43, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %13, align 8
  %46 = load i32, i32* %8, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %45, i64 %47
  %49 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %48, i32 0, i32 2
  store i64 %44, i64* %49, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = load %struct.vpu_ipi_desc*, %struct.vpu_ipi_desc** %13, align 8
  %52 = load i32, i32* %8, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %51, i64 %53
  %55 = getelementptr inbounds %struct.vpu_ipi_desc, %struct.vpu_ipi_desc* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  store i32 0, i32* %6, align 4
  br label %63

56:                                               ; preds = %31, %27, %24
  %57 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 (i32*, i8*, ...) @dev_err(i32* %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %56, %34, %18
  %64 = load i32, i32* %6, align 4
  ret i32 %64
}

declare dso_local %struct.mtk_vpu* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

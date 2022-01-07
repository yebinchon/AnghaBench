; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_set_pid_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_set_pid_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.cxd2880_pid_filter_config = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CXD2880_MAX_FILTER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.cxd2880_pid_filter_config*)* @cxd2880_set_pid_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_set_pid_filter(%struct.spi_device* %0, %struct.cxd2880_pid_filter_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.cxd2880_pid_filter_config*, align 8
  %6 = alloca [65 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.cxd2880_pid_filter_config* %1, %struct.cxd2880_pid_filter_config** %5, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %11 = icmp ne %struct.spi_device* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %100

16:                                               ; preds = %2
  %17 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %17, align 16
  %18 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %19 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 0
  %20 = call i32 @cxd2880_write_reg(%struct.spi_device* %18, i32 0, i32* %19, i32 1)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %100

25:                                               ; preds = %16
  %26 = load %struct.cxd2880_pid_filter_config*, %struct.cxd2880_pid_filter_config** %5, align 8
  %27 = icmp ne %struct.cxd2880_pid_filter_config* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 0
  store i32 2, i32* %29, align 16
  %30 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %31 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 0
  %32 = call i32 @cxd2880_write_reg(%struct.spi_device* %30, i32 80, i32* %31, i32 1)
  store i32 %32, i32* %9, align 4
  br label %98

33:                                               ; preds = %25
  %34 = load %struct.cxd2880_pid_filter_config*, %struct.cxd2880_pid_filter_config** %5, align 8
  %35 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 0
  store i32 %39, i32* %40, align 16
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %91, %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @CXD2880_MAX_FILTER_SIZE, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %94

45:                                               ; preds = %41
  %46 = load %struct.cxd2880_pid_filter_config*, %struct.cxd2880_pid_filter_config** %5, align 8
  %47 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  store i32 %53, i32* %8, align 4
  %54 = load %struct.cxd2880_pid_filter_config*, %struct.cxd2880_pid_filter_config** %5, align 8
  %55 = getelementptr inbounds %struct.cxd2880_pid_filter_config, %struct.cxd2880_pid_filter_config* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %45
  %64 = load i32, i32* %8, align 4
  %65 = ashr i32 %64, 8
  %66 = or i32 %65, 32
  %67 = load i32, i32* %7, align 4
  %68 = mul nsw i32 %67, 2
  %69 = add nsw i32 1, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 %70
  store i32 %66, i32* %71, align 4
  %72 = load i32, i32* %8, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %74, 2
  %76 = add nsw i32 2, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 %77
  store i32 %73, i32* %78, align 4
  br label %90

79:                                               ; preds = %45
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 2
  %82 = add nsw i32 1, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 %83
  store i32 0, i32* %84, align 4
  %85 = load i32, i32* %7, align 4
  %86 = mul nsw i32 %85, 2
  %87 = add nsw i32 2, %86
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 %88
  store i32 0, i32* %89, align 4
  br label %90

90:                                               ; preds = %79, %63
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %41

94:                                               ; preds = %41
  %95 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %96 = getelementptr inbounds [65 x i32], [65 x i32]* %6, i64 0, i64 0
  %97 = call i32 @cxd2880_write_reg(%struct.spi_device* %95, i32 80, i32* %96, i32 65)
  store i32 %97, i32* %9, align 4
  br label %98

98:                                               ; preds = %94, %28
  %99 = load i32, i32* %9, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %23, %12
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @cxd2880_write_reg(%struct.spi_device*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

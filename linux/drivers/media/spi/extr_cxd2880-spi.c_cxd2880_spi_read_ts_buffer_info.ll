; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_read_ts_buffer_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_read_ts_buffer_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.cxd2880_ts_buf_info = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"spi_write_then_read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, %struct.cxd2880_ts_buf_info*)* @cxd2880_spi_read_ts_buffer_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_spi_read_ts_buffer_info(%struct.spi_device* %0, %struct.cxd2880_ts_buf_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_device*, align 8
  %5 = alloca %struct.cxd2880_ts_buf_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %4, align 8
  store %struct.cxd2880_ts_buf_info* %1, %struct.cxd2880_ts_buf_info** %5, align 8
  store i32 32, i32* %6, align 4
  %9 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %10 = icmp ne %struct.spi_device* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %13 = icmp ne %struct.cxd2880_ts_buf_info* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %11, %2
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %77

18:                                               ; preds = %11
  %19 = load %struct.spi_device*, %struct.spi_device** %4, align 8
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %21 = call i32 @spi_write_then_read(%struct.spi_device* %19, i32* %6, i32 1, i32* %20, i32 8)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %18
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 128
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  %33 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %34 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 64
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  %41 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %42 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 1, i32 0
  %49 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %50 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 16
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 1, i32 0
  %57 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %58 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 8
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i32 1, i32 0
  %65 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %66 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 7
  %70 = shl i32 %69, 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %70, %72
  %74 = load %struct.cxd2880_ts_buf_info*, %struct.cxd2880_ts_buf_info** %5, align 8
  %75 = getelementptr inbounds %struct.cxd2880_ts_buf_info, %struct.cxd2880_ts_buf_info* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %26, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @spi_write_then_read(%struct.spi_device*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_read_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_spi_read_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"packet num > 0xffff\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"spi_write_then_read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32*, i32)* @cxd2880_spi_read_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_spi_read_ts(%struct.spi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.spi_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca %struct.spi_message, align 4
  %11 = alloca [2 x %struct.spi_transfer], align 16
  store %struct.spi_device* %0, %struct.spi_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = bitcast [2 x %struct.spi_transfer]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 48, i1 false)
  %13 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %14 = icmp ne %struct.spi_device* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18, %15, %3
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %64

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 65535
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %64

32:                                               ; preds = %25
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  store i32 16, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 8
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 1
  store i32 %35, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 2
  store i32 %37, i32* %38, align 4
  %39 = call i32 @spi_message_init(%struct.spi_message* %10)
  %40 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %41 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %40, i32 0, i32 0
  store i32 3, i32* %41, align 16
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %9, i64 0, i64 0
  %43 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 0
  %46 = call i32 @spi_message_add_tail(%struct.spi_transfer* %45, %struct.spi_message* %10)
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %47, 188
  %49 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %50 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 2
  store i32* %51, i32** %53, align 8
  %54 = getelementptr inbounds [2 x %struct.spi_transfer], [2 x %struct.spi_transfer]* %11, i64 0, i64 1
  %55 = call i32 @spi_message_add_tail(%struct.spi_transfer* %54, %struct.spi_message* %10)
  %56 = load %struct.spi_device*, %struct.spi_device** %5, align 8
  %57 = call i32 @spi_sync(%struct.spi_device* %56, %struct.spi_message* %10)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %32
  %61 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %62

62:                                               ; preds = %60, %32
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %28, %21
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @spi_sync(%struct.spi_device*, %struct.spi_message*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

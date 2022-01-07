; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_cxd2880-spi.c_cxd2880_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }

@BURST_WRITE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"invalid arg\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"data size > WRITE_MAX\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"write spi failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*, i32, i32*, i32)* @cxd2880_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxd2880_write_reg(%struct.spi_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* @BURST_WRITE_MAX, align 4
  %16 = add nsw i32 %15, 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %10, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %20 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %21 = icmp ne %struct.spi_device* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %4
  %23 = load i32*, i32** %8, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22, %4
  %26 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @BURST_WRITE_MAX, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @U8_MAX, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %33, %29
  %38 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

41:                                               ; preds = %33
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %42, %43
  %45 = icmp sgt i32 %44, 256
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

50:                                               ; preds = %41
  %51 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 14, i32* %51, align 16
  %52 = load i32*, i32** %8, align 8
  store i32* %52, i32** %12, align 8
  %53 = load i32, i32* %7, align 4
  %54 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds i32, i32* %19, i64 2
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds i32, i32* %19, i64 3
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %19, i64 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @memcpy(i32* %57, i32* %58, i32 %60)
  %62 = load %struct.spi_device*, %struct.spi_device** %6, align 8
  %63 = getelementptr inbounds i32, i32* %19, i64 2
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 3
  %66 = call i32 @cxd2880_write_spi(%struct.spi_device* %62, i32* %19, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %50
  %70 = load i32, i32* %13, align 4
  %71 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %69, %50
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %14, align 4
  br label %74

74:                                               ; preds = %72, %46, %37, %25
  %75 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @pr_err(i8*, ...) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @cxd2880_write_spi(%struct.spi_device*, i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

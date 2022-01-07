; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_msp_writereg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_msp_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"dvb-ttpci: failed @ card %d, %u = %u\0A\00", align 1
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msp_writereg(%struct.av7110* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.av7110*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [5 x i32], align 16
  %11 = alloca %struct.i2c_msg, align 8
  store %struct.av7110* %0, %struct.av7110** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  %13 = load i32, i32* %7, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* %8, align 4
  %16 = ashr i32 %15, 8
  store i32 %16, i32* %14, align 4
  %17 = getelementptr inbounds i32, i32* %14, i64 1
  %18 = load i32, i32* %8, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %17, align 4
  %20 = getelementptr inbounds i32, i32* %17, i64 1
  %21 = load i32, i32* %9, align 4
  %22 = ashr i32 %21, 8
  store i32 %22, i32* %20, align 4
  %23 = getelementptr inbounds i32, i32* %20, i64 1
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, 255
  store i32 %25, i32* %23, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 5, i32* %26, align 8
  %27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %10, i64 0, i64 0
  store i32* %28, i32** %27, align 8
  %29 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 0, i32* %30, align 4
  %31 = load %struct.av7110*, %struct.av7110** %6, align 8
  %32 = getelementptr inbounds %struct.av7110, %struct.av7110* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %4
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 64, i32* %35, align 8
  br label %39

36:                                               ; preds = %4
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i32 66, i32* %37, align 8
  br label %39

38:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %55

39:                                               ; preds = %36, %34
  %40 = load %struct.av7110*, %struct.av7110** %6, align 8
  %41 = getelementptr inbounds %struct.av7110, %struct.av7110* %40, i32 0, i32 2
  %42 = call i32 @i2c_transfer(i32* %41, %struct.i2c_msg* %11, i32 1)
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.av7110*, %struct.av7110** %6, align 8
  %46 = getelementptr inbounds %struct.av7110, %struct.av7110* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @dprintk(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49, i32 %50)
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %55

54:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %44, %38
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

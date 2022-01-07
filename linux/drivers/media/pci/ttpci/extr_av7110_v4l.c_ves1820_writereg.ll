; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_ves1820_writereg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_av7110_v4l.c_ves1820_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { %struct.av7110* }
%struct.av7110 = type { i32 }
%struct.i2c_msg = type { i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"dev: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, i32, i32, i32)* @ves1820_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_writereg(%struct.saa7146_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7146_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.av7110*, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca %struct.i2c_msg, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %14 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %13, i32 0, i32 0
  %15 = load %struct.av7110*, %struct.av7110** %14, align 8
  store %struct.av7110* %15, %struct.av7110** %10, align 8
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds i32, i32* %17, i64 1
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %21, align 8
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 1
  %24 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32* %24, i32** %23, align 8
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 2
  store i32 3, i32* %25, align 8
  %26 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %12, i32 0, i32 3
  store i32 0, i32* %26, align 4
  %27 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  %28 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.saa7146_dev* %27)
  %29 = load %struct.av7110*, %struct.av7110** %10, align 8
  %30 = getelementptr inbounds %struct.av7110, %struct.av7110* %29, i32 0, i32 0
  %31 = call i32 @i2c_transfer(i32* %30, %struct.i2c_msg* %12, i32 1)
  %32 = icmp ne i32 1, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %35

34:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @dprintk(i32, i8*, %struct.saa7146_dev*) #1

declare dso_local i32 @i2c_transfer(i32*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

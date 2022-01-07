; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_stream_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_st-mipid02.c_mipid02_stream_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mipid02_dev = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@MIPID02_CLK_LANE_REG1 = common dso_local global i32 0, align 4
@MIPID02_DATA_LANE0_REG1 = common dso_local global i32 0, align 4
@MIPID02_DATA_LANE1_REG1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"failed to stream off %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mipid02_dev*)* @mipid02_stream_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mipid02_stream_disable(%struct.mipid02_dev* %0) #0 {
  %2 = alloca %struct.mipid02_dev*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.mipid02_dev* %0, %struct.mipid02_dev** %2, align 8
  %5 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mipid02_dev, %struct.mipid02_dev* %5, i32 0, i32 0
  %7 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %9 = load i32, i32* @MIPID02_CLK_LANE_REG1, align 4
  %10 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %8, i32 %9, i32 0)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %16 = load i32, i32* @MIPID02_DATA_LANE0_REG1, align 4
  %17 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %15, i32 %16, i32 0)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %29

21:                                               ; preds = %14
  %22 = load %struct.mipid02_dev*, %struct.mipid02_dev** %2, align 8
  %23 = load i32, i32* @MIPID02_DATA_LANE1_REG1, align 4
  %24 = call i32 @mipid02_write_reg(%struct.mipid02_dev* %22, i32 %23, i32 0)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %29

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %27, %20, %13
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %33, i32 0, i32 0
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @mipid02_write_reg(%struct.mipid02_dev*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

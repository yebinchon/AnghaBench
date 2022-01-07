; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov13858.c_ov13858_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov13858.c_ov13858_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov13858 = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov13858*, i32, i32, i32*)* @ov13858_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov13858_read_reg(%struct.ov13858* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov13858*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ov13858* %0, %struct.ov13858** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.ov13858*, %struct.ov13858** %6, align 8
  %17 = getelementptr inbounds %struct.ov13858, %struct.ov13858* %16, i32 0, i32 0
  %18 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %17)
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  store i64 0, i64* %14, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @cpu_to_be16(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 4
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %75

26:                                               ; preds = %4
  %27 = bitcast i64* %14 to i32*
  store i32* %27, i32** %12, align 8
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 2
  store i64 0, i64* %34, align 16
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %36 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %35, i32 0, i32 0
  store i32 2, i32* %36, align 16
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 1
  store i32* %15, i32** %38, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %43 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 8
  %44 = load i64, i64* @I2C_M_RD, align 8
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 2
  store i64 %44, i64* %46, align 16
  %47 = load i32, i32* %8, align 4
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 16
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 4, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %56 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %55, i32 0, i32 1
  store i32* %54, i32** %56, align 8
  %57 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %58 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %61 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %62 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %61)
  %63 = call i32 @i2c_transfer(i32 %59, %struct.i2c_msg* %60, i32 %62)
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %13, align 4
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %65)
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %26
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %26
  %72 = load i64, i64* %14, align 8
  %73 = call i32 @be32_to_cpu(i64 %72)
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %68, %23
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

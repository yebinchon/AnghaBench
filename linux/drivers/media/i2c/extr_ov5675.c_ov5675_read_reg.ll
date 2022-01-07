; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov5675.c_ov5675_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov5675 = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov5675*, i32, i32, i32*)* @ov5675_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5675_read_reg(%struct.ov5675* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov5675*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca [2 x i32], align 4
  %13 = alloca [4 x i32], align 16
  %14 = alloca i32, align 4
  store %struct.ov5675* %0, %struct.ov5675** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.ov5675*, %struct.ov5675** %6, align 8
  %16 = getelementptr inbounds %struct.ov5675, %struct.ov5675* %15, i32 0, i32 0
  %17 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = bitcast [4 x i32]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 16, i1 false)
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %75

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %27 = call i32 @put_unaligned_be16(i32 %25, i32* %26)
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
  store i32 8, i32* %36, align 16
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %38 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  store i32* %37, i32** %39, align 8
  %40 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %44 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load i64, i64* @I2C_M_RD, align 8
  %46 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %47 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 16
  %48 = load i32, i32* %8, align 4
  %49 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %50 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 16
  %51 = load i32, i32* %8, align 4
  %52 = sub nsw i32 4, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 %53
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
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %66 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %65)
  %67 = icmp ne i32 %64, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %24
  %69 = load i32, i32* @EIO, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %24
  %72 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %73 = call i32 @get_unaligned_be32(i32* %72)
  %74 = load i32*, i32** %9, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %68, %21
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

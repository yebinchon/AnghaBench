; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx355 = type { i32 }
%struct.i2c_client = type { i32, i32 }
%struct.i2c_msg = type { i32, %struct.i2c_msg*, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@I2C_M_RD = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx355*, i32, i32, i32*)* @imx355_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx355_read_reg(%struct.imx355* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx355*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [2 x %struct.i2c_msg], align 16
  %12 = alloca [2 x %struct.i2c_msg], align 16
  %13 = alloca [4 x %struct.i2c_msg], align 16
  %14 = alloca i32, align 4
  store %struct.imx355* %0, %struct.imx355** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.imx355*, %struct.imx355** %6, align 8
  %16 = getelementptr inbounds %struct.imx355, %struct.imx355* %15, i32 0, i32 0
  %17 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %16)
  store %struct.i2c_client* %17, %struct.i2c_client** %10, align 8
  %18 = bitcast [4 x %struct.i2c_msg]* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 128, i1 false)
  %19 = load i32, i32* %8, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %77

24:                                               ; preds = %4
  %25 = load i32, i32* %7, align 4
  %26 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %27 = call i32 @put_unaligned_be16(i32 %25, %struct.i2c_msg* %26)
  %28 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %29 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %33, i32 0, i32 2
  store i64 0, i64* %34, align 16
  %35 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %36 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %35)
  %37 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %38 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 16
  %39 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %12, i64 0, i64 0
  %40 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %40, i32 0, i32 1
  store %struct.i2c_msg* %39, %struct.i2c_msg** %41, align 8
  %42 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %43 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %46 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @I2C_M_RD, align 8
  %48 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %49 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 16
  %50 = load i32, i32* %8, align 4
  %51 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 16
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 4, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [4 x %struct.i2c_msg], [4 x %struct.i2c_msg]* %13, i64 0, i64 %55
  %57 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 1
  %58 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %57, i32 0, i32 1
  store %struct.i2c_msg* %56, %struct.i2c_msg** %58, align 8
  %59 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %60 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %63 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %63)
  %65 = call i32 @i2c_transfer(i32 %61, %struct.i2c_msg* %62, i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = getelementptr inbounds [2 x %struct.i2c_msg], [2 x %struct.i2c_msg]* %11, i64 0, i64 0
  %68 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %67)
  %69 = icmp ne i32 %66, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %24
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %77

73:                                               ; preds = %24
  %74 = getelementptr inbounds [4 x %struct.i2c_msg], [4 x %struct.i2c_msg]* %13, i64 0, i64 0
  %75 = call i32 @get_unaligned_be32(%struct.i2c_msg* %74)
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %70, %21
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @put_unaligned_be16(i32, %struct.i2c_msg*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @get_unaligned_be32(%struct.i2c_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

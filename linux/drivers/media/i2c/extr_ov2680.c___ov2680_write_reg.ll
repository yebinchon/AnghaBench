; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c___ov2680_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c___ov2680_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"write error: reg=0x%4x: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*, i32, i32, i32)* @__ov2680_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ov2680_write_reg(%struct.ov2680_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov2680_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [6 x i32], align 16
  %12 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %14 = getelementptr inbounds %struct.ov2680_dev, %struct.ov2680_dev* %13, i32 0, i32 0
  %15 = load %struct.i2c_client*, %struct.i2c_client** %14, align 8
  store %struct.i2c_client* %15, %struct.i2c_client** %10, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ugt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %24 = call i32 @put_unaligned_be16(i32 %22, i32* %23)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub i32 4, %26
  %28 = mul i32 8, %27
  %29 = shl i32 %25, %28
  %30 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = call i32 @put_unaligned_be32(i32 %29, i32* %31)
  %33 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %34 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %35 = load i32, i32* %8, align 4
  %36 = add i32 %35, 2
  %37 = call i32 @i2c_master_send(%struct.i2c_client* %33, i32* %34, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 2
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %21
  %43 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %44 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %43, i32 0, i32 0
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %51

50:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %42, %18
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

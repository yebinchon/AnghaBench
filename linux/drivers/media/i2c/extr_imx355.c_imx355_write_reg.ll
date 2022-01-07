; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx355.c_imx355_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx355 = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx355*, i32, i32, i32)* @imx355_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx355_write_reg(%struct.imx355* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx355*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca [6 x i32], align 16
  store %struct.imx355* %0, %struct.imx355** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.imx355*, %struct.imx355** %6, align 8
  %13 = getelementptr inbounds %struct.imx355, %struct.imx355* %12, i32 0, i32 0
  %14 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %13)
  store %struct.i2c_client* %14, %struct.i2c_client** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp sgt i32 %15, 4
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %23 = call i32 @put_unaligned_be16(i32 %21, i32* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 4, %25
  %27 = mul nsw i32 8, %26
  %28 = shl i32 %24, %27
  %29 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = call i32 @put_unaligned_be32(i32 %28, i32* %30)
  %32 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %11, i64 0, i64 0
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 2
  %36 = call i32 @i2c_master_send(%struct.i2c_client* %32, i32* %33, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 2
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %20
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @put_unaligned_be16(i32, i32*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #1

declare dso_local i32 @i2c_master_send(%struct.i2c_client*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

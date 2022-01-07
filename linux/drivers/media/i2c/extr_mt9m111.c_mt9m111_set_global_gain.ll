; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_global_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_set_global_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { i32 }
%struct.i2c_client = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GLOBAL_GAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*, i32)* @mt9m111_set_global_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_set_global_gain(%struct.mt9m111* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt9m111*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mt9m111*, %struct.mt9m111** %4, align 8
  %9 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %8, i32 0, i32 0
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 252
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 128
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 252
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %5, align 4
  %24 = sdiv i32 %23, 4
  %25 = or i32 1536, %24
  store i32 %25, i32* %7, align 4
  br label %39

26:                                               ; preds = %19, %16
  %27 = load i32, i32* %5, align 4
  %28 = icmp sge i32 %27, 64
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 128
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = sdiv i32 %33, 2
  %35 = or i32 512, %34
  store i32 %35, i32* %7, align 4
  br label %38

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %36, %32
  br label %39

39:                                               ; preds = %38, %22
  %40 = load i32, i32* @GLOBAL_GAIN, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @reg_write(i32 %40, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @reg_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

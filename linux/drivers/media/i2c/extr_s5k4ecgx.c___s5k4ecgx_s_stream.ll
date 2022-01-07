; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_s_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c___s5k4ecgx_s_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k4ecgx = type { i64, i32 }
%struct.i2c_client = type { i32 }

@REG_G_ENABLE_PREV = common dso_local global i32 0, align 4
@REG_G_ENABLE_PREV_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k4ecgx*, i32)* @__s5k4ecgx_s_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k4ecgx_s_stream(%struct.s5k4ecgx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.s5k4ecgx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  store %struct.s5k4ecgx* %0, %struct.s5k4ecgx** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %4, align 8
  %9 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %8, i32 0, i32 1
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %4, align 8
  %15 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %4, align 8
  %20 = call i32 @__s5k4ecgx_s_params(%struct.s5k4ecgx* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %41

25:                                               ; preds = %18
  %26 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %4, align 8
  %27 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %25, %13, %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = load i32, i32* @REG_G_ENABLE_PREV, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @s5k4ecgx_write(%struct.i2c_client* %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %39 = load i32, i32* @REG_G_ENABLE_PREV_CHG, align 4
  %40 = call i32 @s5k4ecgx_write(%struct.i2c_client* %38, i32 %39, i32 1)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35, %23
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @__s5k4ecgx_s_params(%struct.s5k4ecgx*) #1

declare dso_local i32 @s5k4ecgx_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

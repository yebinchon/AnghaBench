; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_set_output_framefmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k4ecgx.c_s5k4ecgx_set_output_framefmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k4ecgx = type { %struct.TYPE_4__*, %struct.TYPE_6__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k4ecgx*)* @s5k4ecgx_set_output_framefmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k4ecgx_set_output_framefmt(%struct.s5k4ecgx* %0) #0 {
  %2 = alloca %struct.s5k4ecgx*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca i32, align 4
  store %struct.s5k4ecgx* %0, %struct.s5k4ecgx** %2, align 8
  %5 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %6 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %5, i32 0, i32 2
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %3, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = call i32 @REG_P_OUT_WIDTH(i32 0)
  %10 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %11 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %10, i32 0, i32 1
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @s5k4ecgx_write(%struct.i2c_client* %8, i32 %9, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %21 = call i32 @REG_P_OUT_HEIGHT(i32 0)
  %22 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %23 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @s5k4ecgx_write(%struct.i2c_client* %20, i32 %21, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %19, %1
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = call i32 @REG_P_FMT(i32 0)
  %35 = load %struct.s5k4ecgx*, %struct.s5k4ecgx** %2, align 8
  %36 = getelementptr inbounds %struct.s5k4ecgx, %struct.s5k4ecgx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @s5k4ecgx_write(%struct.i2c_client* %33, i32 %34, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %32, %29
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k4ecgx_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @REG_P_OUT_WIDTH(i32) #1

declare dso_local i32 @REG_P_OUT_HEIGHT(i32) #1

declare dso_local i32 @REG_P_FMT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

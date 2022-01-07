; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_get_cx2388x_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-core.c_get_cx2388x_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

@CX23885_AV = common dso_local global i32 0, align 4
@CX23887_AV = common dso_local global i32 0, align 4
@CX23888_AV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to detect h/w, assuming cx23887\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @get_cx2388x_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_cx2388x_ident(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @cx25840_write(%struct.i2c_client* %4, i32 0, i32 0)
  %6 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %7 = call i32 @cx25840_read4(%struct.i2c_client* %6, i32 516)
  %8 = and i32 %7, 65535
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = call i32 @cx25840_read4(%struct.i2c_client* %11, i32 768)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, -65536
  %15 = lshr i32 %14, 16
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 65535
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = load i32, i32* @CX23885_AV, align 4
  store i32 %20, i32* %3, align 4
  br label %23

21:                                               ; preds = %10
  %22 = load i32, i32* @CX23887_AV, align 4
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %21, %19
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %26 = call i32 @cx25840_read4(%struct.i2c_client* %25, i32 768)
  %27 = and i32 %26, 268435455
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @CX23888_AV, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %33 = call i32 @v4l_err(%struct.i2c_client* %32, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @CX23887_AV, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %29
  br label %36

36:                                               ; preds = %35, %23
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = call i32 @cx25840_write(%struct.i2c_client* %37, i32 0, i32 2)
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @cx25840_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @cx25840_read4(%struct.i2c_client*, i32) #1

declare dso_local i32 @v4l_err(%struct.i2c_client*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rj54n1 = type { i32, i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rj54n1_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rj54n1*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %4)
  store %struct.rj54n1* %5, %struct.rj54n1** %3, align 8
  %6 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %7 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %12 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = call i32 @gpiod_put(i64 %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %17 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %22 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @gpiod_put(i64 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %27 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_put(i32 %28)
  %30 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %31 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %30, i32 0, i32 1
  %32 = call i32 @v4l2_ctrl_handler_free(i32* %31)
  %33 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %34 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %33, i32 0, i32 0
  %35 = call i32 @v4l2_async_unregister_subdev(i32* %34)
  ret i32 0
}

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

declare dso_local i32 @gpiod_put(i64) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_async_unregister_subdev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

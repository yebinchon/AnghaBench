; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov772x.c_ov772x_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.ov772x_priv = type { i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov772x_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov772x_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.ov772x_priv*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %4 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %5 = call i32 @i2c_get_clientdata(%struct.i2c_client* %4)
  %6 = call %struct.ov772x_priv* @to_ov772x(i32 %5)
  store %struct.ov772x_priv* %6, %struct.ov772x_priv** %3, align 8
  %7 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @media_entity_cleanup(i32* %9)
  %11 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_put(i32 %13)
  %15 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpiod_put(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %25, i32 0, i32 2
  %27 = call i32 @v4l2_async_unregister_subdev(%struct.TYPE_2__* %26)
  %28 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %29 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %28, i32 0, i32 1
  %30 = call i32 @v4l2_ctrl_handler_free(i32* %29)
  %31 = load %struct.ov772x_priv*, %struct.ov772x_priv** %3, align 8
  %32 = getelementptr inbounds %struct.ov772x_priv, %struct.ov772x_priv* %31, i32 0, i32 0
  %33 = call i32 @mutex_destroy(i32* %32)
  ret i32 0
}

declare dso_local %struct.ov772x_priv* @to_ov772x(i32) #1

declare dso_local i32 @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @clk_put(i32) #1

declare dso_local i32 @gpiod_put(i64) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.TYPE_2__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

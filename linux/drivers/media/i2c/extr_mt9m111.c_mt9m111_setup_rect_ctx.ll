; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_setup_rect_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_setup_rect_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { i32 }
%struct.mt9m111_context = type { i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9m111*, %struct.mt9m111_context*, %struct.v4l2_rect*, i32, i32)* @mt9m111_setup_rect_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9m111_setup_rect_ctx(%struct.mt9m111* %0, %struct.mt9m111_context* %1, %struct.v4l2_rect* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mt9m111*, align 8
  %7 = alloca %struct.mt9m111_context*, align 8
  %8 = alloca %struct.v4l2_rect*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.i2c_client*, align 8
  %12 = alloca i32, align 4
  store %struct.mt9m111* %0, %struct.mt9m111** %6, align 8
  store %struct.mt9m111_context* %1, %struct.mt9m111_context** %7, align 8
  store %struct.v4l2_rect* %2, %struct.v4l2_rect** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.mt9m111*, %struct.mt9m111** %6, align 8
  %14 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %13, i32 0, i32 0
  %15 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %14)
  store %struct.i2c_client* %15, %struct.i2c_client** %11, align 8
  %16 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %17 = load %struct.mt9m111_context*, %struct.mt9m111_context** %7, align 8
  %18 = getelementptr inbounds %struct.mt9m111_context, %struct.mt9m111_context* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %21 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mt9m111_reg_write(%struct.i2c_client* %16, i32 %19, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %5
  %27 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %28 = load %struct.mt9m111_context*, %struct.mt9m111_context** %7, align 8
  %29 = getelementptr inbounds %struct.mt9m111_context, %struct.mt9m111_context* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.v4l2_rect*, %struct.v4l2_rect** %8, align 8
  %32 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mt9m111_reg_write(%struct.i2c_client* %27, i32 %30, i32 %33)
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %26, %5
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %35
  %39 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %40 = load %struct.mt9m111_context*, %struct.mt9m111_context** %7, align 8
  %41 = getelementptr inbounds %struct.mt9m111_context, %struct.mt9m111_context* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @mt9m111_reg_write(%struct.i2c_client* %39, i32 %42, i32 %43)
  store i32 %44, i32* %12, align 4
  br label %45

45:                                               ; preds = %38, %35
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %45
  %49 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  %50 = load %struct.mt9m111_context*, %struct.mt9m111_context** %7, align 8
  %51 = getelementptr inbounds %struct.mt9m111_context, %struct.mt9m111_context* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @mt9m111_reg_write(%struct.i2c_client* %49, i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %48, %45
  %56 = load i32, i32* %12, align 4
  ret i32 %56
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9m111_reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

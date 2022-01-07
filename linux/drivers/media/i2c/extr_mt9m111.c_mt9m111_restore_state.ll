; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_restore_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9m111.c_mt9m111_restore_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9m111 = type { %struct.TYPE_5__*, %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt9m111*)* @mt9m111_restore_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt9m111_restore_state(%struct.mt9m111* %0) #0 {
  %2 = alloca %struct.mt9m111*, align 8
  %3 = alloca %struct.i2c_client*, align 8
  store %struct.mt9m111* %0, %struct.mt9m111** %2, align 8
  %4 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %5 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %4, i32 0, i32 7
  %6 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %5)
  store %struct.i2c_client* %6, %struct.i2c_client** %3, align 8
  %7 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %8 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %9 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %8, i32 0, i32 1
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = call i32 @mt9m111_set_context(%struct.mt9m111* %7, %struct.TYPE_6__* %10)
  %12 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %13 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %14 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %13, i32 0, i32 3
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mt9m111_set_pixfmt(%struct.mt9m111* %12, i32 %17)
  %19 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %20 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %21 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %20, i32 0, i32 6
  %22 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %23 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %26 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %29 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %28, i32 0, i32 3
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mt9m111_setup_geometry(%struct.mt9m111* %19, i32* %21, i32 %24, i32 %27, i32 %32)
  %34 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %35 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %34, i32 0, i32 2
  %36 = call i32 @v4l2_ctrl_handler_setup(i32* %35)
  %37 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %38 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %39 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %44 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mt9m111*, %struct.mt9m111** %2, align 8
  %49 = getelementptr inbounds %struct.mt9m111, %struct.mt9m111* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mt9m111_reg_mask(%struct.i2c_client* %37, i32 %42, i32 %47, i32 %52)
  ret void
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9m111_set_context(%struct.mt9m111*, %struct.TYPE_6__*) #1

declare dso_local i32 @mt9m111_set_pixfmt(%struct.mt9m111*, i32) #1

declare dso_local i32 @mt9m111_setup_geometry(%struct.mt9m111*, i32*, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(i32*) #1

declare dso_local i32 @mt9m111_reg_mask(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

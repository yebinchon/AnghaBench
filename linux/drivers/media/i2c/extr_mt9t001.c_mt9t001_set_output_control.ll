; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_set_output_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9t001.c_mt9t001_set_output_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9t001 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@MT9T001_OUTPUT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9t001*, i32, i32)* @mt9t001_set_output_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t001_set_output_control(%struct.mt9t001* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt9t001*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.i2c_client*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mt9t001* %0, %struct.mt9t001** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mt9t001*, %struct.mt9t001** %5, align 8
  %12 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %11, i32 0, i32 1
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %8, align 8
  %14 = load %struct.mt9t001*, %struct.mt9t001** %5, align 8
  %15 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.mt9t001*, %struct.mt9t001** %5, align 8
  %24 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load %struct.i2c_client*, %struct.i2c_client** %8, align 8
  %30 = load i32, i32* @MT9T001_OUTPUT_CONTROL, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @mt9t001_write(%struct.i2c_client* %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %41

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.mt9t001*, %struct.mt9t001** %5, align 8
  %40 = getelementptr inbounds %struct.mt9t001, %struct.mt9t001* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %35, %27
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9t001_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_set_scale.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tw9910.c_tw9910_set_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.tw9910_scale_ctrl = type { i32, i32 }

@SCALE_HI = common dso_local global i32 0, align 4
@HSCALE_LO = common dso_local global i32 0, align 4
@VSCALE_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.tw9910_scale_ctrl*)* @tw9910_set_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw9910_set_scale(%struct.i2c_client* %0, %struct.tw9910_scale_ctrl* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.tw9910_scale_ctrl*, align 8
  %6 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.tw9910_scale_ctrl* %1, %struct.tw9910_scale_ctrl** %5, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %8 = load i32, i32* @SCALE_HI, align 4
  %9 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %5, align 8
  %10 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, 3840
  %13 = ashr i32 %12, 4
  %14 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %5, align 8
  %15 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = and i32 %16, 3840
  %18 = ashr i32 %17, 8
  %19 = or i32 %13, %18
  %20 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %7, i32 %8, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %46

25:                                               ; preds = %2
  %26 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %27 = load i32, i32* @HSCALE_LO, align 4
  %28 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %5, align 8
  %29 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 255
  %32 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %26, i32 %27, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %46

37:                                               ; preds = %25
  %38 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %39 = load i32, i32* @VSCALE_LO, align 4
  %40 = load %struct.tw9910_scale_ctrl*, %struct.tw9910_scale_ctrl** %5, align 8
  %41 = getelementptr inbounds %struct.tw9910_scale_ctrl, %struct.tw9910_scale_ctrl* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 255
  %44 = call i32 @i2c_smbus_write_byte_data(%struct.i2c_client* %38, i32 %39, i32 %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %37, %35, %23
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @i2c_smbus_write_byte_data(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

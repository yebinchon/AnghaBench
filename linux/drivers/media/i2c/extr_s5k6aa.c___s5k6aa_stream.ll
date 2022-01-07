; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c___s5k6aa_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c___s5k6aa_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i32, i32 }
%struct.i2c_client = type { i32 }

@REG_G_ENABLE_PREV = common dso_local global i32 0, align 4
@REG_G_ENABLE_PREV_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, i32)* @__s5k6aa_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__s5k6aa_stream(%struct.s5k6aa* %0, i32 %1) #0 {
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %8 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %7, i32 0, i32 1
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = load i32, i32* @REG_G_ENABLE_PREV, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @s5k6aa_write(%struct.i2c_client* %10, i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %18 = load i32, i32* @REG_G_ENABLE_PREV_CHG, align 4
  %19 = call i32 @s5k6aa_write(%struct.i2c_client* %17, i32 %18, i32 1)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %26 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %20
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

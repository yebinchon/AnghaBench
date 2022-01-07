; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_mirror.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_set_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i32, i32, %struct.TYPE_6__, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.i2c_client = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*, i32)* @s5k6aa_set_mirror to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_set_mirror(%struct.s5k6aa* %0, i32 %1) #0 {
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %10 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %9, i32 0, i32 4
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %5, align 8
  %12 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %13 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %18 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %24 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = xor i32 %22, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %29 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = xor i32 %27, %30
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 1
  %34 = or i32 %31, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @REG_P_PREV_MIRROR(i32 %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @s5k6aa_write(%struct.i2c_client* %35, i32 %37, i32 %38)
  ret i32 %39
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @REG_P_PREV_MIRROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

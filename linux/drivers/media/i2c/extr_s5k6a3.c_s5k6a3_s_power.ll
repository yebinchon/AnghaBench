; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6a3.c_s5k6a3_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.s5k6a3 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @s5k6a3_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6a3_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.s5k6a3*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.s5k6a3* @sd_to_s5k6a3(%struct.v4l2_subdev* %7)
  store %struct.s5k6a3* %8, %struct.s5k6a3** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %10 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %13 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %42

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %25 = call i32 @__s5k6a3_power_on(%struct.s5k6a3* %24)
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %28 = call i32 @__s5k6a3_power_off(%struct.s5k6a3* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 1, i32 -1
  %37 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %38 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %32, %29
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.s5k6a3*, %struct.s5k6a3** %5, align 8
  %44 = getelementptr inbounds %struct.s5k6a3, %struct.s5k6a3* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local %struct.s5k6a3* @sd_to_s5k6a3(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__s5k6a3_power_on(%struct.s5k6a3*) #1

declare dso_local i32 @__s5k6a3_power_off(%struct.s5k6a3*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

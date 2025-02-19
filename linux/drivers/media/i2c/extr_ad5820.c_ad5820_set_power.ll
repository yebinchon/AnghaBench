; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad5820.c_ad5820_set_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad5820.c_ad5820_set_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.ad5820_device = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ad5820_set_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5820_set_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ad5820_device*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.ad5820_device* @to_ad5820_device(%struct.v4l2_subdev* %7)
  store %struct.ad5820_device* %8, %struct.ad5820_device** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %10 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %9, i32 0, i32 1
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %13 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = icmp eq i32 %14, %18
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %25 = call i32 @ad5820_power_on(%struct.ad5820_device* %24, i32 1)
  br label %29

26:                                               ; preds = %20
  %27 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %28 = call i32 @ad5820_power_off(%struct.ad5820_device* %27, i32 1)
  br label %29

29:                                               ; preds = %26, %23
  %30 = phi i32 [ %25, %23 ], [ %28, %26 ]
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  br label %50

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %2
  %36 = load i32, i32* %4, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 -1
  %40 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %41 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %45 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @WARN_ON(i32 %48)
  br label %50

50:                                               ; preds = %35, %33
  %51 = load %struct.ad5820_device*, %struct.ad5820_device** %5, align 8
  %52 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %51, i32 0, i32 1
  %53 = call i32 @mutex_unlock(i32* %52)
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local %struct.ad5820_device* @to_ad5820_device(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ad5820_power_on(%struct.ad5820_device*, i32) #1

declare dso_local i32 @ad5820_power_off(%struct.ad5820_device*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_rewrite_i2c_addresses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_adv7842.c_adv7842_rewrite_i2c_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.adv7842_platform_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_subdev*, %struct.adv7842_platform_data*)* @adv7842_rewrite_i2c_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv7842_rewrite_i2c_addresses(%struct.v4l2_subdev* %0, %struct.adv7842_platform_data* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.adv7842_platform_data*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.adv7842_platform_data* %1, %struct.adv7842_platform_data** %4, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %6 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %7 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = shl i32 %8, 1
  %10 = call i32 @io_write(%struct.v4l2_subdev* %5, i32 241, i32 %9)
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %12 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %13 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 1
  %16 = call i32 @io_write(%struct.v4l2_subdev* %11, i32 242, i32 %15)
  %17 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %18 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %19 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 1
  %22 = call i32 @io_write(%struct.v4l2_subdev* %17, i32 243, i32 %21)
  %23 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %24 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 1
  %28 = call i32 @io_write(%struct.v4l2_subdev* %23, i32 244, i32 %27)
  %29 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %30 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = call i32 @io_write(%struct.v4l2_subdev* %29, i32 245, i32 %33)
  %35 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %36 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %37 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = shl i32 %38, 1
  %40 = call i32 @io_write(%struct.v4l2_subdev* %35, i32 248, i32 %39)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %42 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 1
  %46 = call i32 @io_write(%struct.v4l2_subdev* %41, i32 249, i32 %45)
  %47 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %48 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 1
  %52 = call i32 @io_write(%struct.v4l2_subdev* %47, i32 250, i32 %51)
  %53 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %54 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %55 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 1
  %58 = call i32 @io_write(%struct.v4l2_subdev* %53, i32 251, i32 %57)
  %59 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %60 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %61 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 1
  %64 = call i32 @io_write(%struct.v4l2_subdev* %59, i32 253, i32 %63)
  %65 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %66 = load %struct.adv7842_platform_data*, %struct.adv7842_platform_data** %4, align 8
  %67 = getelementptr inbounds %struct.adv7842_platform_data, %struct.adv7842_platform_data* %66, i32 0, i32 10
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 1
  %70 = call i32 @io_write(%struct.v4l2_subdev* %65, i32 254, i32 %69)
  ret void
}

declare dso_local i32 @io_write(%struct.v4l2_subdev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

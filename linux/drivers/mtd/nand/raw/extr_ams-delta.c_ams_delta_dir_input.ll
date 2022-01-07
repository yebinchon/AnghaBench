; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ams-delta.c_ams_delta_dir_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_ams-delta.c_ams_delta_dir_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ams_delta_nand = type { i32, %struct.gpio_descs* }
%struct.gpio_descs = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ams_delta_nand*)* @ams_delta_dir_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ams_delta_dir_input(%struct.ams_delta_nand* %0) #0 {
  %2 = alloca %struct.ams_delta_nand*, align 8
  %3 = alloca %struct.gpio_descs*, align 8
  %4 = alloca i32, align 4
  store %struct.ams_delta_nand* %0, %struct.ams_delta_nand** %2, align 8
  %5 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %2, align 8
  %6 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %5, i32 0, i32 1
  %7 = load %struct.gpio_descs*, %struct.gpio_descs** %6, align 8
  store %struct.gpio_descs* %7, %struct.gpio_descs** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.gpio_descs*, %struct.gpio_descs** %3, align 8
  %11 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.gpio_descs*, %struct.gpio_descs** %3, align 8
  %16 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpiod_direction_input(i32 %21)
  br label %23

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load %struct.ams_delta_nand*, %struct.ams_delta_nand** %2, align 8
  %28 = getelementptr inbounds %struct.ams_delta_nand, %struct.ams_delta_nand* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  ret void
}

declare dso_local i32 @gpiod_direction_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

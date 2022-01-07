; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_pm800_pages_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm800.c_pm800_pages_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm80x_chip = type { %struct.pm80x_subchip* }
%struct.pm80x_subchip = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm80x_chip*)* @pm800_pages_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm800_pages_exit(%struct.pm80x_chip* %0) #0 {
  %2 = alloca %struct.pm80x_chip*, align 8
  %3 = alloca %struct.pm80x_subchip*, align 8
  store %struct.pm80x_chip* %0, %struct.pm80x_chip** %2, align 8
  %4 = load %struct.pm80x_chip*, %struct.pm80x_chip** %2, align 8
  %5 = getelementptr inbounds %struct.pm80x_chip, %struct.pm80x_chip* %4, i32 0, i32 0
  %6 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %5, align 8
  store %struct.pm80x_subchip* %6, %struct.pm80x_subchip** %3, align 8
  %7 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %3, align 8
  %8 = icmp ne %struct.pm80x_subchip* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %3, align 8
  %11 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %3, align 8
  %16 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @i2c_unregister_device(i64 %17)
  br label %19

19:                                               ; preds = %14, %9, %1
  %20 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %3, align 8
  %21 = icmp ne %struct.pm80x_subchip* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %3, align 8
  %24 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %22
  %28 = load %struct.pm80x_subchip*, %struct.pm80x_subchip** %3, align 8
  %29 = getelementptr inbounds %struct.pm80x_subchip, %struct.pm80x_subchip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @i2c_unregister_device(i64 %30)
  br label %32

32:                                               ; preds = %27, %22, %19
  ret void
}

declare dso_local i32 @i2c_unregister_device(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

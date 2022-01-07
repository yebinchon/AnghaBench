; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_poweroff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_poweroff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32, i32)* }

@CTRL_REG1 = common dso_local global i32 0, align 4
@LIS3_REG_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lis3lv02d_poweroff(%struct.lis3lv02d* %0) #0 {
  %2 = alloca %struct.lis3lv02d*, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %2, align 8
  %3 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %4 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %3, i32 0, i32 0
  %5 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %4, align 8
  %6 = icmp ne i32 (%struct.lis3lv02d*, i32)* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %9 = call i32 @lis3_context_save(%struct.lis3lv02d* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %12 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %11, i32 0, i32 1
  %13 = load i32 (%struct.lis3lv02d*, i32, i32)*, i32 (%struct.lis3lv02d*, i32, i32)** %12, align 8
  %14 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %15 = load i32, i32* @CTRL_REG1, align 4
  %16 = call i32 %13(%struct.lis3lv02d* %14, i32 %15, i32 0)
  %17 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %18 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %17, i32 0, i32 0
  %19 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.lis3lv02d*, i32)* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %10
  %22 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %23 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %22, i32 0, i32 0
  %24 = load i32 (%struct.lis3lv02d*, i32)*, i32 (%struct.lis3lv02d*, i32)** %23, align 8
  %25 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %26 = load i32, i32* @LIS3_REG_OFF, align 4
  %27 = call i32 %24(%struct.lis3lv02d* %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %10
  ret void
}

declare dso_local i32 @lis3_context_save(%struct.lis3lv02d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

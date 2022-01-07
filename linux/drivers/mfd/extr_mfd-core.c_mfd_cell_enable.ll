; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_mfd_cell_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_mfd-core.c_mfd_cell_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mfd_cell = type { i32 (%struct.platform_device*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfd_cell_enable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mfd_cell*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mfd_cell* @mfd_get_cell(%struct.platform_device* %5)
  store %struct.mfd_cell* %6, %struct.mfd_cell** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %8 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @atomic_inc_return(i32 %9)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %14 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %13, i32 0, i32 0
  %15 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %14, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %17 = call i32 %15(%struct.platform_device* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %18
  %22 = load %struct.mfd_cell*, %struct.mfd_cell** %3, align 8
  %23 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @atomic_dec(i32 %24)
  br label %26

26:                                               ; preds = %21, %18
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.mfd_cell* @mfd_get_cell(%struct.platform_device*) #1

declare dso_local i32 @atomic_inc_return(i32) #1

declare dso_local i32 @atomic_dec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

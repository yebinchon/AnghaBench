; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_read_flash_descriptor_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_read_flash_descriptor_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@QLCNIC_FDT_LOCATION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_read_flash_descriptor_table(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 4, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = sext i32 %7 to i64
  %9 = udiv i64 %8, 4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %12 = call i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %25 = load i32, i32* @QLCNIC_FDT_LOCATION, align 4
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter* %24, i32 %25, i32* %29, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @qlcnic_swap32_buffer(i32* %35, i32 %36)
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = call i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter* %38)
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %17, %14
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i64 @qlcnic_83xx_lock_flash(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_lockless_flash_read32(%struct.qlcnic_adapter*, i32, i32*, i32) #1

declare dso_local i32 @qlcnic_swap32_buffer(i32*, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_flash(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_register_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_abx500-core.c_abx500_register_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.abx500_ops = type { i32 }
%struct.abx500_device_entry = type { i32, i32, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@abx500_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @abx500_register_ops(%struct.device* %0, %struct.abx500_ops* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.abx500_ops*, align 8
  %6 = alloca %struct.abx500_device_entry*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.abx500_ops* %1, %struct.abx500_ops** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.abx500_device_entry* @devm_kzalloc(%struct.device* %7, i32 16, i32 %8)
  store %struct.abx500_device_entry* %9, %struct.abx500_device_entry** %6, align 8
  %10 = load %struct.abx500_device_entry*, %struct.abx500_device_entry** %6, align 8
  %11 = icmp ne %struct.abx500_device_entry* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %26

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load %struct.abx500_device_entry*, %struct.abx500_device_entry** %6, align 8
  %18 = getelementptr inbounds %struct.abx500_device_entry, %struct.abx500_device_entry* %17, i32 0, i32 2
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.abx500_device_entry*, %struct.abx500_device_entry** %6, align 8
  %20 = getelementptr inbounds %struct.abx500_device_entry, %struct.abx500_device_entry* %19, i32 0, i32 1
  %21 = load %struct.abx500_ops*, %struct.abx500_ops** %5, align 8
  %22 = call i32 @memcpy(i32* %20, %struct.abx500_ops* %21, i32 4)
  %23 = load %struct.abx500_device_entry*, %struct.abx500_device_entry** %6, align 8
  %24 = getelementptr inbounds %struct.abx500_device_entry, %struct.abx500_device_entry* %23, i32 0, i32 0
  %25 = call i32 @list_add_tail(i32* %24, i32* @abx500_list)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %15, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.abx500_device_entry* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.abx500_ops*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

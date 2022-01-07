; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_is_device_va.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_debugfs.c_hl_is_device_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i64, i32, %struct.asic_fixed_properties }
%struct.asic_fixed_properties = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hl_device*, i64)* @hl_is_device_va to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hl_is_device_va(%struct.hl_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hl_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.asic_fixed_properties*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %8 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %7, i32 0, i32 2
  store %struct.asic_fixed_properties* %8, %struct.asic_fixed_properties** %6, align 8
  %9 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %10 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %46

14:                                               ; preds = %2
  %15 = load %struct.hl_device*, %struct.hl_device** %4, align 8
  %16 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %22 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %28 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %47

32:                                               ; preds = %25, %19, %14
  %33 = load i64, i64* %5, align 8
  %34 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %35 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp sge i64 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.asic_fixed_properties*, %struct.asic_fixed_properties** %6, align 8
  %41 = getelementptr inbounds %struct.asic_fixed_properties, %struct.asic_fixed_properties* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %47

45:                                               ; preds = %38, %32
  br label %46

46:                                               ; preds = %45, %13
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %31
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

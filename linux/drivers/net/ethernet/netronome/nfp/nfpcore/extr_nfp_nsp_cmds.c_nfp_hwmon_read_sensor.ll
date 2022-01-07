; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_cmds.c_nfp_hwmon_read_sensor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_cmds.c_nfp_hwmon_read_sensor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_sensors = type { i32, i32, i32, i32 }
%struct.nfp_nsp = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_hwmon_read_sensor(%struct.nfp_cpp* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca %struct.nfp_sensors, align 4
  %9 = alloca %struct.nfp_nsp*, align 8
  %10 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %11 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %12 = call %struct.nfp_nsp* @nfp_nsp_open(%struct.nfp_cpp* %11)
  store %struct.nfp_nsp* %12, %struct.nfp_nsp** %9, align 8
  %13 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %14 = call i64 @IS_ERR(%struct.nfp_nsp* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %18 = call i32 @PTR_ERR(%struct.nfp_nsp* %17)
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %3
  %20 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @BIT(i32 %21)
  %23 = call i32 @nfp_nsp_read_sensors(%struct.nfp_nsp* %20, i32 %22, %struct.nfp_sensors* %8, i32 16)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.nfp_nsp*, %struct.nfp_nsp** %9, align 8
  %25 = call i32 @nfp_nsp_close(%struct.nfp_nsp* %24)
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %56

30:                                               ; preds = %19
  %31 = load i32, i32* %6, align 4
  switch i32 %31, label %52 [
    i32 128, label %32
    i32 129, label %37
    i32 131, label %42
    i32 130, label %47
  ]

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.nfp_sensors, %struct.nfp_sensors* %8, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = load i64*, i64** %7, align 8
  store i64 %35, i64* %36, align 8
  br label %55

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct.nfp_sensors, %struct.nfp_sensors* %8, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le32_to_cpu(i32 %39)
  %41 = load i64*, i64** %7, align 8
  store i64 %40, i64* %41, align 8
  br label %55

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.nfp_sensors, %struct.nfp_sensors* %8, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @le32_to_cpu(i32 %44)
  %46 = load i64*, i64** %7, align 8
  store i64 %45, i64* %46, align 8
  br label %55

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.nfp_sensors, %struct.nfp_sensors* %8, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32_to_cpu(i32 %49)
  %51 = load i64*, i64** %7, align 8
  store i64 %50, i64* %51, align 8
  br label %55

52:                                               ; preds = %30
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %47, %42, %37, %32
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %52, %28, %16
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.nfp_nsp* @nfp_nsp_open(%struct.nfp_cpp*) #1

declare dso_local i64 @IS_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @PTR_ERR(%struct.nfp_nsp*) #1

declare dso_local i32 @nfp_nsp_read_sensors(%struct.nfp_nsp*, i32, %struct.nfp_sensors*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @nfp_nsp_close(%struct.nfp_nsp*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

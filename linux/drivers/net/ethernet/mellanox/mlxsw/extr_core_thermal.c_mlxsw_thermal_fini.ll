; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal = type { %struct.TYPE_2__*, i32**, i32* }
%struct.TYPE_2__ = type { i32 }

@MLXSW_MFCR_PWMS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_thermal_fini(%struct.mlxsw_thermal* %0) #0 {
  %2 = alloca %struct.mlxsw_thermal*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_thermal* %0, %struct.mlxsw_thermal** %2, align 8
  %4 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %5 = call i32 @mlxsw_thermal_gearboxes_fini(%struct.mlxsw_thermal* %4)
  %6 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %7 = call i32 @mlxsw_thermal_modules_fini(%struct.mlxsw_thermal* %6)
  %8 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %9 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %14 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @thermal_zone_device_unregister(i32* %15)
  %17 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %18 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  br label %19

19:                                               ; preds = %12, %1
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %49, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @MLXSW_MFCR_PWMS_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %26 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %25, i32 0, i32 1
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %48

33:                                               ; preds = %24
  %34 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %35 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %34, i32 0, i32 1
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @thermal_cooling_device_unregister(i32* %40)
  %42 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %43 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %42, i32 0, i32 1
  %44 = load i32**, i32*** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32*, i32** %44, i64 %46
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %33, %24
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %3, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %3, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %54 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %59 = call i32 @devm_kfree(i32 %57, %struct.mlxsw_thermal* %58)
  ret void
}

declare dso_local i32 @mlxsw_thermal_gearboxes_fini(%struct.mlxsw_thermal*) #1

declare dso_local i32 @mlxsw_thermal_modules_fini(%struct.mlxsw_thermal*) #1

declare dso_local i32 @thermal_zone_device_unregister(i32*) #1

declare dso_local i32 @thermal_cooling_device_unregister(i32*) #1

declare dso_local i32 @devm_kfree(i32, %struct.mlxsw_thermal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_gearboxes_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_core_thermal.c_mlxsw_thermal_gearboxes_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_thermal = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_thermal*)* @mlxsw_thermal_gearboxes_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_thermal_gearboxes_fini(%struct.mlxsw_thermal* %0) #0 {
  %2 = alloca %struct.mlxsw_thermal*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_thermal* %0, %struct.mlxsw_thermal** %2, align 8
  %4 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %5 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @mlxsw_core_res_query_enabled(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %26, %10
  %16 = load i32, i32* %3, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %15
  %19 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %20 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @mlxsw_thermal_gearbox_tz_fini(i32* %24)
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %3, align 4
  br label %15

29:                                               ; preds = %15
  %30 = load %struct.mlxsw_thermal*, %struct.mlxsw_thermal** %2, align 8
  %31 = getelementptr inbounds %struct.mlxsw_thermal, %struct.mlxsw_thermal* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @kfree(i32* %32)
  br label %34

34:                                               ; preds = %29, %9
  ret void
}

declare dso_local i32 @mlxsw_core_res_query_enabled(i32) #1

declare dso_local i32 @mlxsw_thermal_gearbox_tz_fini(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

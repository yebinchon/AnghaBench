; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_voltage_set_uv_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_voltage_set_uv_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65218 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"ti,under-voltage-hyst-microvolt\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"Invalid ti,under-voltage-hyst-microvolt value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS65218_REG_CONFIG2 = common dso_local global i32 0, align 4
@TPS65218_CONFIG2_UVLOHYS = common dso_local global i32 0, align 4
@TPS65218_PROTECT_L1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65218*)* @tps65218_voltage_set_uv_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_voltage_set_uv_hyst(%struct.tps65218* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps65218*, align 8
  %4 = alloca i32, align 4
  store %struct.tps65218* %0, %struct.tps65218** %3, align 8
  %5 = load %struct.tps65218*, %struct.tps65218** %3, align 8
  %6 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @of_property_read_u32(i32 %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32* %4)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 400000
  br i1 %15, label %16, label %26

16:                                               ; preds = %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 200000
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.tps65218*, %struct.tps65218** %3, align 8
  %21 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %39

26:                                               ; preds = %16, %13
  %27 = load %struct.tps65218*, %struct.tps65218** %3, align 8
  %28 = load i32, i32* @TPS65218_REG_CONFIG2, align 4
  %29 = load i32, i32* @TPS65218_CONFIG2_UVLOHYS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, 400000
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @TPS65218_CONFIG2_UVLOHYS, align 4
  br label %35

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 0, %34 ]
  %37 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %38 = call i32 @tps65218_update_bits(%struct.tps65218* %27, i32 %28, i32 %29, i32 %36, i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %19, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @tps65218_update_bits(%struct.tps65218*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

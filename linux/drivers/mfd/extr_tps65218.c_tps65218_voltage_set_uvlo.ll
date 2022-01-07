; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_voltage_set_uvlo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65218.c_tps65218_voltage_set_uvlo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65218 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"ti,under-voltage-limit-microvolt\00", align 1
@TPS65218_CONFIG1_UVLO_2750000 = common dso_local global i32 0, align 4
@TPS65218_CONFIG1_UVLO_2950000 = common dso_local global i32 0, align 4
@TPS65218_CONFIG1_UVLO_3250000 = common dso_local global i32 0, align 4
@TPS65218_CONFIG1_UVLO_3350000 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid ti,under-voltage-limit-microvolt value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS65218_REG_CONFIG1 = common dso_local global i32 0, align 4
@TPS65218_CONFIG1_UVLO_MASK = common dso_local global i32 0, align 4
@TPS65218_PROTECT_L1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65218*)* @tps65218_voltage_set_uvlo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65218_voltage_set_uvlo(%struct.tps65218* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tps65218*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tps65218* %0, %struct.tps65218** %3, align 8
  %6 = load %struct.tps65218*, %struct.tps65218** %3, align 8
  %7 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @of_property_read_u32(i32 %10, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %24 [
    i32 2750000, label %16
    i32 2950000, label %18
    i32 3250000, label %20
    i32 3350000, label %22
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @TPS65218_CONFIG1_UVLO_2750000, align 4
  store i32 %17, i32* %5, align 4
  br label %31

18:                                               ; preds = %14
  %19 = load i32, i32* @TPS65218_CONFIG1_UVLO_2950000, align 4
  store i32 %19, i32* %5, align 4
  br label %31

20:                                               ; preds = %14
  %21 = load i32, i32* @TPS65218_CONFIG1_UVLO_3250000, align 4
  store i32 %21, i32* %5, align 4
  br label %31

22:                                               ; preds = %14
  %23 = load i32, i32* @TPS65218_CONFIG1_UVLO_3350000, align 4
  store i32 %23, i32* %5, align 4
  br label %31

24:                                               ; preds = %14
  %25 = load %struct.tps65218*, %struct.tps65218** %3, align 8
  %26 = getelementptr inbounds %struct.tps65218, %struct.tps65218* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @dev_err(%struct.TYPE_2__* %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %38

31:                                               ; preds = %22, %20, %18, %16
  %32 = load %struct.tps65218*, %struct.tps65218** %3, align 8
  %33 = load i32, i32* @TPS65218_REG_CONFIG1, align 4
  %34 = load i32, i32* @TPS65218_CONFIG1_UVLO_MASK, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @TPS65218_PROTECT_L1, align 4
  %37 = call i32 @tps65218_update_bits(%struct.tps65218* %32, i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %31, %24, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
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

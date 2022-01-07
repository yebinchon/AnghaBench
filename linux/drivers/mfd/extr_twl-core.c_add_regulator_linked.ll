; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_add_regulator_linked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl-core.c_add_regulator_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.regulator_init_data = type { i32, %struct.twl_regulator_driver_data*, %struct.regulator_consumer_supply* }
%struct.twl_regulator_driver_data = type { i64, i32*, i32*, i32* }
%struct.regulator_consumer_supply = type { i32 }

@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"twl_reg\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device* (i32, %struct.regulator_init_data*, %struct.regulator_consumer_supply*, i32, i64)* @add_regulator_linked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device* @add_regulator_linked(i32 %0, %struct.regulator_init_data* %1, %struct.regulator_consumer_supply* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.regulator_init_data*, align 8
  %9 = alloca %struct.regulator_consumer_supply*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.twl_regulator_driver_data, align 8
  %13 = alloca %struct.twl_regulator_driver_data*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.regulator_init_data* %1, %struct.regulator_init_data** %8, align 8
  store %struct.regulator_consumer_supply* %2, %struct.regulator_consumer_supply** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %14 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %15 = icmp ne %struct.regulator_init_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %5
  store %struct.device* null, %struct.device** %6, align 8
  br label %54

17:                                               ; preds = %5
  %18 = load %struct.regulator_consumer_supply*, %struct.regulator_consumer_supply** %9, align 8
  %19 = icmp ne %struct.regulator_consumer_supply* %18, null
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load %struct.regulator_consumer_supply*, %struct.regulator_consumer_supply** %9, align 8
  %22 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %23 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %22, i32 0, i32 2
  store %struct.regulator_consumer_supply* %21, %struct.regulator_consumer_supply** %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %26 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  br label %27

27:                                               ; preds = %20, %17
  %28 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %29 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %28, i32 0, i32 1
  %30 = load %struct.twl_regulator_driver_data*, %struct.twl_regulator_driver_data** %29, align 8
  %31 = icmp ne %struct.twl_regulator_driver_data* %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %34 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %33, i32 0, i32 1
  %35 = load %struct.twl_regulator_driver_data*, %struct.twl_regulator_driver_data** %34, align 8
  store %struct.twl_regulator_driver_data* %35, %struct.twl_regulator_driver_data** %13, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.twl_regulator_driver_data*, %struct.twl_regulator_driver_data** %13, align 8
  %38 = getelementptr inbounds %struct.twl_regulator_driver_data, %struct.twl_regulator_driver_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = or i64 %39, %36
  store i64 %40, i64* %38, align 8
  br label %49

41:                                               ; preds = %27
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds %struct.twl_regulator_driver_data, %struct.twl_regulator_driver_data* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.twl_regulator_driver_data, %struct.twl_regulator_driver_data* %12, i32 0, i32 3
  store i32* null, i32** %44, align 8
  %45 = getelementptr inbounds %struct.twl_regulator_driver_data, %struct.twl_regulator_driver_data* %12, i32 0, i32 2
  store i32* null, i32** %45, align 8
  %46 = getelementptr inbounds %struct.twl_regulator_driver_data, %struct.twl_regulator_driver_data* %12, i32 0, i32 1
  store i32* null, i32** %46, align 8
  %47 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %48 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %47, i32 0, i32 1
  store %struct.twl_regulator_driver_data* %12, %struct.twl_regulator_driver_data** %48, align 8
  br label %49

49:                                               ; preds = %41, %32
  %50 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.regulator_init_data*, %struct.regulator_init_data** %8, align 8
  %53 = call %struct.device* @add_numbered_child(i32 %50, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %51, %struct.regulator_init_data* %52, i32 24, i32 0, i32 0, i32 0)
  store %struct.device* %53, %struct.device** %6, align 8
  br label %54

54:                                               ; preds = %49, %16
  %55 = load %struct.device*, %struct.device** %6, align 8
  ret %struct.device* %55
}

declare dso_local %struct.device* @add_numbered_child(i32, i8*, i32, %struct.regulator_init_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

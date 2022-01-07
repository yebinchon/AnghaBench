; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_check_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_check_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_port = type { %struct.rocker* }
%struct.rocker = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"failed to get port mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"hardware has ports in different worlds, which is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker_port*)* @rocker_world_check_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_check_init(%struct.rocker_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rocker_port*, align 8
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rocker_port* %0, %struct.rocker_port** %3, align 8
  %7 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %8 = getelementptr inbounds %struct.rocker_port, %struct.rocker_port* %7, i32 0, i32 0
  %9 = load %struct.rocker*, %struct.rocker** %8, align 8
  store %struct.rocker* %9, %struct.rocker** %4, align 8
  %10 = load %struct.rocker_port*, %struct.rocker_port** %3, align 8
  %11 = call i32 @rocker_cmd_get_port_settings_mode(%struct.rocker_port* %10, i64* %5)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.rocker*, %struct.rocker** %4, align 8
  %16 = getelementptr inbounds %struct.rocker, %struct.rocker* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @dev_err(i32* %18, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %47

21:                                               ; preds = %1
  %22 = load %struct.rocker*, %struct.rocker** %4, align 8
  %23 = getelementptr inbounds %struct.rocker, %struct.rocker* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = load %struct.rocker*, %struct.rocker** %4, align 8
  %28 = getelementptr inbounds %struct.rocker, %struct.rocker* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %26
  %35 = load %struct.rocker*, %struct.rocker** %4, align 8
  %36 = getelementptr inbounds %struct.rocker, %struct.rocker* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = call i32 @dev_err(i32* %38, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %47

43:                                               ; preds = %21
  %44 = load %struct.rocker*, %struct.rocker** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @rocker_world_init(%struct.rocker* %44, i64 %45)
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %43, %42, %34, %14
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @rocker_cmd_get_port_settings_mode(%struct.rocker_port*, i64*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @rocker_world_init(%struct.rocker*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

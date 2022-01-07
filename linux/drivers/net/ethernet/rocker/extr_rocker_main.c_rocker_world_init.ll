; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, %struct.rocker_world_ops*, %struct.TYPE_2__* }
%struct.rocker_world_ops = type { i32 (%struct.rocker.0*)*, i32 }
%struct.rocker.0 = type opaque
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"port mode \22%d\22 is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rocker*, i32)* @rocker_world_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_world_init(%struct.rocker* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rocker*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rocker_world_ops*, align 8
  %7 = alloca i32, align 4
  store %struct.rocker* %0, %struct.rocker** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.rocker_world_ops* @rocker_world_ops_find(i32 %8)
  store %struct.rocker_world_ops* %9, %struct.rocker_world_ops** %6, align 8
  %10 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %11 = icmp ne %struct.rocker_world_ops* %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %2
  %13 = load %struct.rocker*, %struct.rocker** %4, align 8
  %14 = getelementptr inbounds %struct.rocker, %struct.rocker* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %23 = load %struct.rocker*, %struct.rocker** %4, align 8
  %24 = getelementptr inbounds %struct.rocker, %struct.rocker* %23, i32 0, i32 1
  store %struct.rocker_world_ops* %22, %struct.rocker_world_ops** %24, align 8
  %25 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %26 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call i32 @kzalloc(i32 %27, i32 %28)
  %30 = load %struct.rocker*, %struct.rocker** %4, align 8
  %31 = getelementptr inbounds %struct.rocker, %struct.rocker* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.rocker*, %struct.rocker** %4, align 8
  %33 = getelementptr inbounds %struct.rocker, %struct.rocker* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %61

39:                                               ; preds = %21
  %40 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %41 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %40, i32 0, i32 0
  %42 = load i32 (%struct.rocker.0*)*, i32 (%struct.rocker.0*)** %41, align 8
  %43 = icmp ne i32 (%struct.rocker.0*)* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %61

45:                                               ; preds = %39
  %46 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %6, align 8
  %47 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %46, i32 0, i32 0
  %48 = load i32 (%struct.rocker.0*)*, i32 (%struct.rocker.0*)** %47, align 8
  %49 = load %struct.rocker*, %struct.rocker** %4, align 8
  %50 = bitcast %struct.rocker* %49 to %struct.rocker.0*
  %51 = call i32 %48(%struct.rocker.0* %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %45
  %55 = load %struct.rocker*, %struct.rocker** %4, align 8
  %56 = getelementptr inbounds %struct.rocker, %struct.rocker* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @kfree(i32 %57)
  br label %59

59:                                               ; preds = %54, %45
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %44, %36, %12
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.rocker_world_ops* @rocker_world_ops_find(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

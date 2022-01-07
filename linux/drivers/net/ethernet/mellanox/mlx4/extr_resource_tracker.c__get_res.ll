; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c__get_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c__get_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.res_common = type { i64, i8*, i32, i64 }

@ENONET = common dso_local global i32 0, align 4
@RES_ANY_BUSY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"%s(%d) trying to get resource %llx of type %s, but it's already taken by %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, i32, i8*, i8*)* @_get_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_get_res(%struct.mlx4_dev* %0, i32 %1, i32 %2, i32 %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.mlx4_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.res_common*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %16 = call i32 @mlx4_tlock(%struct.mlx4_dev* %15)
  %17 = call i32 @spin_lock_irq(i32 %16)
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.res_common* @find_res(%struct.mlx4_dev* %18, i32 %19, i32 %20)
  store %struct.res_common* %21, %struct.res_common** %13, align 8
  %22 = load %struct.res_common*, %struct.res_common** %13, align 8
  %23 = icmp ne %struct.res_common* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* @ENONET, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  br label %74

27:                                               ; preds = %6
  %28 = load %struct.res_common*, %struct.res_common** %13, align 8
  %29 = getelementptr inbounds %struct.res_common, %struct.res_common* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @RES_ANY_BUSY, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %27
  %34 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @mlx4_resource_type_to_str(i32 %38)
  %40 = load %struct.res_common*, %struct.res_common** %13, align 8
  %41 = getelementptr inbounds %struct.res_common, %struct.res_common* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @mlx4_warn(%struct.mlx4_dev* %34, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i8* %35, i32 %36, i32 %37, i32 %39, i8* %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %14, align 4
  br label %74

46:                                               ; preds = %27
  %47 = load %struct.res_common*, %struct.res_common** %13, align 8
  %48 = getelementptr inbounds %struct.res_common, %struct.res_common* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EPERM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %14, align 4
  br label %74

55:                                               ; preds = %46
  %56 = load %struct.res_common*, %struct.res_common** %13, align 8
  %57 = getelementptr inbounds %struct.res_common, %struct.res_common* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.res_common*, %struct.res_common** %13, align 8
  %60 = getelementptr inbounds %struct.res_common, %struct.res_common* %59, i32 0, i32 3
  store i64 %58, i64* %60, align 8
  %61 = load i64, i64* @RES_ANY_BUSY, align 8
  %62 = load %struct.res_common*, %struct.res_common** %13, align 8
  %63 = getelementptr inbounds %struct.res_common, %struct.res_common* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load %struct.res_common*, %struct.res_common** %13, align 8
  %66 = getelementptr inbounds %struct.res_common, %struct.res_common* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %73

69:                                               ; preds = %55
  %70 = load %struct.res_common*, %struct.res_common** %13, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = bitcast i8* %71 to %struct.res_common**
  store %struct.res_common* %70, %struct.res_common** %72, align 8
  br label %73

73:                                               ; preds = %69, %55
  br label %74

74:                                               ; preds = %73, %52, %33, %24
  %75 = load %struct.mlx4_dev*, %struct.mlx4_dev** %7, align 8
  %76 = call i32 @mlx4_tlock(%struct.mlx4_dev* %75)
  %77 = call i32 @spin_unlock_irq(i32 %76)
  %78 = load i32, i32* %14, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @mlx4_tlock(%struct.mlx4_dev*) #1

declare dso_local %struct.res_common* @find_res(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i8*, i32, i32, i32, i8*) #1

declare dso_local i32 @mlx4_resource_type_to_str(i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

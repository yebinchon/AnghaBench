; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_ops_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_world_ops_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker_world_ops = type { i64 }

@ROCKER_WORLD_OPS_LEN = common dso_local global i32 0, align 4
@rocker_world_ops = common dso_local global %struct.rocker_world_ops** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rocker_world_ops* (i64)* @rocker_world_ops_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rocker_world_ops* @rocker_world_ops_find(i64 %0) #0 {
  %2 = alloca %struct.rocker_world_ops*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %26, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ROCKER_WORLD_OPS_LEN, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %5
  %10 = load %struct.rocker_world_ops**, %struct.rocker_world_ops*** @rocker_world_ops, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.rocker_world_ops*, %struct.rocker_world_ops** %10, i64 %12
  %14 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %13, align 8
  %15 = getelementptr inbounds %struct.rocker_world_ops, %struct.rocker_world_ops* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %9
  %20 = load %struct.rocker_world_ops**, %struct.rocker_world_ops*** @rocker_world_ops, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.rocker_world_ops*, %struct.rocker_world_ops** %20, i64 %22
  %24 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %23, align 8
  store %struct.rocker_world_ops* %24, %struct.rocker_world_ops** %2, align 8
  br label %30

25:                                               ; preds = %9
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %5

29:                                               ; preds = %5
  store %struct.rocker_world_ops* null, %struct.rocker_world_ops** %2, align 8
  br label %30

30:                                               ; preds = %29, %19
  %31 = load %struct.rocker_world_ops*, %struct.rocker_world_ops** %2, align 8
  ret %struct.rocker_world_ops* %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

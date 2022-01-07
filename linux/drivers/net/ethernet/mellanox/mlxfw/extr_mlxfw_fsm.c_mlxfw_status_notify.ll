; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_status_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxfw/extr_mlxfw_fsm.c_mlxfw_status_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxfw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mlxfw_dev*, i8*, i8*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxfw_dev*, i8*, i8*, i32, i32)* @mlxfw_status_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxfw_status_notify(%struct.mlxfw_dev* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlxfw_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlxfw_dev* %0, %struct.mlxfw_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %12 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.mlxfw_dev*, i8*, i8*, i32, i32)*, i32 (%struct.mlxfw_dev*, i8*, i8*, i32, i32)** %14, align 8
  %16 = icmp ne i32 (%struct.mlxfw_dev*, i8*, i8*, i32, i32)* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  br label %30

18:                                               ; preds = %5
  %19 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %20 = getelementptr inbounds %struct.mlxfw_dev, %struct.mlxfw_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mlxfw_dev*, i8*, i8*, i32, i32)*, i32 (%struct.mlxfw_dev*, i8*, i8*, i32, i32)** %22, align 8
  %24 = load %struct.mlxfw_dev*, %struct.mlxfw_dev** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = call i32 %23(%struct.mlxfw_dev* %24, i8* %25, i8* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %18, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

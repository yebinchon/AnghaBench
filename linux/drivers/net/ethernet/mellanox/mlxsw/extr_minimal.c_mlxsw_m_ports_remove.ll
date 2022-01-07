; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_ports_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_minimal.c_mlxsw_m_ports_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_m = type { i32, i64*, i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_m*)* @mlxsw_m_ports_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_m_ports_remove(%struct.mlxsw_m* %0) #0 {
  %2 = alloca %struct.mlxsw_m*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_m* %0, %struct.mlxsw_m** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %36

10:                                               ; preds = %4
  %11 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %12 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %11, i32 0, i32 1
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %10
  %20 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %21 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %22 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64, i64* %23, i64 %25
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @mlxsw_m_port_remove(%struct.mlxsw_m* %20, i64 %27)
  %29 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @mlxsw_m_port_module_unmap(%struct.mlxsw_m* %29, i32 %30)
  br label %32

32:                                               ; preds = %19, %10
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %4
  %37 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %38 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = call i32 @kfree(i64* %39)
  %41 = load %struct.mlxsw_m*, %struct.mlxsw_m** %2, align 8
  %42 = getelementptr inbounds %struct.mlxsw_m, %struct.mlxsw_m* %41, i32 0, i32 2
  %43 = load i64*, i64** %42, align 8
  %44 = call i32 @kfree(i64* %43)
  ret void
}

declare dso_local i32 @mlxsw_m_port_remove(%struct.mlxsw_m*, i64) #1

declare dso_local i32 @mlxsw_m_port_module_unmap(%struct.mlxsw_m*, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

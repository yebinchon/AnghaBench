; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_ports_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_ports_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp*)* @mlxsw_sp_ports_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_ports_remove(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca %struct.mlxsw_sp*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %21, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %7 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @mlxsw_core_max_ports(i32 %8)
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %4
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @mlxsw_sp_port_created(%struct.mlxsw_sp* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp* %17, i32 %18)
  br label %20

20:                                               ; preds = %16, %11
  br label %21

21:                                               ; preds = %20
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %4

24:                                               ; preds = %4
  %25 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %26 = call i32 @mlxsw_sp_cpu_port_remove(%struct.mlxsw_sp* %25)
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @kfree(i32 %29)
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %2, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @kfree(i32 %33)
  ret void
}

declare dso_local i32 @mlxsw_core_max_ports(i32) #1

declare dso_local i64 @mlxsw_sp_port_created(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_port_remove(%struct.mlxsw_sp*, i32) #1

declare dso_local i32 @mlxsw_sp_cpu_port_remove(%struct.mlxsw_sp*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

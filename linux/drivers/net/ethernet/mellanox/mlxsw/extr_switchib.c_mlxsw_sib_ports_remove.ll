; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_ports_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_ports_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sib = type { i32 }

@MLXSW_PORT_MAX_IB_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sib*)* @mlxsw_sib_ports_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sib_ports_remove(%struct.mlxsw_sib* %0) #0 {
  %2 = alloca %struct.mlxsw_sib*, align 8
  %3 = alloca i32, align 4
  store %struct.mlxsw_sib* %0, %struct.mlxsw_sib** %2, align 8
  store i32 1, i32* %3, align 4
  br label %4

4:                                                ; preds = %18, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MLXSW_PORT_MAX_IB_PORTS, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %4
  %9 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %2, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @mlxsw_sib_port_created(%struct.mlxsw_sib* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @mlxsw_sib_port_remove(%struct.mlxsw_sib* %14, i32 %15)
  br label %17

17:                                               ; preds = %13, %8
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %4

21:                                               ; preds = %4
  %22 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %2, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  ret void
}

declare dso_local i64 @mlxsw_sib_port_created(%struct.mlxsw_sib*, i32) #1

declare dso_local i32 @mlxsw_sib_port_remove(%struct.mlxsw_sib*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

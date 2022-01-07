; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_pude_event_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchib.c_mlxsw_sib_pude_event_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_reg_info = type { i32 }
%struct.mlxsw_sib = type { %struct.TYPE_2__*, %struct.mlxsw_sib_port** }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sib_port = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"Port %d: Link event received for non-existent port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_reg_info*, i8*, i8*)* @mlxsw_sib_pude_event_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sib_pude_event_func(%struct.mlxsw_reg_info* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.mlxsw_reg_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sib*, align 8
  %8 = alloca %struct.mlxsw_sib_port*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.mlxsw_reg_info* %0, %struct.mlxsw_reg_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.mlxsw_sib*
  store %struct.mlxsw_sib* %12, %struct.mlxsw_sib** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = call i64 @mlxsw_reg_pude_local_port_get(i8* %13)
  store i64 %14, i64* %10, align 8
  %15 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %7, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %15, i32 0, i32 1
  %17 = load %struct.mlxsw_sib_port**, %struct.mlxsw_sib_port*** %16, align 8
  %18 = load i64, i64* %10, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %17, i64 %18
  %20 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %19, align 8
  store %struct.mlxsw_sib_port* %20, %struct.mlxsw_sib_port** %8, align 8
  %21 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %8, align 8
  %22 = icmp ne %struct.mlxsw_sib_port* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sib*, %struct.mlxsw_sib** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sib, %struct.mlxsw_sib* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %29)
  br label %37

31:                                               ; preds = %3
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @mlxsw_reg_pude_oper_status_get(i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mlxsw_sib_port*, %struct.mlxsw_sib_port** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @mlxsw_sib_pude_ib_event_func(%struct.mlxsw_sib_port* %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %23
  ret void
}

declare dso_local i64 @mlxsw_reg_pude_local_port_get(i8*) #1

declare dso_local i32 @dev_warn(i32, i8*, i64) #1

declare dso_local i32 @mlxsw_reg_pude_oper_status_get(i8*) #1

declare dso_local i32 @mlxsw_sib_pude_ib_event_func(%struct.mlxsw_sib_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_mirror_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_mirror_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.net_device = type { i32 }
%struct.mlxsw_sp_span_entry_ops = type { i32 (%struct.net_device*, %struct.mlxsw_sp_span_parms*)* }
%struct.mlxsw_sp_span_parms = type { i32* }
%struct.mlxsw_sp_span_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Cannot mirror to %s\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Adding inspected port to SPAN entry %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_span_mirror_add(%struct.mlxsw_sp_port* %0, %struct.net_device* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca %struct.mlxsw_sp_span_entry_ops*, align 8
  %14 = alloca %struct.mlxsw_sp_span_parms, align 8
  %15 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %16 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %18, align 8
  store %struct.mlxsw_sp* %19, %struct.mlxsw_sp** %12, align 8
  %20 = bitcast %struct.mlxsw_sp_span_parms* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %20, i8 0, i64 8, i1 false)
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %22 = load %struct.net_device*, %struct.net_device** %8, align 8
  %23 = call %struct.mlxsw_sp_span_entry_ops* @mlxsw_sp_span_entry_ops(%struct.mlxsw_sp* %21, %struct.net_device* %22)
  store %struct.mlxsw_sp_span_entry_ops* %23, %struct.mlxsw_sp_span_entry_ops** %13, align 8
  %24 = load %struct.mlxsw_sp_span_entry_ops*, %struct.mlxsw_sp_span_entry_ops** %13, align 8
  %25 = icmp ne %struct.mlxsw_sp_span_entry_ops* %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %5
  %27 = load %struct.net_device*, %struct.net_device** %8, align 8
  %28 = load %struct.net_device*, %struct.net_device** %8, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %82

34:                                               ; preds = %5
  %35 = load %struct.mlxsw_sp_span_entry_ops*, %struct.mlxsw_sp_span_entry_ops** %13, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_span_entry_ops, %struct.mlxsw_sp_span_entry_ops* %35, i32 0, i32 0
  %37 = load i32 (%struct.net_device*, %struct.mlxsw_sp_span_parms*)*, i32 (%struct.net_device*, %struct.mlxsw_sp_span_parms*)** %36, align 8
  %38 = load %struct.net_device*, %struct.net_device** %8, align 8
  %39 = call i32 %37(%struct.net_device* %38, %struct.mlxsw_sp_span_parms* %14)
  store i32 %39, i32* %16, align 4
  %40 = load i32, i32* %16, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  br label %82

44:                                               ; preds = %34
  %45 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %46 = load %struct.net_device*, %struct.net_device** %8, align 8
  %47 = load %struct.mlxsw_sp_span_entry_ops*, %struct.mlxsw_sp_span_entry_ops** %13, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sp_span_parms, %struct.mlxsw_sp_span_parms* %14, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call %struct.mlxsw_sp_span_entry* @mlxsw_sp_span_entry_get(%struct.mlxsw_sp* %45, %struct.net_device* %46, %struct.mlxsw_sp_span_entry_ops* %47, i32* %49)
  store %struct.mlxsw_sp_span_entry* %50, %struct.mlxsw_sp_span_entry** %15, align 8
  %51 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %15, align 8
  %52 = icmp ne %struct.mlxsw_sp_span_entry* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOBUFS, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %82

56:                                               ; preds = %44
  %57 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %58 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %15, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @netdev_dbg(i32 %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %65 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %15, align 8
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @mlxsw_sp_span_inspected_port_add(%struct.mlxsw_sp_port* %64, %struct.mlxsw_sp_span_entry* %65, i32 %66, i32 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %56
  br label %77

72:                                               ; preds = %56
  %73 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %15, align 8
  %74 = getelementptr inbounds %struct.mlxsw_sp_span_entry, %struct.mlxsw_sp_span_entry* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %11, align 8
  store i32 %75, i32* %76, align 4
  store i32 0, i32* %6, align 4
  br label %82

77:                                               ; preds = %71
  %78 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %79 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %15, align 8
  %80 = call i32 @mlxsw_sp_span_entry_put(%struct.mlxsw_sp* %78, %struct.mlxsw_sp_span_entry* %79)
  %81 = load i32, i32* %16, align 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77, %72, %53, %42, %26
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.mlxsw_sp_span_entry_ops* @mlxsw_sp_span_entry_ops(%struct.mlxsw_sp*, %struct.net_device*) #2

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #2

declare dso_local %struct.mlxsw_sp_span_entry* @mlxsw_sp_span_entry_get(%struct.mlxsw_sp*, %struct.net_device*, %struct.mlxsw_sp_span_entry_ops*, i32*) #2

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #2

declare dso_local i32 @mlxsw_sp_span_inspected_port_add(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_span_entry*, i32, i32) #2

declare dso_local i32 @mlxsw_sp_span_entry_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_span_entry*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

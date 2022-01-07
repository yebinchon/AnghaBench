; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_inspected_port_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_inspected_port_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_span_entry = type { i32 }
%struct.mlxsw_sp_span_inspected_port = type { i32 }

@MLXSW_REG_SBIB_LEN = common dso_local global i32 0, align 4
@MLXSW_SP_SPAN_EGRESS = common dso_local global i32 0, align 4
@sbib = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_span_entry*, i32, i32)* @mlxsw_sp_span_inspected_port_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_span_inspected_port_del(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_span_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp_span_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp_span_inspected_port*, align 8
  %10 = alloca %struct.mlxsw_sp*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.mlxsw_sp_span_entry* %1, %struct.mlxsw_sp_span_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %15 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %14, i32 0, i32 1
  %16 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %15, align 8
  store %struct.mlxsw_sp* %16, %struct.mlxsw_sp** %10, align 8
  %17 = load i32, i32* @MLXSW_REG_SBIB_LEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %11, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %12, align 8
  %21 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.mlxsw_sp_span_inspected_port* @mlxsw_sp_span_entry_bound_port_find(%struct.mlxsw_sp_span_entry* %21, i32 %22, %struct.mlxsw_sp_port* %23, i32 %24)
  store %struct.mlxsw_sp_span_inspected_port* %25, %struct.mlxsw_sp_span_inspected_port** %9, align 8
  %26 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %9, align 8
  %27 = icmp ne %struct.mlxsw_sp_span_inspected_port* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %4
  store i32 1, i32* %13, align 4
  br label %61

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %29
  %33 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %34 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @mlxsw_sp_span_inspected_port_bind(%struct.mlxsw_sp_port* %33, %struct.mlxsw_sp_span_entry* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @MLXSW_SP_SPAN_EGRESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %37
  %42 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @mlxsw_reg_sbib_pack(i8* %20, i32 %44, i32 0)
  %46 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %47 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @sbib, align 4
  %50 = call i32 @MLXSW_REG(i32 %49)
  %51 = call i32 @mlxsw_reg_write(i32 %48, i32 %50, i8* %20)
  br label %52

52:                                               ; preds = %41, %37
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %10, align 8
  %54 = load %struct.mlxsw_sp_span_entry*, %struct.mlxsw_sp_span_entry** %6, align 8
  %55 = call i32 @mlxsw_sp_span_entry_put(%struct.mlxsw_sp* %53, %struct.mlxsw_sp_span_entry* %54)
  %56 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %9, align 8
  %57 = getelementptr inbounds %struct.mlxsw_sp_span_inspected_port, %struct.mlxsw_sp_span_inspected_port* %56, i32 0, i32 0
  %58 = call i32 @list_del(i32* %57)
  %59 = load %struct.mlxsw_sp_span_inspected_port*, %struct.mlxsw_sp_span_inspected_port** %9, align 8
  %60 = call i32 @kfree(%struct.mlxsw_sp_span_inspected_port* %59)
  store i32 0, i32* %13, align 4
  br label %61

61:                                               ; preds = %52, %28
  %62 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i32, i32* %13, align 4
  switch i32 %63, label %65 [
    i32 0, label %64
    i32 1, label %64
  ]

64:                                               ; preds = %61, %61
  ret void

65:                                               ; preds = %61
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.mlxsw_sp_span_inspected_port* @mlxsw_sp_span_entry_bound_port_find(%struct.mlxsw_sp_span_entry*, i32, %struct.mlxsw_sp_port*, i32) #2

declare dso_local i32 @mlxsw_sp_span_inspected_port_bind(%struct.mlxsw_sp_port*, %struct.mlxsw_sp_span_entry*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_sbib_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_sp_span_entry_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_span_entry*) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @kfree(%struct.mlxsw_sp_span_inspected_port*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

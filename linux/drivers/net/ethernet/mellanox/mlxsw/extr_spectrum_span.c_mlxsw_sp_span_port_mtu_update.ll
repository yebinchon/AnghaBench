; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_port_mtu_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_span.c_mlxsw_sp_span_port_mtu_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_SBIB_LEN = common dso_local global i32 0, align 4
@sbib = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not update shared buffer for mirroring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_span_port_mtu_update(%struct.mlxsw_sp_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 2
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %6, align 8
  %15 = load i32, i32* @MLXSW_REG_SBIB_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %20 = call i64 @mlxsw_sp_span_is_egress_mirror(%struct.mlxsw_sp_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @mlxsw_sp_span_mtu_to_buffsize(%struct.mlxsw_sp* %23, i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @mlxsw_reg_sbib_pack(i8* %18, i32 %28, i32 %29)
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @sbib, align 4
  %35 = call i32 @MLXSW_REG(i32 %34)
  %36 = call i32 @mlxsw_reg_write(i32 %33, i32 %35, i8* %18)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %22
  %40 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %47

45:                                               ; preds = %22
  br label %46

46:                                               ; preds = %45, %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %39
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mlxsw_sp_span_is_egress_mirror(%struct.mlxsw_sp_port*) #2

declare dso_local i32 @mlxsw_sp_span_mtu_to_buffsize(%struct.mlxsw_sp*, i32) #2

declare dso_local i32 @mlxsw_reg_sbib_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

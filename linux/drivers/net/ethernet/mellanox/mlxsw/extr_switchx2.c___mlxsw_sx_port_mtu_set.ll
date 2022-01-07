; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c___mlxsw_sx_port_mtu_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c___mlxsw_sx_port_mtu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx_port = type { i32, %struct.mlxsw_sx* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_PMTU_LEN = common dso_local global i32 0, align 4
@pmtu = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx_port*, i32)* @__mlxsw_sx_port_mtu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__mlxsw_sx_port_mtu_set(%struct.mlxsw_sx_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sx_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlxsw_sx_port* %0, %struct.mlxsw_sx_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %12, i32 0, i32 1
  %14 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %13, align 8
  store %struct.mlxsw_sx* %14, %struct.mlxsw_sx** %6, align 8
  %15 = load i32, i32* @MLXSW_REG_PMTU_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @mlxsw_reg_pmtu_pack(i8* %18, i32 %21, i32 0)
  %23 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %24 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @pmtu, align 4
  %27 = call i32 @MLXSW_REG(i32 %26)
  %28 = call i32 @mlxsw_reg_query(i32 %25, i32 %27, i8* %18)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %2
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

33:                                               ; preds = %2
  %34 = call i32 @mlxsw_reg_pmtu_max_mtu_get(i8* %18)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

41:                                               ; preds = %33
  %42 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %4, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @mlxsw_reg_pmtu_pack(i8* %18, i32 %44, i32 %45)
  %47 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %6, align 8
  %48 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @pmtu, align 4
  %51 = call i32 @MLXSW_REG(i32 %50)
  %52 = call i32 @mlxsw_reg_write(i32 %49, i32 %51, i8* %18)
  store i32 %52, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %41, %38, %31
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_pmtu_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_pmtu_max_mtu_get(i8*) #2

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

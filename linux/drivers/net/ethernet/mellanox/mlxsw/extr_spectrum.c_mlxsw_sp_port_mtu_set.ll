; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_mtu_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_port_mtu_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }

@MLXSW_REG_PMTU_LEN = common dso_local global i32 0, align 4
@MLXSW_TXHDR_LEN = common dso_local global i64 0, align 8
@ETH_HLEN = common dso_local global i64 0, align 8
@pmtu = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, i32)* @mlxsw_sp_port_mtu_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_mtu_set(%struct.mlxsw_sp_port* %0, i32 %1) #0 {
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
  %13 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %12, i32 0, i32 1
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %13, align 8
  store %struct.mlxsw_sp* %14, %struct.mlxsw_sp** %6, align 8
  %15 = load i32, i32* @MLXSW_REG_PMTU_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load i64, i64* @MLXSW_TXHDR_LEN, align 8
  %20 = load i64, i64* @ETH_HLEN, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mlxsw_reg_pmtu_pack(i8* %18, i32 %28, i32 0)
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @pmtu, align 4
  %34 = call i32 @MLXSW_REG(i32 %33)
  %35 = call i32 @mlxsw_reg_query(i32 %32, i32 %34, i8* %18)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %10, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

40:                                               ; preds = %2
  %41 = call i32 @mlxsw_reg_pmtu_max_mtu_get(i8* %18)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp sgt i32 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %40
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

48:                                               ; preds = %40
  %49 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %4, align 8
  %50 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @mlxsw_reg_pmtu_pack(i8* %18, i32 %51, i32 %52)
  %54 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %6, align 8
  %55 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @pmtu, align 4
  %58 = call i32 @MLXSW_REG(i32 %57)
  %59 = call i32 @mlxsw_reg_write(i32 %56, i32 %58, i8* %18)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %60

60:                                               ; preds = %48, %45, %38
  %61 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
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

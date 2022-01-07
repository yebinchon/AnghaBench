; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_dev_addr_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_switchx2.c_mlxsw_sx_port_dev_addr_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sx_port = type { i64, %struct.net_device*, %struct.mlxsw_sx* }
%struct.net_device = type { i32* }
%struct.mlxsw_sx = type { i32 }

@MLXSW_REG_PPAD_LEN = common dso_local global i32 0, align 4
@ppad = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sx_port*)* @mlxsw_sx_port_dev_addr_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sx_port_dev_addr_get(%struct.mlxsw_sx_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sx_port*, align 8
  %4 = alloca %struct.mlxsw_sx*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlxsw_sx_port* %0, %struct.mlxsw_sx_port** %3, align 8
  %10 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %10, i32 0, i32 2
  %12 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %11, align 8
  store %struct.mlxsw_sx* %12, %struct.mlxsw_sx** %4, align 8
  %13 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %13, i32 0, i32 1
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %5, align 8
  %16 = load i32, i32* @MLXSW_REG_PPAD_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  %20 = call i32 @mlxsw_reg_ppad_pack(i8* %19, i32 0, i32 0)
  %21 = load %struct.mlxsw_sx*, %struct.mlxsw_sx** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sx, %struct.mlxsw_sx* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @ppad, align 4
  %25 = call i32 @MLXSW_REG(i32 %24)
  %26 = call i32 @mlxsw_reg_query(i32 %23, i32 %25, i8* %19)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

31:                                               ; preds = %1
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @mlxsw_reg_ppad_mac_memcpy_from(i8* %19, i32* %34)
  %36 = load %struct.mlxsw_sx_port*, %struct.mlxsw_sx_port** %3, align 8
  %37 = getelementptr inbounds %struct.mlxsw_sx_port, %struct.mlxsw_sx_port* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.net_device*, %struct.net_device** %5, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %47, %38
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  store i32 0, i32* %2, align 4
  store i32 1, i32* %9, align 4
  br label %50

50:                                               ; preds = %31, %29
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mlxsw_reg_ppad_pack(i8*, i32, i32) #2

declare dso_local i32 @mlxsw_reg_query(i32, i32, i8*) #2

declare dso_local i32 @MLXSW_REG(i32) #2

declare dso_local i32 @mlxsw_reg_ppad_mac_memcpy_from(i8*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_feature_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.c_mlxsw_sp_feature_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlxsw_sp_port = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@MLXSW_REG_PPLR_LEN = common dso_local global i32 0, align 4
@pplr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlxsw_sp_feature_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_feature_loopback(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device* %9)
  store %struct.mlxsw_sp_port* %10, %struct.mlxsw_sp_port** %5, align 8
  %11 = load i32, i32* @MLXSW_REG_PPLR_LEN, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i64 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %20 = call i32 @mlxsw_sp_port_admin_status_set(%struct.mlxsw_sp_port* %19, i32 0)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @mlxsw_reg_pplr_pack(i8* %14, i32 %24, i32 %25)
  %27 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %28 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @pplr, align 4
  %33 = call i32 @MLXSW_REG(i32 %32)
  %34 = call i32 @mlxsw_reg_write(i32 %31, i32 %33, i8* %14)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i64 @netif_running(%struct.net_device* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %21
  %39 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %40 = call i32 @mlxsw_sp_port_admin_status_set(%struct.mlxsw_sp_port* %39, i32 1)
  br label %41

41:                                               ; preds = %38, %21
  %42 = load i32, i32* %8, align 4
  %43 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %43)
  ret i32 %42
}

declare dso_local %struct.mlxsw_sp_port* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @mlxsw_sp_port_admin_status_set(%struct.mlxsw_sp_port*, i32) #1

declare dso_local i32 @mlxsw_reg_pplr_pack(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_nexthop_update_gre4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_ipip.c_mlxsw_sp_ipip_nexthop_update_gre4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_ipip_entry = type { i32, i32 }

@MLXSW_REG_RATR_LEN = common dso_local global i32 0, align 4
@MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY = common dso_local global i32 0, align 4
@MLXSW_REG_RATR_TYPE_IPIP = common dso_local global i32 0, align 4
@ratr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i32, %struct.mlxsw_sp_ipip_entry*)* @mlxsw_sp_ipip_nexthop_update_gre4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_ipip_nexthop_update_gre4(%struct.mlxsw_sp* %0, i32 %1, %struct.mlxsw_sp_ipip_entry* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlxsw_sp_ipip_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlxsw_sp_ipip_entry* %2, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %11 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @mlxsw_sp_ipip_lb_rif_index(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.mlxsw_sp_ipip_entry*, %struct.mlxsw_sp_ipip_entry** %6, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_ipip_entry, %struct.mlxsw_sp_ipip_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mlxsw_sp_ipip_netdev_daddr4(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @MLXSW_REG_RATR_LEN, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load i32, i32* @MLXSW_REG_RATR_OP_WRITE_WRITE_ENTRY, align 4
  %24 = load i32, i32* @MLXSW_REG_RATR_TYPE_IPIP, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mlxsw_reg_ratr_pack(i8* %22, i32 %23, i32 1, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @be32_to_cpu(i32 %28)
  %30 = call i32 @mlxsw_reg_ratr_ipip4_entry_pack(i8* %22, i32 %29)
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %32 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ratr, align 4
  %35 = call i32 @MLXSW_REG(i32 %34)
  %36 = call i32 @mlxsw_reg_write(i32 %33, i32 %35, i8* %22)
  %37 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %37)
  ret i32 %36
}

declare dso_local i32 @mlxsw_sp_ipip_lb_rif_index(i32) #1

declare dso_local i32 @mlxsw_sp_ipip_netdev_daddr4(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mlxsw_reg_ratr_pack(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_reg_ratr_ipip4_entry_pack(i8*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

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

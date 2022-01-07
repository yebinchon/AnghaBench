; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_fdb_tunnel_uc_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_switchdev.c_mlxsw_sp_port_fdb_tunnel_uc_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%union.mlxsw_sp_l3addr = type { i32 }

@MLXSW_REG_SFD_UC_TUNNEL_PROTOCOL_IPV4 = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLXSW_REG_SFD_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLXSW_REG_SFD_REC_ACTION_NOP = common dso_local global i32 0, align 4
@sfd = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, i32, i32, %union.mlxsw_sp_l3addr*, i32, i32)* @mlxsw_sp_port_fdb_tunnel_uc_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_port_fdb_tunnel_uc_op(%struct.mlxsw_sp* %0, i8* %1, i32 %2, i32 %3, %union.mlxsw_sp_l3addr* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlxsw_sp*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.mlxsw_sp_l3addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %union.mlxsw_sp_l3addr* %4, %union.mlxsw_sp_l3addr** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %21 = load i32, i32* %12, align 4
  switch i32 %21, label %29 [
    i32 129, label %22
    i32 128, label %28
  ]

22:                                               ; preds = %7
  %23 = load %union.mlxsw_sp_l3addr*, %union.mlxsw_sp_l3addr** %13, align 8
  %24 = bitcast %union.mlxsw_sp_l3addr* %23 to i32*
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be32_to_cpu(i32 %25)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* @MLXSW_REG_SFD_UC_TUNNEL_PROTOCOL_IPV4, align 4
  store i32 %27, i32* %16, align 4
  br label %33

28:                                               ; preds = %7
  br label %29

29:                                               ; preds = %7, %28
  %30 = call i32 @WARN_ON(i32 1)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %81

33:                                               ; preds = %22
  %34 = load i32, i32* @MLXSW_REG_SFD_LEN, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kmalloc(i32 %34, i32 %35)
  store i8* %36, i8** %17, align 8
  %37 = load i8*, i8** %17, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %8, align 4
  br label %81

42:                                               ; preds = %33
  %43 = load i8*, i8** %17, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @mlxsw_sp_sfd_op(i32 %44)
  %46 = call i32 @mlxsw_reg_sfd_pack(i8* %43, i32 %45, i32 0)
  %47 = load i8*, i8** %17, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @mlxsw_sp_sfd_rec_policy(i32 %48)
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @MLXSW_REG_SFD_REC_ACTION_NOP, align 4
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %16, align 4
  %55 = call i32 @mlxsw_reg_sfd_uc_tunnel_pack(i8* %47, i32 0, i32 %49, i8* %50, i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i8*, i8** %17, align 8
  %57 = call i64 @mlxsw_reg_sfd_num_rec_get(i8* %56)
  store i64 %57, i64* %18, align 8
  %58 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %9, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @sfd, align 4
  %62 = call i32 @MLXSW_REG(i32 %61)
  %63 = load i8*, i8** %17, align 8
  %64 = call i32 @mlxsw_reg_write(i32 %60, i32 %62, i8* %63)
  store i32 %64, i32* %20, align 4
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %42
  br label %77

68:                                               ; preds = %42
  %69 = load i64, i64* %18, align 8
  %70 = load i8*, i8** %17, align 8
  %71 = call i64 @mlxsw_reg_sfd_num_rec_get(i8* %70)
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EBUSY, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %20, align 4
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %67
  %78 = load i8*, i8** %17, align 8
  %79 = call i32 @kfree(i8* %78)
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %39, %29
  %82 = load i32, i32* %8, align 4
  ret i32 %82
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_pack(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_sfd_op(i32) #1

declare dso_local i32 @mlxsw_reg_sfd_uc_tunnel_pack(i8*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_sfd_rec_policy(i32) #1

declare dso_local i64 @mlxsw_reg_sfd_num_rec_get(i8*) #1

declare dso_local i32 @mlxsw_reg_write(i32, i32, i8*) #1

declare dso_local i32 @MLXSW_REG(i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

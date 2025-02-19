; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_sfd_uc_tunnel_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_sfd_uc_tunnel_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MLXSW_REG_SFD_REC_TYPE_UNICAST_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i8*, i32, i32, i32, i32)* @mlxsw_reg_sfd_uc_tunnel_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_sfd_uc_tunnel_pack(i8* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* @MLXSW_REG_SFD_REC_TYPE_UNICAST_TUNNEL, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @mlxsw_reg_sfd_rec_pack(i8* %17, i32 %18, i32 %19, i8* %20, i32 %21)
  %23 = load i8*, i8** %9, align 8
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %11, align 4
  %26 = call i32 @mlxsw_reg_sfd_rec_policy_set(i8* %23, i32 %24, i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %15, align 4
  %30 = ashr i32 %29, 24
  %31 = call i32 @mlxsw_reg_sfd_uc_tunnel_uip_msb_set(i8* %27, i32 %28, i32 %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %15, align 4
  %35 = call i32 @mlxsw_reg_sfd_uc_tunnel_uip_lsb_set(i8* %32, i32 %33, i32 %34)
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %13, align 4
  %39 = call i32 @mlxsw_reg_sfd_uc_tunnel_fid_set(i8* %36, i32 %37, i32 %38)
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %16, align 4
  %43 = call i32 @mlxsw_reg_sfd_uc_tunnel_protocol_set(i8* %40, i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @mlxsw_reg_sfd_rec_pack(i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_rec_policy_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_uc_tunnel_uip_msb_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_uc_tunnel_uip_lsb_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_uc_tunnel_fid_set(i8*, i32, i32) #1

declare dso_local i32 @mlxsw_reg_sfd_uc_tunnel_protocol_set(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

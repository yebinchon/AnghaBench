; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_cwtpm_pack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_reg.h_mlxsw_reg_cwtpm_pack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cwtpm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32, i32, i32, i32)* @mlxsw_reg_cwtpm_pack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_reg_cwtpm_pack(i8* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @cwtpm, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @MLXSW_REG_ZERO(i32 %13, i8* %14)
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mlxsw_reg_cwtpm_local_port_set(i8* %16, i32 %17)
  %19 = load i8*, i8** %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @mlxsw_reg_cwtpm_traffic_class_set(i8* %19, i32 %20)
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @mlxsw_reg_cwtpm_ew_set(i8* %22, i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %12, align 4
  %27 = call i32 @mlxsw_reg_cwtpm_ee_set(i8* %25, i32 %26)
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @mlxsw_reg_cwtpm_tcp_g_set(i8* %28, i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @mlxsw_reg_cwtpm_tcp_y_set(i8* %31, i32 %32)
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @mlxsw_reg_cwtpm_tcp_r_set(i8* %34, i32 %35)
  %37 = load i8*, i8** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @mlxsw_reg_cwtpm_ntcp_g_set(i8* %37, i32 %38)
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @mlxsw_reg_cwtpm_ntcp_y_set(i8* %40, i32 %41)
  %43 = load i8*, i8** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @mlxsw_reg_cwtpm_ntcp_r_set(i8* %43, i32 %44)
  ret void
}

declare dso_local i32 @MLXSW_REG_ZERO(i32, i8*) #1

declare dso_local i32 @mlxsw_reg_cwtpm_local_port_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_traffic_class_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_ew_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_ee_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_tcp_g_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_tcp_y_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_tcp_r_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_ntcp_g_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_ntcp_y_set(i8*, i32) #1

declare dso_local i32 @mlxsw_reg_cwtpm_ntcp_r_set(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

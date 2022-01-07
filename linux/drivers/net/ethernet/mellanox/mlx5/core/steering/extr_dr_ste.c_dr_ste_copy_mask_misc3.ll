; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_copy_mask_misc3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_copy_mask_misc3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_match_misc3 = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@fte_match_set_misc3 = common dso_local global i32 0, align 4
@inner_tcp_seq_num = common dso_local global i32 0, align 4
@outer_tcp_seq_num = common dso_local global i32 0, align 4
@inner_tcp_ack_num = common dso_local global i32 0, align 4
@outer_tcp_ack_num = common dso_local global i32 0, align 4
@outer_vxlan_gpe_vni = common dso_local global i32 0, align 4
@outer_vxlan_gpe_next_protocol = common dso_local global i32 0, align 4
@outer_vxlan_gpe_flags = common dso_local global i32 0, align 4
@icmp_header_data = common dso_local global i32 0, align 4
@icmpv6_header_data = common dso_local global i32 0, align 4
@icmp_type = common dso_local global i32 0, align 4
@icmp_code = common dso_local global i32 0, align 4
@icmpv6_type = common dso_local global i32 0, align 4
@icmpv6_code = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5dr_match_misc3*)* @dr_ste_copy_mask_misc3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_copy_mask_misc3(i8* %0, %struct.mlx5dr_match_misc3* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5dr_match_misc3*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mlx5dr_match_misc3* %1, %struct.mlx5dr_match_misc3** %4, align 8
  %5 = load i32, i32* @fte_match_set_misc3, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @inner_tcp_seq_num, align 4
  %8 = call i8* @MLX5_GET(i32 %5, i8* %6, i32 %7)
  %9 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %9, i32 0, i32 12
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @fte_match_set_misc3, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @outer_tcp_seq_num, align 4
  %14 = call i8* @MLX5_GET(i32 %11, i8* %12, i32 %13)
  %15 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %15, i32 0, i32 11
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @fte_match_set_misc3, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @inner_tcp_ack_num, align 4
  %20 = call i8* @MLX5_GET(i32 %17, i8* %18, i32 %19)
  %21 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %21, i32 0, i32 10
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @fte_match_set_misc3, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @outer_tcp_ack_num, align 4
  %26 = call i8* @MLX5_GET(i32 %23, i8* %24, i32 %25)
  %27 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @fte_match_set_misc3, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @outer_vxlan_gpe_vni, align 4
  %32 = call i8* @MLX5_GET(i32 %29, i8* %30, i32 %31)
  %33 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %33, i32 0, i32 8
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @fte_match_set_misc3, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @outer_vxlan_gpe_next_protocol, align 4
  %38 = call i8* @MLX5_GET(i32 %35, i8* %36, i32 %37)
  %39 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %39, i32 0, i32 7
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @fte_match_set_misc3, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @outer_vxlan_gpe_flags, align 4
  %44 = call i8* @MLX5_GET(i32 %41, i8* %42, i32 %43)
  %45 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @fte_match_set_misc3, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* @icmp_header_data, align 4
  %50 = call i8* @MLX5_GET(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %51, i32 0, i32 5
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @fte_match_set_misc3, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @icmpv6_header_data, align 4
  %56 = call i8* @MLX5_GET(i32 %53, i8* %54, i32 %55)
  %57 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %57, i32 0, i32 4
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @fte_match_set_misc3, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @icmp_type, align 4
  %62 = call i8* @MLX5_GET(i32 %59, i8* %60, i32 %61)
  %63 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %63, i32 0, i32 3
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @fte_match_set_misc3, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* @icmp_code, align 4
  %68 = call i8* @MLX5_GET(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %69, i32 0, i32 2
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @fte_match_set_misc3, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* @icmpv6_type, align 4
  %74 = call i8* @MLX5_GET(i32 %71, i8* %72, i32 %73)
  %75 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @fte_match_set_misc3, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* @icmpv6_code, align 4
  %80 = call i8* @MLX5_GET(i32 %77, i8* %78, i32 %79)
  %81 = load %struct.mlx5dr_match_misc3*, %struct.mlx5dr_match_misc3** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_match_misc3, %struct.mlx5dr_match_misc3* %81, i32 0, i32 0
  store i8* %80, i8** %82, align 8
  ret void
}

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_copy_mask_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_copy_mask_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5dr_match_misc = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@fte_match_set_misc = common dso_local global i32 0, align 4
@gre_c_present = common dso_local global i32 0, align 4
@gre_k_present = common dso_local global i32 0, align 4
@gre_s_present = common dso_local global i32 0, align 4
@source_vhca_port = common dso_local global i32 0, align 4
@source_sqn = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@source_eswitch_owner_vhca_id = common dso_local global i32 0, align 4
@outer_second_prio = common dso_local global i32 0, align 4
@outer_second_cfi = common dso_local global i32 0, align 4
@outer_second_vid = common dso_local global i32 0, align 4
@inner_second_prio = common dso_local global i32 0, align 4
@inner_second_cfi = common dso_local global i32 0, align 4
@inner_second_vid = common dso_local global i32 0, align 4
@outer_second_cvlan_tag = common dso_local global i32 0, align 4
@inner_second_cvlan_tag = common dso_local global i32 0, align 4
@outer_second_svlan_tag = common dso_local global i32 0, align 4
@inner_second_svlan_tag = common dso_local global i32 0, align 4
@gre_protocol = common dso_local global i32 0, align 4
@gre_key = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@vxlan_vni = common dso_local global i32 0, align 4
@geneve_vni = common dso_local global i32 0, align 4
@geneve_oam = common dso_local global i32 0, align 4
@outer_ipv6_flow_label = common dso_local global i32 0, align 4
@inner_ipv6_flow_label = common dso_local global i32 0, align 4
@geneve_opt_len = common dso_local global i32 0, align 4
@geneve_protocol_type = common dso_local global i32 0, align 4
@bth_dst_qp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5dr_match_misc*)* @dr_ste_copy_mask_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_copy_mask_misc(i8* %0, %struct.mlx5dr_match_misc* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5dr_match_misc*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mlx5dr_match_misc* %1, %struct.mlx5dr_match_misc** %4, align 8
  %5 = load i32, i32* @fte_match_set_misc, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @gre_c_present, align 4
  %8 = call i8* @MLX5_GET(i32 %5, i8* %6, i32 %7)
  %9 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %9, i32 0, i32 27
  store i8* %8, i8** %10, align 8
  %11 = load i32, i32* @fte_match_set_misc, align 4
  %12 = load i8*, i8** %3, align 8
  %13 = load i32, i32* @gre_k_present, align 4
  %14 = call i8* @MLX5_GET(i32 %11, i8* %12, i32 %13)
  %15 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %15, i32 0, i32 26
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @fte_match_set_misc, align 4
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @gre_s_present, align 4
  %20 = call i8* @MLX5_GET(i32 %17, i8* %18, i32 %19)
  %21 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %21, i32 0, i32 25
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* @fte_match_set_misc, align 4
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @source_vhca_port, align 4
  %26 = call i8* @MLX5_GET(i32 %23, i8* %24, i32 %25)
  %27 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %27, i32 0, i32 24
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @fte_match_set_misc, align 4
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @source_sqn, align 4
  %32 = call i8* @MLX5_GET(i32 %29, i8* %30, i32 %31)
  %33 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %33, i32 0, i32 23
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* @fte_match_set_misc, align 4
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @source_port, align 4
  %38 = call i8* @MLX5_GET(i32 %35, i8* %36, i32 %37)
  %39 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %39, i32 0, i32 22
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* @fte_match_set_misc, align 4
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @source_eswitch_owner_vhca_id, align 4
  %44 = call i8* @MLX5_GET(i32 %41, i8* %42, i32 %43)
  %45 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %45, i32 0, i32 21
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @fte_match_set_misc, align 4
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* @outer_second_prio, align 4
  %50 = call i8* @MLX5_GET(i32 %47, i8* %48, i32 %49)
  %51 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %51, i32 0, i32 20
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* @fte_match_set_misc, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @outer_second_cfi, align 4
  %56 = call i8* @MLX5_GET(i32 %53, i8* %54, i32 %55)
  %57 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %57, i32 0, i32 19
  store i8* %56, i8** %58, align 8
  %59 = load i32, i32* @fte_match_set_misc, align 4
  %60 = load i8*, i8** %3, align 8
  %61 = load i32, i32* @outer_second_vid, align 4
  %62 = call i8* @MLX5_GET(i32 %59, i8* %60, i32 %61)
  %63 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %63, i32 0, i32 18
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @fte_match_set_misc, align 4
  %66 = load i8*, i8** %3, align 8
  %67 = load i32, i32* @inner_second_prio, align 4
  %68 = call i8* @MLX5_GET(i32 %65, i8* %66, i32 %67)
  %69 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %69, i32 0, i32 17
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* @fte_match_set_misc, align 4
  %72 = load i8*, i8** %3, align 8
  %73 = load i32, i32* @inner_second_cfi, align 4
  %74 = call i8* @MLX5_GET(i32 %71, i8* %72, i32 %73)
  %75 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %75, i32 0, i32 16
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @fte_match_set_misc, align 4
  %78 = load i8*, i8** %3, align 8
  %79 = load i32, i32* @inner_second_vid, align 4
  %80 = call i8* @MLX5_GET(i32 %77, i8* %78, i32 %79)
  %81 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %81, i32 0, i32 15
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @fte_match_set_misc, align 4
  %84 = load i8*, i8** %3, align 8
  %85 = load i32, i32* @outer_second_cvlan_tag, align 4
  %86 = call i8* @MLX5_GET(i32 %83, i8* %84, i32 %85)
  %87 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %88 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %87, i32 0, i32 14
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @fte_match_set_misc, align 4
  %90 = load i8*, i8** %3, align 8
  %91 = load i32, i32* @inner_second_cvlan_tag, align 4
  %92 = call i8* @MLX5_GET(i32 %89, i8* %90, i32 %91)
  %93 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %94 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %93, i32 0, i32 13
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @fte_match_set_misc, align 4
  %96 = load i8*, i8** %3, align 8
  %97 = load i32, i32* @outer_second_svlan_tag, align 4
  %98 = call i8* @MLX5_GET(i32 %95, i8* %96, i32 %97)
  %99 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %100 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %99, i32 0, i32 12
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* @fte_match_set_misc, align 4
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* @inner_second_svlan_tag, align 4
  %104 = call i8* @MLX5_GET(i32 %101, i8* %102, i32 %103)
  %105 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %106 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %105, i32 0, i32 11
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @fte_match_set_misc, align 4
  %108 = load i8*, i8** %3, align 8
  %109 = load i32, i32* @gre_protocol, align 4
  %110 = call i8* @MLX5_GET(i32 %107, i8* %108, i32 %109)
  %111 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %112 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %111, i32 0, i32 10
  store i8* %110, i8** %112, align 8
  %113 = load i32, i32* @fte_match_set_misc, align 4
  %114 = load i8*, i8** %3, align 8
  %115 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gre_key, i32 0, i32 0, i32 1), align 4
  %116 = call i8* @MLX5_GET(i32 %113, i8* %114, i32 %115)
  %117 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %118 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %117, i32 0, i32 9
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @fte_match_set_misc, align 4
  %120 = load i8*, i8** %3, align 8
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @gre_key, i32 0, i32 0, i32 0), align 4
  %122 = call i8* @MLX5_GET(i32 %119, i8* %120, i32 %121)
  %123 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %124 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %123, i32 0, i32 8
  store i8* %122, i8** %124, align 8
  %125 = load i32, i32* @fte_match_set_misc, align 4
  %126 = load i8*, i8** %3, align 8
  %127 = load i32, i32* @vxlan_vni, align 4
  %128 = call i8* @MLX5_GET(i32 %125, i8* %126, i32 %127)
  %129 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %130 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %129, i32 0, i32 7
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @fte_match_set_misc, align 4
  %132 = load i8*, i8** %3, align 8
  %133 = load i32, i32* @geneve_vni, align 4
  %134 = call i8* @MLX5_GET(i32 %131, i8* %132, i32 %133)
  %135 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %136 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %135, i32 0, i32 6
  store i8* %134, i8** %136, align 8
  %137 = load i32, i32* @fte_match_set_misc, align 4
  %138 = load i8*, i8** %3, align 8
  %139 = load i32, i32* @geneve_oam, align 4
  %140 = call i8* @MLX5_GET(i32 %137, i8* %138, i32 %139)
  %141 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %142 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %141, i32 0, i32 5
  store i8* %140, i8** %142, align 8
  %143 = load i32, i32* @fte_match_set_misc, align 4
  %144 = load i8*, i8** %3, align 8
  %145 = load i32, i32* @outer_ipv6_flow_label, align 4
  %146 = call i8* @MLX5_GET(i32 %143, i8* %144, i32 %145)
  %147 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %148 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %147, i32 0, i32 4
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @fte_match_set_misc, align 4
  %150 = load i8*, i8** %3, align 8
  %151 = load i32, i32* @inner_ipv6_flow_label, align 4
  %152 = call i8* @MLX5_GET(i32 %149, i8* %150, i32 %151)
  %153 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %154 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %153, i32 0, i32 3
  store i8* %152, i8** %154, align 8
  %155 = load i32, i32* @fte_match_set_misc, align 4
  %156 = load i8*, i8** %3, align 8
  %157 = load i32, i32* @geneve_opt_len, align 4
  %158 = call i8* @MLX5_GET(i32 %155, i8* %156, i32 %157)
  %159 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %160 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %159, i32 0, i32 2
  store i8* %158, i8** %160, align 8
  %161 = load i32, i32* @fte_match_set_misc, align 4
  %162 = load i8*, i8** %3, align 8
  %163 = load i32, i32* @geneve_protocol_type, align 4
  %164 = call i8* @MLX5_GET(i32 %161, i8* %162, i32 %163)
  %165 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %166 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %165, i32 0, i32 1
  store i8* %164, i8** %166, align 8
  %167 = load i32, i32* @fte_match_set_misc, align 4
  %168 = load i8*, i8** %3, align 8
  %169 = load i32, i32* @bth_dst_qp, align 4
  %170 = call i8* @MLX5_GET(i32 %167, i8* %168, i32 %169)
  %171 = load %struct.mlx5dr_match_misc*, %struct.mlx5dr_match_misc** %4, align 8
  %172 = getelementptr inbounds %struct.mlx5dr_match_misc, %struct.mlx5dr_match_misc* %171, i32 0, i32 0
  store i8* %170, i8** %172, align 8
  ret void
}

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

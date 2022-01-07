; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_copy_mask_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_dr_ste_copy_mask_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5dr_match_spec = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@fte_match_set_lyr_2_4 = common dso_local global i32 0, align 4
@smac_47_16 = common dso_local global i32 0, align 4
@smac_15_0 = common dso_local global i32 0, align 4
@ethertype = common dso_local global i32 0, align 4
@dmac_47_16 = common dso_local global i32 0, align 4
@dmac_15_0 = common dso_local global i32 0, align 4
@first_prio = common dso_local global i32 0, align 4
@first_cfi = common dso_local global i32 0, align 4
@first_vid = common dso_local global i32 0, align 4
@ip_protocol = common dso_local global i32 0, align 4
@ip_dscp = common dso_local global i32 0, align 4
@ip_ecn = common dso_local global i32 0, align 4
@cvlan_tag = common dso_local global i32 0, align 4
@svlan_tag = common dso_local global i32 0, align 4
@frag = common dso_local global i32 0, align 4
@ip_version = common dso_local global i32 0, align 4
@tcp_flags = common dso_local global i32 0, align 4
@tcp_sport = common dso_local global i32 0, align 4
@tcp_dport = common dso_local global i32 0, align 4
@ttl_hoplimit = common dso_local global i32 0, align 4
@udp_sport = common dso_local global i32 0, align 4
@udp_dport = common dso_local global i32 0, align 4
@src_ipv4_src_ipv6 = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@dst_ipv4_dst_ipv6 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5dr_match_spec*)* @dr_ste_copy_mask_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_ste_copy_mask_spec(i8* %0, %struct.mlx5dr_match_spec* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5dr_match_spec*, align 8
  %5 = alloca [4 x i32], align 16
  store i8* %0, i8** %3, align 8
  store %struct.mlx5dr_match_spec* %1, %struct.mlx5dr_match_spec** %4, align 8
  %6 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = load i32, i32* @smac_47_16, align 4
  %9 = call i8* @MLX5_GET(i32 %6, i8* %7, i32 %8)
  %10 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %10, i32 0, i32 28
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = load i32, i32* @smac_15_0, align 4
  %15 = call i8* @MLX5_GET(i32 %12, i8* %13, i32 %14)
  %16 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %16, i32 0, i32 27
  store i8* %15, i8** %17, align 8
  %18 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @ethertype, align 4
  %21 = call i8* @MLX5_GET(i32 %18, i8* %19, i32 %20)
  %22 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %22, i32 0, i32 26
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* @dmac_47_16, align 4
  %27 = call i8* @MLX5_GET(i32 %24, i8* %25, i32 %26)
  %28 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %28, i32 0, i32 25
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* @dmac_15_0, align 4
  %33 = call i8* @MLX5_GET(i32 %30, i8* %31, i32 %32)
  %34 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %34, i32 0, i32 24
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %37 = load i8*, i8** %3, align 8
  %38 = load i32, i32* @first_prio, align 4
  %39 = call i8* @MLX5_GET(i32 %36, i8* %37, i32 %38)
  %40 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %40, i32 0, i32 23
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* @first_cfi, align 4
  %45 = call i8* @MLX5_GET(i32 %42, i8* %43, i32 %44)
  %46 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %46, i32 0, i32 22
  store i8* %45, i8** %47, align 8
  %48 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %49 = load i8*, i8** %3, align 8
  %50 = load i32, i32* @first_vid, align 4
  %51 = call i8* @MLX5_GET(i32 %48, i8* %49, i32 %50)
  %52 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %52, i32 0, i32 21
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %55 = load i8*, i8** %3, align 8
  %56 = load i32, i32* @ip_protocol, align 4
  %57 = call i8* @MLX5_GET(i32 %54, i8* %55, i32 %56)
  %58 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %58, i32 0, i32 20
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @ip_dscp, align 4
  %63 = call i8* @MLX5_GET(i32 %60, i8* %61, i32 %62)
  %64 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %64, i32 0, i32 19
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %67 = load i8*, i8** %3, align 8
  %68 = load i32, i32* @ip_ecn, align 4
  %69 = call i8* @MLX5_GET(i32 %66, i8* %67, i32 %68)
  %70 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %70, i32 0, i32 18
  store i8* %69, i8** %71, align 8
  %72 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %73 = load i8*, i8** %3, align 8
  %74 = load i32, i32* @cvlan_tag, align 4
  %75 = call i8* @MLX5_GET(i32 %72, i8* %73, i32 %74)
  %76 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %77 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %76, i32 0, i32 17
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %79 = load i8*, i8** %3, align 8
  %80 = load i32, i32* @svlan_tag, align 4
  %81 = call i8* @MLX5_GET(i32 %78, i8* %79, i32 %80)
  %82 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %83 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %82, i32 0, i32 16
  store i8* %81, i8** %83, align 8
  %84 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %85 = load i8*, i8** %3, align 8
  %86 = load i32, i32* @frag, align 4
  %87 = call i8* @MLX5_GET(i32 %84, i8* %85, i32 %86)
  %88 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %89 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %88, i32 0, i32 15
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %91 = load i8*, i8** %3, align 8
  %92 = load i32, i32* @ip_version, align 4
  %93 = call i8* @MLX5_GET(i32 %90, i8* %91, i32 %92)
  %94 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %94, i32 0, i32 14
  store i8* %93, i8** %95, align 8
  %96 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %97 = load i8*, i8** %3, align 8
  %98 = load i32, i32* @tcp_flags, align 4
  %99 = call i8* @MLX5_GET(i32 %96, i8* %97, i32 %98)
  %100 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %101 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %100, i32 0, i32 13
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %103 = load i8*, i8** %3, align 8
  %104 = load i32, i32* @tcp_sport, align 4
  %105 = call i8* @MLX5_GET(i32 %102, i8* %103, i32 %104)
  %106 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %107 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %106, i32 0, i32 12
  store i8* %105, i8** %107, align 8
  %108 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %109 = load i8*, i8** %3, align 8
  %110 = load i32, i32* @tcp_dport, align 4
  %111 = call i8* @MLX5_GET(i32 %108, i8* %109, i32 %110)
  %112 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %113 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %112, i32 0, i32 11
  store i8* %111, i8** %113, align 8
  %114 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %115 = load i8*, i8** %3, align 8
  %116 = load i32, i32* @ttl_hoplimit, align 4
  %117 = call i8* @MLX5_GET(i32 %114, i8* %115, i32 %116)
  %118 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %119 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %118, i32 0, i32 10
  store i8* %117, i8** %119, align 8
  %120 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %121 = load i8*, i8** %3, align 8
  %122 = load i32, i32* @udp_sport, align 4
  %123 = call i8* @MLX5_GET(i32 %120, i8* %121, i32 %122)
  %124 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %124, i32 0, i32 9
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %127 = load i8*, i8** %3, align 8
  %128 = load i32, i32* @udp_dport, align 4
  %129 = call i8* @MLX5_GET(i32 %126, i8* %127, i32 %128)
  %130 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %131 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %130, i32 0, i32 8
  store i8* %129, i8** %131, align 8
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %133 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %134 = load i8*, i8** %3, align 8
  %135 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @src_ipv4_src_ipv6, i32 0, i32 0, i32 0), align 4
  %136 = call i32 @MLX5_ADDR_OF(i32 %133, i8* %134, i32 %135)
  %137 = call i32 @memcpy(i32* %132, i32 %136, i32 16)
  %138 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %139 = load i32, i32* %138, align 16
  %140 = call i8* @be32_to_cpu(i32 %139)
  %141 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %142 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %141, i32 0, i32 7
  store i8* %140, i8** %142, align 8
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @be32_to_cpu(i32 %144)
  %146 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %147 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %149 = load i32, i32* %148, align 8
  %150 = call i8* @be32_to_cpu(i32 %149)
  %151 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %152 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %151, i32 0, i32 5
  store i8* %150, i8** %152, align 8
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %154 = load i32, i32* %153, align 4
  %155 = call i8* @be32_to_cpu(i32 %154)
  %156 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %157 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %156, i32 0, i32 4
  store i8* %155, i8** %157, align 8
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %159 = load i32, i32* @fte_match_set_lyr_2_4, align 4
  %160 = load i8*, i8** %3, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dst_ipv4_dst_ipv6, i32 0, i32 0, i32 0), align 4
  %162 = call i32 @MLX5_ADDR_OF(i32 %159, i8* %160, i32 %161)
  %163 = call i32 @memcpy(i32* %158, i32 %162, i32 16)
  %164 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %165 = load i32, i32* %164, align 16
  %166 = call i8* @be32_to_cpu(i32 %165)
  %167 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %168 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %167, i32 0, i32 3
  store i8* %166, i8** %168, align 8
  %169 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  %170 = load i32, i32* %169, align 4
  %171 = call i8* @be32_to_cpu(i32 %170)
  %172 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %173 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %172, i32 0, i32 2
  store i8* %171, i8** %173, align 8
  %174 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  %175 = load i32, i32* %174, align 8
  %176 = call i8* @be32_to_cpu(i32 %175)
  %177 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %178 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %177, i32 0, i32 1
  store i8* %176, i8** %178, align 8
  %179 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  %180 = load i32, i32* %179, align 4
  %181 = call i8* @be32_to_cpu(i32 %180)
  %182 = load %struct.mlx5dr_match_spec*, %struct.mlx5dr_match_spec** %4, align 8
  %183 = getelementptr inbounds %struct.mlx5dr_match_spec, %struct.mlx5dr_match_spec* %182, i32 0, i32 0
  store i8* %181, i8** %183, align 8
  ret void
}

declare dso_local i8* @MLX5_GET(i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_update_gid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_resource_tracker.c_update_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { %struct.mlx4_qp_context* }
%struct.mlx4_qp_context = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MLX4_QP_ST_UD = common dso_local global i64 0, align 8
@MLX4_QP_ST_RC = common dso_local global i64 0, align 8
@MLX4_QP_ST_XRC = common dso_local global i64 0, align 8
@MLX4_QP_ST_UC = common dso_local global i64 0, align 8
@MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH = common dso_local global i32 0, align 4
@MLX4_QP_OPTPAR_ALT_ADDR_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*, i32)* @update_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gid(%struct.mlx4_dev* %0, %struct.mlx4_cmd_mailbox* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_qp_context*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_cmd_mailbox* %1, %struct.mlx4_cmd_mailbox** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %11, i32 0, i32 0
  %13 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %12, align 8
  %14 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %13, i64 8
  store %struct.mlx4_qp_context* %14, %struct.mlx4_qp_context** %7, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %15, i32 0, i32 0
  %17 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %16, align 8
  %18 = bitcast %struct.mlx4_qp_context* %17 to i32*
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @be32_to_cpu(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %22 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = ashr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* @MLX4_QP_ST_UD, align 8
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %59

31:                                               ; preds = %3
  %32 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %35, 6
  %37 = and i32 %36, 1
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @mlx4_is_eth(%struct.mlx4_dev* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @mlx4_get_base_gid_ix(%struct.mlx4_dev* %44, i32 %45, i32 %46)
  %48 = or i32 %47, 128
  %49 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %50 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  br label %58

52:                                               ; preds = %31
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, 128
  %55 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %52, %43
  br label %151

59:                                               ; preds = %3
  %60 = load i64, i64* @MLX4_QP_ST_RC, align 8
  %61 = load i64, i64* %9, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i64, i64* @MLX4_QP_ST_XRC, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i64, i64* @MLX4_QP_ST_UC, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %150

71:                                               ; preds = %67, %63, %59
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* @MLX4_QP_OPTPAR_PRIMARY_ADDR_PATH, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %110

76:                                               ; preds = %71
  %77 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %78 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = ashr i32 %80, 6
  %82 = and i32 %81, 1
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  %84 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i64 @mlx4_is_eth(%struct.mlx4_dev* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %76
  %89 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* %10, align 4
  %92 = call i32 @mlx4_get_base_gid_ix(%struct.mlx4_dev* %89, i32 %90, i32 %91)
  %93 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %94 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, %92
  store i32 %97, i32* %95, align 4
  %98 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %99 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, 127
  store i32 %102, i32* %100, align 4
  br label %109

103:                                              ; preds = %76
  %104 = load i32, i32* %6, align 4
  %105 = and i32 %104, 127
  %106 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %107 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  br label %109

109:                                              ; preds = %103, %88
  br label %110

110:                                              ; preds = %109, %71
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @MLX4_QP_OPTPAR_ALT_ADDR_PATH, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %149

115:                                              ; preds = %110
  %116 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %117 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = ashr i32 %119, 6
  %121 = and i32 %120, 1
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %124 = load i32, i32* %10, align 4
  %125 = call i64 @mlx4_is_eth(%struct.mlx4_dev* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %142

127:                                              ; preds = %115
  %128 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* %10, align 4
  %131 = call i32 @mlx4_get_base_gid_ix(%struct.mlx4_dev* %128, i32 %129, i32 %130)
  %132 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %133 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, %131
  store i32 %136, i32* %134, align 4
  %137 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %138 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, 127
  store i32 %141, i32* %139, align 4
  br label %148

142:                                              ; preds = %115
  %143 = load i32, i32* %6, align 4
  %144 = and i32 %143, 127
  %145 = load %struct.mlx4_qp_context*, %struct.mlx4_qp_context** %7, align 8
  %146 = getelementptr inbounds %struct.mlx4_qp_context, %struct.mlx4_qp_context* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  store i32 %144, i32* %147, align 4
  br label %148

148:                                              ; preds = %142, %127
  br label %149

149:                                              ; preds = %148, %110
  br label %150

150:                                              ; preds = %149, %67
  br label %151

151:                                              ; preds = %150, %58
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @mlx4_is_eth(%struct.mlx4_dev*, i32) #1

declare dso_local i32 @mlx4_get_base_gid_ix(%struct.mlx4_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

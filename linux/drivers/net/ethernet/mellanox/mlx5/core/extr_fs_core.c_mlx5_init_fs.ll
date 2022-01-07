; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_init_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_mlx5_init_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5_flow_steering* }
%struct.mlx5_flow_steering = type { i8*, i8*, %struct.mlx5_core_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"mlx5_fs_fgs\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"mlx5_fs_ftes\00", align 1
@port_type = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@nic_flow_table = common dso_local global i32 0, align 4
@MLX5_CAP_PORT_TYPE_IB = common dso_local global i64 0, align 8
@ipoib_enhanced_offloads = common dso_local global i32 0, align 4
@ft_support = common dso_local global i32 0, align 4
@table_miss_action_domain = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_init_fs(%struct.mlx5_core_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_flow_steering*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %7 = call i32 @mlx5_init_fc_stats(%struct.mlx5_core_dev* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %183

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.mlx5_flow_steering* @kzalloc(i32 24, i32 %13)
  store %struct.mlx5_flow_steering* %14, %struct.mlx5_flow_steering** %4, align 8
  %15 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %16 = icmp ne %struct.mlx5_flow_steering* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %183

20:                                               ; preds = %12
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %22, i32 0, i32 2
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %23, align 8
  %24 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store %struct.mlx5_flow_steering* %24, %struct.mlx5_flow_steering** %27, align 8
  %28 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %29 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %29, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = call i8* @kmem_cache_create(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 4, i32 0, i32 0, i32* null)
  %32 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %20
  %39 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_steering, %struct.mlx5_flow_steering* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = icmp ne i8* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %38, %20
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %179

46:                                               ; preds = %38
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %48 = load i32, i32* @port_type, align 4
  %49 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %47, i32 %48)
  %50 = load i64, i64* @MLX5_CAP_PORT_TYPE_ETH, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %54 = load i32, i32* @nic_flow_table, align 4
  %55 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %68, label %57

57:                                               ; preds = %52, %46
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %59 = load i32, i32* @port_type, align 4
  %60 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %58, i32 %59)
  %61 = load i64, i64* @MLX5_CAP_PORT_TYPE_IB, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %80

63:                                               ; preds = %57
  %64 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %65 = load i32, i32* @ipoib_enhanced_offloads, align 4
  %66 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %63, %52
  %69 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %70 = load i32, i32* @ft_support, align 4
  %71 = call i64 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %75 = call i32 @init_root_ns(%struct.mlx5_flow_steering* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %179

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %68, %63, %57
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %82 = call i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %121

84:                                               ; preds = %80
  %85 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %86 = load i32, i32* @ft_support, align 4
  %87 = call i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %84
  %90 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %91 = call i32 @init_fdb_root_ns(%struct.mlx5_flow_steering* %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %179

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95, %84
  %97 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %98 = load i32, i32* @ft_support, align 4
  %99 = call i64 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %103 = call i32 @init_egress_acls_root_ns(%struct.mlx5_core_dev* %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %101
  br label %179

107:                                              ; preds = %101
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %110 = load i32, i32* @ft_support, align 4
  %111 = call i64 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %115 = call i32 @init_ingress_acls_root_ns(%struct.mlx5_core_dev* %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  br label %179

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %108
  br label %121

121:                                              ; preds = %120, %80
  %122 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %123 = load i32, i32* @ft_support, align 4
  %124 = call i64 @MLX5_CAP_FLOWTABLE_SNIFFER_RX(%struct.mlx5_core_dev* %122, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %121
  %127 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %128 = call i32 @init_sniffer_rx_root_ns(%struct.mlx5_flow_steering* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %179

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132, %121
  %134 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %135 = load i32, i32* @ft_support, align 4
  %136 = call i64 @MLX5_CAP_FLOWTABLE_SNIFFER_TX(%struct.mlx5_core_dev* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %133
  %139 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %140 = call i32 @init_sniffer_tx_root_ns(%struct.mlx5_flow_steering* %139)
  store i32 %140, i32* %5, align 4
  %141 = load i32, i32* %5, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %179

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %133
  %146 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %147 = load i32, i32* @ft_support, align 4
  %148 = call i64 @MLX5_CAP_FLOWTABLE_RDMA_RX(%struct.mlx5_core_dev* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %145
  %151 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %152 = load i32, i32* @table_miss_action_domain, align 4
  %153 = call i64 @MLX5_CAP_FLOWTABLE_RDMA_RX(%struct.mlx5_core_dev* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %150
  %156 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %157 = call i32 @init_rdma_rx_root_ns(%struct.mlx5_flow_steering* %156)
  store i32 %157, i32* %5, align 4
  %158 = load i32, i32* %5, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155
  br label %179

161:                                              ; preds = %155
  br label %162

162:                                              ; preds = %161, %150, %145
  %163 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %164 = call i64 @MLX5_IPSEC_DEV(%struct.mlx5_core_dev* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %162
  %167 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %168 = load i32, i32* @ft_support, align 4
  %169 = call i64 @MLX5_CAP_FLOWTABLE_NIC_TX(%struct.mlx5_core_dev* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %166, %162
  %172 = load %struct.mlx5_flow_steering*, %struct.mlx5_flow_steering** %4, align 8
  %173 = call i32 @init_egress_root_ns(%struct.mlx5_flow_steering* %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %179

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %166
  store i32 0, i32* %2, align 4
  br label %183

179:                                              ; preds = %176, %160, %143, %131, %118, %106, %94, %78, %43
  %180 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %181 = call i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev* %180)
  %182 = load i32, i32* %5, align 4
  store i32 %182, i32* %2, align 4
  br label %183

183:                                              ; preds = %179, %178, %17, %10
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @mlx5_init_fc_stats(%struct.mlx5_core_dev*) #1

declare dso_local %struct.mlx5_flow_steering* @kzalloc(i32, i32) #1

declare dso_local i8* @kmem_cache_create(i8*, i32, i32, i32, i32*) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE_NIC_RX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_root_ns(%struct.mlx5_flow_steering*) #1

declare dso_local i64 @MLX5_ESWITCH_MANAGER(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_CAP_ESW_FLOWTABLE_FDB(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_fdb_root_ns(%struct.mlx5_flow_steering*) #1

declare dso_local i64 @MLX5_CAP_ESW_EGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_egress_acls_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_CAP_ESW_INGRESS_ACL(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_ingress_acls_root_ns(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE_SNIFFER_RX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_sniffer_rx_root_ns(%struct.mlx5_flow_steering*) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE_SNIFFER_TX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_sniffer_tx_root_ns(%struct.mlx5_flow_steering*) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE_RDMA_RX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_rdma_rx_root_ns(%struct.mlx5_flow_steering*) #1

declare dso_local i64 @MLX5_IPSEC_DEV(%struct.mlx5_core_dev*) #1

declare dso_local i64 @MLX5_CAP_FLOWTABLE_NIC_TX(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @init_egress_root_ns(%struct.mlx5_flow_steering*) #1

declare dso_local i32 @mlx5_cleanup_fs(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

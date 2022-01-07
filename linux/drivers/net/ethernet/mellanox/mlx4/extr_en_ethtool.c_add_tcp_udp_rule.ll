; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_add_tcp_udp_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_add_tcp_udp_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { i32 }
%struct.ethtool_rxnfc = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.ethtool_tcpip4_spec }
%struct.ethtool_tcpip4_spec = type { i64, i64, i64, i64 }
%struct.list_head = type { i32 }
%struct.mlx4_spec_list = type { i32, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_14__ = type { i8*, i8*, i32, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_IPV4 = common dso_local global i32 0, align 4
@TCP_V4_FLOW = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_TCP = common dso_local global i32 0, align 4
@MLX4_NET_TRANS_RULE_ID_UDP = common dso_local global i32 0, align 4
@EN_ETHTOOL_WORD_MASK = common dso_local global i8* null, align 8
@EN_ETHTOOL_SHORT_MASK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, i32)* @add_tcp_udp_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_tcp_udp_rule(%struct.mlx4_en_priv* %0, %struct.ethtool_rxnfc* %1, %struct.list_head* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.ethtool_rxnfc*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx4_spec_list*, align 8
  %12 = alloca %struct.mlx4_spec_list*, align 8
  %13 = alloca %struct.mlx4_spec_list*, align 8
  %14 = alloca %struct.ethtool_tcpip4_spec*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %6, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %7, align 8
  store %struct.list_head* %2, %struct.list_head** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %11, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %12, align 8
  store %struct.mlx4_spec_list* null, %struct.mlx4_spec_list** %13, align 8
  %15 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %16 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store %struct.ethtool_tcpip4_spec* %18, %struct.ethtool_tcpip4_spec** %14, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.mlx4_spec_list* @kzalloc(i32 64, i32 %19)
  store %struct.mlx4_spec_list* %20, %struct.mlx4_spec_list** %11, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.mlx4_spec_list* @kzalloc(i32 64, i32 %21)
  store %struct.mlx4_spec_list* %22, %struct.mlx4_spec_list** %12, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.mlx4_spec_list* @kzalloc(i32 64, i32 %23)
  store %struct.mlx4_spec_list* %24, %struct.mlx4_spec_list** %13, align 8
  %25 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %26 = icmp ne %struct.mlx4_spec_list* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %29 = icmp ne %struct.mlx4_spec_list* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %32 = icmp ne %struct.mlx4_spec_list* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30, %27, %4
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  br label %202

36:                                               ; preds = %30
  %37 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_IPV4, align 4
  %38 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %39 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @TCP_V4_FLOW, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %98

43:                                               ; preds = %36
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %45 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %46 = load %struct.list_head*, %struct.list_head** %8, align 8
  %47 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %48 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %49 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv* %44, %struct.ethtool_rxnfc* %45, %struct.list_head* %46, %struct.mlx4_spec_list* %47, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  br label %202

58:                                               ; preds = %43
  %59 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_TCP, align 4
  %60 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %61 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %63 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %69 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 3
  store i32 %67, i32* %70, align 4
  %71 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %72 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %78 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i32 %76, i32* %79, align 8
  %80 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %81 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %87 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %90 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %96 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  br label %153

98:                                               ; preds = %36
  %99 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %100 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %101 = load %struct.list_head*, %struct.list_head** %8, align 8
  %102 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %103 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %104 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv* %99, %struct.ethtool_rxnfc* %100, %struct.list_head* %101, %struct.mlx4_spec_list* %102, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %98
  br label %202

113:                                              ; preds = %98
  %114 = load i32, i32* @MLX4_NET_TRANS_RULE_ID_UDP, align 4
  %115 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %116 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %115, i32 0, i32 3
  store i32 %114, i32* %116, align 8
  %117 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %118 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %124 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %123, i32 0, i32 2
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 4
  %126 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %127 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %133 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 8
  %135 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %136 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %142 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 3
  store i32 %140, i32* %143, align 4
  %144 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %7, align 8
  %145 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %151 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 2
  store i32 %149, i32* %152, align 8
  br label %153

153:                                              ; preds = %113, %58
  %154 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %155 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %153
  %159 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %160 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %161 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  br label %163

163:                                              ; preds = %158, %153
  %164 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %165 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %173

168:                                              ; preds = %163
  %169 = load i8*, i8** @EN_ETHTOOL_WORD_MASK, align 8
  %170 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %171 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  store i8* %169, i8** %172, align 8
  br label %173

173:                                              ; preds = %168, %163
  %174 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %175 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %183

178:                                              ; preds = %173
  %179 = load i8*, i8** @EN_ETHTOOL_SHORT_MASK, align 8
  %180 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %181 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i32 0, i32 1
  store i8* %179, i8** %182, align 8
  br label %183

183:                                              ; preds = %178, %173
  %184 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %14, align 8
  %185 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %193

188:                                              ; preds = %183
  %189 = load i8*, i8** @EN_ETHTOOL_SHORT_MASK, align 8
  %190 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %191 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  store i8* %189, i8** %192, align 8
  br label %193

193:                                              ; preds = %188, %183
  %194 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %195 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %194, i32 0, i32 0
  %196 = load %struct.list_head*, %struct.list_head** %8, align 8
  %197 = call i32 @list_add_tail(i32* %195, %struct.list_head* %196)
  %198 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %199 = getelementptr inbounds %struct.mlx4_spec_list, %struct.mlx4_spec_list* %198, i32 0, i32 0
  %200 = load %struct.list_head*, %struct.list_head** %8, align 8
  %201 = call i32 @list_add_tail(i32* %199, %struct.list_head* %200)
  store i32 0, i32* %5, align 4
  br label %210

202:                                              ; preds = %112, %57, %33
  %203 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %11, align 8
  %204 = call i32 @kfree(%struct.mlx4_spec_list* %203)
  %205 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %12, align 8
  %206 = call i32 @kfree(%struct.mlx4_spec_list* %205)
  %207 = load %struct.mlx4_spec_list*, %struct.mlx4_spec_list** %13, align 8
  %208 = call i32 @kfree(%struct.mlx4_spec_list* %207)
  %209 = load i32, i32* %10, align 4
  store i32 %209, i32* %5, align 4
  br label %210

210:                                              ; preds = %202, %193
  %211 = load i32, i32* %5, align 4
  ret i32 %211
}

declare dso_local %struct.mlx4_spec_list* @kzalloc(i32, i32) #1

declare dso_local i32 @mlx4_en_ethtool_add_mac_rule_by_ipv4(%struct.mlx4_en_priv*, %struct.ethtool_rxnfc*, %struct.list_head*, %struct.mlx4_spec_list*, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @kfree(%struct.mlx4_spec_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_router_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.mlxsw_sp_router* }
%struct.mlxsw_sp_router = type { %struct.TYPE_9__, %struct.TYPE_10__, i32, i32, %struct.TYPE_8__, %struct.TYPE_11__, i32, i32, %struct.mlxsw_sp* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxsw_sp_inetaddr_event = common dso_local global i32 0, align 4
@mlxsw_sp_inet6addr_event = common dso_local global i32 0, align 4
@mlxsw_sp_nexthop_ht_params = common dso_local global i32 0, align 4
@mlxsw_sp_nexthop_group_ht_params = common dso_local global i32 0, align 4
@mlxsw_sp_mr_tcam_ops = common dso_local global i32 0, align 4
@mlxsw_sp_router_netevent_event = common dso_local global i32 0, align 4
@mlxsw_sp_router_fib_event = common dso_local global i32 0, align 4
@mlxsw_sp_router_fib_dump_flush = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_router_init(%struct.mlxsw_sp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_router*, align 8
  %5 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.mlxsw_sp_router* @kzalloc(i32 40, i32 %6)
  store %struct.mlxsw_sp_router* %7, %struct.mlxsw_sp_router** %4, align 8
  %8 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %9 = icmp ne %struct.mlxsw_sp_router* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %210

13:                                               ; preds = %1
  %14 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  store %struct.mlxsw_sp_router* %14, %struct.mlxsw_sp_router** %16, align 8
  %17 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %18 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %18, i32 0, i32 8
  store %struct.mlxsw_sp* %17, %struct.mlxsw_sp** %19, align 8
  %20 = load i32, i32* @mlxsw_sp_inetaddr_event, align 4
  %21 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %24, i32 0, i32 0
  %26 = call i32 @register_inetaddr_notifier(%struct.TYPE_9__* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %13
  br label %204

30:                                               ; preds = %13
  %31 = load i32, i32* @mlxsw_sp_inet6addr_event, align 4
  %32 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %35, i32 0, i32 1
  %37 = call i32 @register_inet6addr_notifier(%struct.TYPE_10__* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %200

41:                                               ; preds = %30
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %43 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %42, i32 0, i32 0
  %44 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %43, align 8
  %45 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %44, i32 0, i32 7
  %46 = call i32 @INIT_LIST_HEAD(i32* %45)
  %47 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %48 = call i32 @__mlxsw_sp_router_init(%struct.mlxsw_sp* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %196

52:                                               ; preds = %41
  %53 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %54 = call i32 @mlxsw_sp_rifs_init(%struct.mlxsw_sp* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %193

58:                                               ; preds = %52
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %60 = call i32 @mlxsw_sp_ipips_init(%struct.mlxsw_sp* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %190

64:                                               ; preds = %58
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %66 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %65, i32 0, i32 0
  %67 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %66, align 8
  %68 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %67, i32 0, i32 2
  %69 = call i32 @rhashtable_init(i32* %68, i32* @mlxsw_sp_nexthop_ht_params)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %187

73:                                               ; preds = %64
  %74 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %75 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %74, i32 0, i32 0
  %76 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %75, align 8
  %77 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %76, i32 0, i32 3
  %78 = call i32 @rhashtable_init(i32* %77, i32* @mlxsw_sp_nexthop_group_ht_params)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %73
  br label %181

82:                                               ; preds = %73
  %83 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %84 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %83, i32 0, i32 0
  %85 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %84, align 8
  %86 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %85, i32 0, i32 6
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %89 = call i32 @mlxsw_sp_lpm_init(%struct.mlxsw_sp* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  br label %175

93:                                               ; preds = %82
  %94 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %95 = call i32 @mlxsw_sp_mr_init(%struct.mlxsw_sp* %94, i32* @mlxsw_sp_mr_tcam_ops)
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  br label %172

99:                                               ; preds = %93
  %100 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %101 = call i32 @mlxsw_sp_vrs_init(%struct.mlxsw_sp* %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %169

105:                                              ; preds = %99
  %106 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %107 = call i32 @mlxsw_sp_neigh_init(%struct.mlxsw_sp* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %166

111:                                              ; preds = %105
  %112 = load i32, i32* @mlxsw_sp_router_netevent_event, align 4
  %113 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %114 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %113, i32 0, i32 0
  %115 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %114, align 8
  %116 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  store i32 %112, i32* %117, align 8
  %118 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %119 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %118, i32 0, i32 0
  %120 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %119, align 8
  %121 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %120, i32 0, i32 4
  %122 = call i32 @register_netevent_notifier(%struct.TYPE_8__* %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %111
  br label %163

126:                                              ; preds = %111
  %127 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %128 = call i32 @mlxsw_sp_mp_hash_init(%struct.mlxsw_sp* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %157

132:                                              ; preds = %126
  %133 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %134 = call i32 @mlxsw_sp_dscp_init(%struct.mlxsw_sp* %133)
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  br label %156

138:                                              ; preds = %132
  %139 = load i32, i32* @mlxsw_sp_router_fib_event, align 4
  %140 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %141 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %140, i32 0, i32 0
  %142 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %141, align 8
  %143 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  store i32 %139, i32* %144, align 4
  %145 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %146 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %145, i32 0, i32 0
  %147 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %146, align 8
  %148 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %147, i32 0, i32 5
  %149 = load i32, i32* @mlxsw_sp_router_fib_dump_flush, align 4
  %150 = call i32 @register_fib_notifier(%struct.TYPE_11__* %148, i32 %149)
  store i32 %150, i32* %5, align 4
  %151 = load i32, i32* %5, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %138
  br label %155

154:                                              ; preds = %138
  store i32 0, i32* %2, align 4
  br label %210

155:                                              ; preds = %153
  br label %156

156:                                              ; preds = %155, %137
  br label %157

157:                                              ; preds = %156, %131
  %158 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %159 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %158, i32 0, i32 0
  %160 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %159, align 8
  %161 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %160, i32 0, i32 4
  %162 = call i32 @unregister_netevent_notifier(%struct.TYPE_8__* %161)
  br label %163

163:                                              ; preds = %157, %125
  %164 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %165 = call i32 @mlxsw_sp_neigh_fini(%struct.mlxsw_sp* %164)
  br label %166

166:                                              ; preds = %163, %110
  %167 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %168 = call i32 @mlxsw_sp_vrs_fini(%struct.mlxsw_sp* %167)
  br label %169

169:                                              ; preds = %166, %104
  %170 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %171 = call i32 @mlxsw_sp_mr_fini(%struct.mlxsw_sp* %170)
  br label %172

172:                                              ; preds = %169, %98
  %173 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %174 = call i32 @mlxsw_sp_lpm_fini(%struct.mlxsw_sp* %173)
  br label %175

175:                                              ; preds = %172, %92
  %176 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %177 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %176, i32 0, i32 0
  %178 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %177, align 8
  %179 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %178, i32 0, i32 3
  %180 = call i32 @rhashtable_destroy(i32* %179)
  br label %181

181:                                              ; preds = %175, %81
  %182 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %183 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %182, i32 0, i32 0
  %184 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %183, align 8
  %185 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %184, i32 0, i32 2
  %186 = call i32 @rhashtable_destroy(i32* %185)
  br label %187

187:                                              ; preds = %181, %72
  %188 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %189 = call i32 @mlxsw_sp_ipips_fini(%struct.mlxsw_sp* %188)
  br label %190

190:                                              ; preds = %187, %63
  %191 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %192 = call i32 @mlxsw_sp_rifs_fini(%struct.mlxsw_sp* %191)
  br label %193

193:                                              ; preds = %190, %57
  %194 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %195 = call i32 @__mlxsw_sp_router_fini(%struct.mlxsw_sp* %194)
  br label %196

196:                                              ; preds = %193, %51
  %197 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %198 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %197, i32 0, i32 1
  %199 = call i32 @unregister_inet6addr_notifier(%struct.TYPE_10__* %198)
  br label %200

200:                                              ; preds = %196, %40
  %201 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %4, align 8
  %202 = getelementptr inbounds %struct.mlxsw_sp_router, %struct.mlxsw_sp_router* %201, i32 0, i32 0
  %203 = call i32 @unregister_inetaddr_notifier(%struct.TYPE_9__* %202)
  br label %204

204:                                              ; preds = %200, %29
  %205 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %206 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %205, i32 0, i32 0
  %207 = load %struct.mlxsw_sp_router*, %struct.mlxsw_sp_router** %206, align 8
  %208 = call i32 @kfree(%struct.mlxsw_sp_router* %207)
  %209 = load i32, i32* %5, align 4
  store i32 %209, i32* %2, align 4
  br label %210

210:                                              ; preds = %204, %154, %10
  %211 = load i32, i32* %2, align 4
  ret i32 %211
}

declare dso_local %struct.mlxsw_sp_router* @kzalloc(i32, i32) #1

declare dso_local i32 @register_inetaddr_notifier(%struct.TYPE_9__*) #1

declare dso_local i32 @register_inet6addr_notifier(%struct.TYPE_10__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @__mlxsw_sp_router_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_rifs_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_ipips_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @rhashtable_init(i32*, i32*) #1

declare dso_local i32 @mlxsw_sp_lpm_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_mr_init(%struct.mlxsw_sp*, i32*) #1

declare dso_local i32 @mlxsw_sp_vrs_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_neigh_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @register_netevent_notifier(%struct.TYPE_8__*) #1

declare dso_local i32 @mlxsw_sp_mp_hash_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_dscp_init(%struct.mlxsw_sp*) #1

declare dso_local i32 @register_fib_notifier(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @unregister_netevent_notifier(%struct.TYPE_8__*) #1

declare dso_local i32 @mlxsw_sp_neigh_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_vrs_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_mr_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_lpm_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

declare dso_local i32 @mlxsw_sp_ipips_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @mlxsw_sp_rifs_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @__mlxsw_sp_router_fini(%struct.mlxsw_sp*) #1

declare dso_local i32 @unregister_inet6addr_notifier(%struct.TYPE_10__*) #1

declare dso_local i32 @unregister_inetaddr_notifier(%struct.TYPE_9__*) #1

declare dso_local i32 @kfree(%struct.mlxsw_sp_router*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

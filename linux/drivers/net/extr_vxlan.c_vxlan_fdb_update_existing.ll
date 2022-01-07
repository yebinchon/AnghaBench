; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_update_existing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_fdb_update_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_dev = type { i32 }
%union.vxlan_addr = type { i32 }
%struct.vxlan_fdb = type { i32, i64, i8*, i32, i8* }
%struct.netlink_ext_ack = type { i32 }
%struct.vxlan_rdst = type { i32, i32 }

@NTF_USE = common dso_local global i64 0, align 8
@NTF_EXT_LEARNED = common dso_local global i64 0, align 8
@NTF_VXLAN_ADDED_BY_USER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i8* null, align 8
@NLM_F_REPLACE = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NLM_F_APPEND = common dso_local global i64 0, align 8
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@vxlan_dst_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vxlan_dev*, %union.vxlan_addr*, i64, i64, i32, i32, i32, i64, %struct.vxlan_fdb*, i32, %struct.netlink_ext_ack*)* @vxlan_fdb_update_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_fdb_update_existing(%struct.vxlan_dev* %0, %union.vxlan_addr* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i64 %7, %struct.vxlan_fdb* %8, i32 %9, %struct.netlink_ext_ack* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.vxlan_dev*, align 8
  %14 = alloca %union.vxlan_addr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca %struct.vxlan_fdb*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.netlink_ext_ack*, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.vxlan_rdst*, align 8
  %26 = alloca %struct.vxlan_rdst, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.vxlan_dev* %0, %struct.vxlan_dev** %13, align 8
  store %union.vxlan_addr* %1, %union.vxlan_addr** %14, align 8
  store i64 %2, i64* %15, align 8
  store i64 %3, i64* %16, align 8
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i64 %7, i64* %20, align 8
  store %struct.vxlan_fdb* %8, %struct.vxlan_fdb** %21, align 8
  store i32 %9, i32* %22, align 4
  store %struct.netlink_ext_ack* %10, %struct.netlink_ext_ack** %23, align 8
  %30 = load i64, i64* %20, align 8
  %31 = load i64, i64* @NTF_USE, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  store i64 %33, i64* %24, align 8
  store %struct.vxlan_rdst* null, %struct.vxlan_rdst** %25, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  %34 = load i64, i64* %24, align 8
  %35 = load i64, i64* @NTF_EXT_LEARNED, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %11
  %39 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %40 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @NTF_VXLAN_ADDED_BY_USER, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %74, label %45

45:                                               ; preds = %38, %11
  %46 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %47 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %15, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load i64, i64* %15, align 8
  %53 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %54 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  %55 = load i8*, i8** @jiffies, align 8
  %56 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %57 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %56, i32 0, i32 4
  store i8* %55, i8** %57, align 8
  store i32 1, i32* %27, align 4
  br label %58

58:                                               ; preds = %51, %45
  %59 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %60 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %24, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %58
  %66 = load i64, i64* %24, align 8
  %67 = trunc i64 %66 to i32
  %68 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %69 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load i8*, i8** @jiffies, align 8
  %71 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %72 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %71, i32 0, i32 4
  store i8* %70, i8** %72, align 8
  store i32 1, i32* %27, align 4
  br label %73

73:                                               ; preds = %65, %58
  br label %74

74:                                               ; preds = %73, %38
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* @NLM_F_REPLACE, align 8
  %77 = and i64 %75, %76
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %74
  %80 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %81 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @is_multicast_ether_addr(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %79
  %86 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %87 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = call i64 @is_zero_ether_addr(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %101, label %91

91:                                               ; preds = %85
  %92 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %93 = load %union.vxlan_addr*, %union.vxlan_addr** %14, align 8
  %94 = load i32, i32* %17, align 4
  %95 = load i32, i32* %18, align 4
  %96 = load i32, i32* %19, align 4
  %97 = call i32 @vxlan_fdb_replace(%struct.vxlan_fdb* %92, %union.vxlan_addr* %93, i32 %94, i32 %95, i32 %96, %struct.vxlan_rdst* %26)
  store i32 %97, i32* %28, align 4
  %98 = load i32, i32* %28, align 4
  %99 = load i32, i32* %27, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %27, align 4
  br label %104

101:                                              ; preds = %85, %79
  %102 = load i32, i32* @EOPNOTSUPP, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %199

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104, %74
  %106 = load i64, i64* %16, align 8
  %107 = load i64, i64* @NLM_F_APPEND, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %137

110:                                              ; preds = %105
  %111 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %112 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @is_multicast_ether_addr(i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %110
  %117 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %118 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @is_zero_ether_addr(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %137

122:                                              ; preds = %116, %110
  %123 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %124 = load %union.vxlan_addr*, %union.vxlan_addr** %14, align 8
  %125 = load i32, i32* %17, align 4
  %126 = load i32, i32* %18, align 4
  %127 = load i32, i32* %19, align 4
  %128 = call i32 @vxlan_fdb_append(%struct.vxlan_fdb* %123, %union.vxlan_addr* %124, i32 %125, i32 %126, i32 %127, %struct.vxlan_rdst** %25)
  store i32 %128, i32* %28, align 4
  %129 = load i32, i32* %28, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i32, i32* %28, align 4
  store i32 %132, i32* %12, align 4
  br label %199

133:                                              ; preds = %122
  %134 = load i32, i32* %28, align 4
  %135 = load i32, i32* %27, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %27, align 4
  br label %137

137:                                              ; preds = %133, %116, %105
  %138 = load i64, i64* %20, align 8
  %139 = load i64, i64* @NTF_USE, align 8
  %140 = and i64 %138, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load i8*, i8** @jiffies, align 8
  %144 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %145 = getelementptr inbounds %struct.vxlan_fdb, %struct.vxlan_fdb* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  br label %146

146:                                              ; preds = %142, %137
  %147 = load i32, i32* %27, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %146
  %150 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %25, align 8
  %151 = icmp eq %struct.vxlan_rdst* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %154 = call %struct.vxlan_rdst* @first_remote_rtnl(%struct.vxlan_fdb* %153)
  store %struct.vxlan_rdst* %154, %struct.vxlan_rdst** %25, align 8
  br label %155

155:                                              ; preds = %152, %149
  %156 = load %struct.vxlan_dev*, %struct.vxlan_dev** %13, align 8
  %157 = load %struct.vxlan_fdb*, %struct.vxlan_fdb** %21, align 8
  %158 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %25, align 8
  %159 = load i32, i32* @RTM_NEWNEIGH, align 4
  %160 = load i32, i32* %22, align 4
  %161 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %23, align 8
  %162 = call i32 @vxlan_fdb_notify(%struct.vxlan_dev* %156, %struct.vxlan_fdb* %157, %struct.vxlan_rdst* %158, i32 %159, i32 %160, %struct.netlink_ext_ack* %161)
  store i32 %162, i32* %29, align 4
  %163 = load i32, i32* %29, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %155
  br label %168

166:                                              ; preds = %155
  br label %167

167:                                              ; preds = %166, %146
  store i32 0, i32* %12, align 4
  br label %199

168:                                              ; preds = %165
  %169 = load i64, i64* %16, align 8
  %170 = load i64, i64* @NLM_F_REPLACE, align 8
  %171 = and i64 %169, %170
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load i32, i32* %28, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %25, align 8
  %178 = bitcast %struct.vxlan_rdst* %177 to i8*
  %179 = bitcast %struct.vxlan_rdst* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %178, i8* align 4 %179, i64 8, i1 false)
  br label %197

180:                                              ; preds = %173, %168
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* @NLM_F_APPEND, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %196

185:                                              ; preds = %180
  %186 = load i32, i32* %28, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %185
  %189 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %25, align 8
  %190 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %189, i32 0, i32 1
  %191 = call i32 @list_del_rcu(i32* %190)
  %192 = load %struct.vxlan_rdst*, %struct.vxlan_rdst** %25, align 8
  %193 = getelementptr inbounds %struct.vxlan_rdst, %struct.vxlan_rdst* %192, i32 0, i32 0
  %194 = load i32, i32* @vxlan_dst_free, align 4
  %195 = call i32 @call_rcu(i32* %193, i32 %194)
  br label %196

196:                                              ; preds = %188, %185, %180
  br label %197

197:                                              ; preds = %196, %176
  %198 = load i32, i32* %29, align 4
  store i32 %198, i32* %12, align 4
  br label %199

199:                                              ; preds = %197, %167, %131, %101
  %200 = load i32, i32* %12, align 4
  ret i32 %200
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i32 @vxlan_fdb_replace(%struct.vxlan_fdb*, %union.vxlan_addr*, i32, i32, i32, %struct.vxlan_rdst*) #1

declare dso_local i32 @vxlan_fdb_append(%struct.vxlan_fdb*, %union.vxlan_addr*, i32, i32, i32, %struct.vxlan_rdst**) #1

declare dso_local %struct.vxlan_rdst* @first_remote_rtnl(%struct.vxlan_fdb*) #1

declare dso_local i32 @vxlan_fdb_notify(%struct.vxlan_dev*, %struct.vxlan_fdb*, %struct.vxlan_rdst*, i32, i32, %struct.netlink_ext_ack*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @list_del_rcu(i32*) #1

declare dso_local i32 @call_rcu(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

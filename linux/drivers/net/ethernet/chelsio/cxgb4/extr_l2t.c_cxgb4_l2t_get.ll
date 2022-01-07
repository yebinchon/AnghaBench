; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_cxgb4_l2t_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_cxgb4_l2t_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32, i64, i32, i32, i32, %struct.l2t_entry*, i32, i32, i32, i32, i32 }
%struct.l2t_data = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.l2t_entry* }
%struct.neighbour = type { %struct.TYPE_9__*, i64, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32* }
%struct.TYPE_10__ = type { i64, i64 }

@IFF_LOOPBACK = common dso_local global i32 0, align 4
@VLAN_NONE = common dso_local global i32 0, align 4
@L2T_STATE_RESOLVING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @cxgb4_l2t_get(%struct.l2t_data* %0, %struct.neighbour* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca %struct.l2t_data*, align 8
  %6 = alloca %struct.neighbour*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.l2t_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.l2t_data* %0, %struct.l2t_data** %5, align 8
  store %struct.neighbour* %1, %struct.neighbour** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %17 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %16, i32 0, i32 2
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %22 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %13, align 8
  %25 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 0
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %14, align 4
  %30 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %31 = load i32*, i32** %13, align 8
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @addr_hash(%struct.l2t_data* %30, i32* %31, i32 %32, i32 %33)
  store i32 %34, i32* %15, align 4
  %35 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %36 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_LOOPBACK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %4
  %44 = load %struct.net_device*, %struct.net_device** %7, align 8
  %45 = call %struct.TYPE_10__* @netdev2pinfo(%struct.net_device* %44)
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 4
  store i64 %48, i64* %9, align 8
  br label %54

49:                                               ; preds = %4
  %50 = load %struct.net_device*, %struct.net_device** %7, align 8
  %51 = call %struct.TYPE_10__* @netdev2pinfo(%struct.net_device* %50)
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %9, align 8
  br label %54

54:                                               ; preds = %49, %43
  %55 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %56 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = call i64 @is_vlan_dev(%struct.TYPE_9__* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  %61 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %62 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = call i32 @vlan_dev_vlan_id(%struct.TYPE_9__* %63)
  store i32 %64, i32* %10, align 4
  %65 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %66 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %65, i32 0, i32 0
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @vlan_dev_get_egress_qos_mask(%struct.TYPE_9__* %67, i32 %68)
  %70 = load i32, i32* %10, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %74

72:                                               ; preds = %54
  %73 = load i32, i32* @VLAN_NONE, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %60
  %75 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %76 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %75, i32 0, i32 0
  %77 = call i32 @write_lock_bh(i32* %76)
  %78 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %79 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  %85 = load %struct.l2t_entry*, %struct.l2t_entry** %84, align 8
  store %struct.l2t_entry* %85, %struct.l2t_entry** %11, align 8
  br label %86

86:                                               ; preds = %126, %74
  %87 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %88 = icmp ne %struct.l2t_entry* %87, null
  br i1 %88, label %89, label %130

89:                                               ; preds = %86
  %90 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @addreq(%struct.l2t_entry* %90, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %125, label %94

94:                                               ; preds = %89
  %95 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %96 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %125

100:                                              ; preds = %94
  %101 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %102 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %125

106:                                              ; preds = %100
  %107 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %108 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %106
  %113 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %114 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %115 = call i32 @l2t_hold(%struct.l2t_data* %113, %struct.l2t_entry* %114)
  %116 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %117 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %116, i32 0, i32 7
  %118 = call i32 @atomic_read(i32* %117)
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %124

120:                                              ; preds = %112
  %121 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %122 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %123 = call i32 @reuse_entry(%struct.l2t_entry* %121, %struct.neighbour* %122)
  br label %124

124:                                              ; preds = %120, %112
  br label %210

125:                                              ; preds = %106, %100, %94, %89
  br label %126

126:                                              ; preds = %125
  %127 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %128 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %127, i32 0, i32 5
  %129 = load %struct.l2t_entry*, %struct.l2t_entry** %128, align 8
  store %struct.l2t_entry* %129, %struct.l2t_entry** %11, align 8
  br label %86

130:                                              ; preds = %86
  %131 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %132 = call %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %131)
  store %struct.l2t_entry* %132, %struct.l2t_entry** %11, align 8
  %133 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %134 = icmp ne %struct.l2t_entry* %133, null
  br i1 %134, label %135, label %209

135:                                              ; preds = %130
  %136 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %137 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %136, i32 0, i32 4
  %138 = call i32 @spin_lock(i32* %137)
  %139 = load i32, i32* @L2T_STATE_RESOLVING, align 4
  %140 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %141 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 8
  %142 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %143 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @IFF_LOOPBACK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %135
  %151 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %152 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %151, i32 0, i32 9
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.net_device*, %struct.net_device** %7, align 8
  %155 = getelementptr inbounds %struct.net_device, %struct.net_device* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @memcpy(i32 %153, i32* %156, i32 4)
  br label %158

158:                                              ; preds = %150, %135
  %159 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %160 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %159, i32 0, i32 8
  %161 = load i32, i32* %160, align 8
  %162 = load i32*, i32** %13, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @memcpy(i32 %161, i32* %162, i32 %163)
  %165 = load i32, i32* %14, align 4
  %166 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %167 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %166, i32 0, i32 0
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* %15, align 4
  %169 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %170 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %169, i32 0, i32 2
  store i32 %168, i32* %170, align 8
  %171 = load i64, i64* %9, align 8
  %172 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %173 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %172, i32 0, i32 1
  store i64 %171, i64* %173, align 8
  %174 = load i32, i32* %12, align 4
  %175 = icmp eq i32 %174, 16
  %176 = zext i1 %175 to i32
  %177 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %178 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %177, i32 0, i32 3
  store i32 %176, i32* %178, align 4
  %179 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %180 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %179, i32 0, i32 7
  %181 = call i32 @atomic_set(i32* %180, i32 1)
  %182 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %183 = load %struct.neighbour*, %struct.neighbour** %6, align 8
  %184 = call i32 @neigh_replace(%struct.l2t_entry* %182, %struct.neighbour* %183)
  %185 = load i32, i32* %10, align 4
  %186 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %187 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 8
  %188 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %189 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %188, i32 0, i32 1
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %193, i32 0, i32 0
  %195 = load %struct.l2t_entry*, %struct.l2t_entry** %194, align 8
  %196 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %197 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %196, i32 0, i32 5
  store %struct.l2t_entry* %195, %struct.l2t_entry** %197, align 8
  %198 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %199 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %200 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %199, i32 0, i32 1
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %200, align 8
  %202 = load i32, i32* %15, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store %struct.l2t_entry* %198, %struct.l2t_entry** %205, align 8
  %206 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %207 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %206, i32 0, i32 4
  %208 = call i32 @spin_unlock(i32* %207)
  br label %209

209:                                              ; preds = %158, %130
  br label %210

210:                                              ; preds = %209, %124
  %211 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %212 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %211, i32 0, i32 0
  %213 = call i32 @write_unlock_bh(i32* %212)
  %214 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  ret %struct.l2t_entry* %214
}

declare dso_local i32 @addr_hash(%struct.l2t_data*, i32*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @netdev2pinfo(%struct.net_device*) #1

declare dso_local i64 @is_vlan_dev(%struct.TYPE_9__*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.TYPE_9__*) #1

declare dso_local i32 @vlan_dev_get_egress_qos_mask(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @addreq(%struct.l2t_entry*, i32*) #1

declare dso_local i32 @l2t_hold(%struct.l2t_data*, %struct.l2t_entry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @reuse_entry(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local %struct.l2t_entry* @alloc_l2e(%struct.l2t_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

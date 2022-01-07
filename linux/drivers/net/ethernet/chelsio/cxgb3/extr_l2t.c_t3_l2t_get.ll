; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2t_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2t_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, i32, i32, i32, i32, i32, i32, %struct.l2t_entry* }
%struct.t3cdev = type { i32 }
%struct.dst_entry = type { i32 }
%struct.net_device = type { i32 }
%struct.neighbour = type { %struct.net_device*, i64 }
%struct.port_info = type { i32 }
%struct.l2t_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.l2t_entry* }

@L2T_STATE_RESOLVING = common dso_local global i32 0, align 4
@VLAN_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @t3_l2t_get(%struct.t3cdev* %0, %struct.dst_entry* %1, %struct.net_device* %2, i8* %3) #0 {
  %5 = alloca %struct.t3cdev*, align 8
  %6 = alloca %struct.dst_entry*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.l2t_entry*, align 8
  %10 = alloca %struct.neighbour*, align 8
  %11 = alloca %struct.port_info*, align 8
  %12 = alloca %struct.l2t_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %5, align 8
  store %struct.dst_entry* %1, %struct.dst_entry** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i8* %3, i8** %8, align 8
  store %struct.l2t_entry* null, %struct.l2t_entry** %9, align 8
  %17 = call i32 (...) @rcu_read_lock()
  %18 = load %struct.dst_entry*, %struct.dst_entry** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = call %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry* %18, i8* %19)
  store %struct.neighbour* %20, %struct.neighbour** %10, align 8
  %21 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %22 = icmp ne %struct.neighbour* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %4
  br label %177

24:                                               ; preds = %4
  %25 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %26 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i64*
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %14, align 8
  %30 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %31 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %30, i32 0, i32 0
  %32 = load %struct.net_device*, %struct.net_device** %31, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = load %struct.net_device*, %struct.net_device** %7, align 8
  %36 = icmp ne %struct.net_device* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %39 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %38, i32 0, i32 0
  %40 = load %struct.net_device*, %struct.net_device** %39, align 8
  store %struct.net_device* %40, %struct.net_device** %7, align 8
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call %struct.port_info* @netdev_priv(%struct.net_device* %42)
  store %struct.port_info* %43, %struct.port_info** %11, align 8
  %44 = load %struct.port_info*, %struct.port_info** %11, align 8
  %45 = getelementptr inbounds %struct.port_info, %struct.port_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %48 = call %struct.l2t_data* @L2DATA(%struct.t3cdev* %47)
  store %struct.l2t_data* %48, %struct.l2t_data** %12, align 8
  %49 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %50 = icmp ne %struct.l2t_data* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %41
  br label %177

52:                                               ; preds = %41
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %56 = call i32 @arp_hash(i64 %53, i32 %54, %struct.l2t_data* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %58 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %57, i32 0, i32 0
  %59 = call i32 @write_lock_bh(i32* %58)
  %60 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %61 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %13, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %66, align 8
  store %struct.l2t_entry* %67, %struct.l2t_entry** %9, align 8
  br label %68

68:                                               ; preds = %103, %52
  %69 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %70 = icmp ne %struct.l2t_entry* %69, null
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %73 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %71
  %78 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %79 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %15, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %77
  %84 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %85 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %16, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %83
  %90 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %91 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %92 = call i32 @l2t_hold(%struct.l2t_data* %90, %struct.l2t_entry* %91)
  %93 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %94 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %93, i32 0, i32 5
  %95 = call i32 @atomic_read(i32* %94)
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %101

97:                                               ; preds = %89
  %98 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %99 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %100 = call i32 @reuse_entry(%struct.l2t_entry* %98, %struct.neighbour* %99)
  br label %101

101:                                              ; preds = %97, %89
  br label %173

102:                                              ; preds = %83, %77, %71
  br label %103

103:                                              ; preds = %102
  %104 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %105 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %104, i32 0, i32 7
  %106 = load %struct.l2t_entry*, %struct.l2t_entry** %105, align 8
  store %struct.l2t_entry* %106, %struct.l2t_entry** %9, align 8
  br label %68

107:                                              ; preds = %68
  %108 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %109 = call %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %108)
  store %struct.l2t_entry* %109, %struct.l2t_entry** %9, align 8
  %110 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %111 = icmp ne %struct.l2t_entry* %110, null
  br i1 %111, label %112, label %172

112:                                              ; preds = %107
  %113 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %114 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %113, i32 0, i32 3
  %115 = call i32 @spin_lock(i32* %114)
  %116 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %117 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %116, i32 0, i32 1
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** %117, align 8
  %119 = load i32, i32* %13, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 0
  %123 = load %struct.l2t_entry*, %struct.l2t_entry** %122, align 8
  %124 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %125 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %124, i32 0, i32 7
  store %struct.l2t_entry* %123, %struct.l2t_entry** %125, align 8
  %126 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %127 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %128 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  store %struct.l2t_entry* %126, %struct.l2t_entry** %133, align 8
  %134 = load i32, i32* @L2T_STATE_RESOLVING, align 4
  %135 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %136 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %135, i32 0, i32 6
  store i32 %134, i32* %136, align 4
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %139 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* %15, align 4
  %141 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %142 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* %16, align 4
  %144 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %145 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 4
  %146 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %147 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %146, i32 0, i32 5
  %148 = call i32 @atomic_set(i32* %147, i32 1)
  %149 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %150 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %151 = call i32 @neigh_replace(%struct.l2t_entry* %149, %struct.neighbour* %150)
  %152 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %153 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %152, i32 0, i32 0
  %154 = load %struct.net_device*, %struct.net_device** %153, align 8
  %155 = call i64 @is_vlan_dev(%struct.net_device* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %112
  %158 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %159 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %158, i32 0, i32 0
  %160 = load %struct.net_device*, %struct.net_device** %159, align 8
  %161 = call i32 @vlan_dev_vlan_id(%struct.net_device* %160)
  %162 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %163 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %162, i32 0, i32 4
  store i32 %161, i32* %163, align 4
  br label %168

164:                                              ; preds = %112
  %165 = load i32, i32* @VLAN_NONE, align 4
  %166 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %167 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %157
  %169 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  %170 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %169, i32 0, i32 3
  %171 = call i32 @spin_unlock(i32* %170)
  br label %172

172:                                              ; preds = %168, %107
  br label %173

173:                                              ; preds = %172, %101
  %174 = load %struct.l2t_data*, %struct.l2t_data** %12, align 8
  %175 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %174, i32 0, i32 0
  %176 = call i32 @write_unlock_bh(i32* %175)
  br label %177

177:                                              ; preds = %173, %51, %23
  %178 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %179 = icmp ne %struct.neighbour* %178, null
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.neighbour*, %struct.neighbour** %10, align 8
  %182 = call i32 @neigh_release(%struct.neighbour* %181)
  br label %183

183:                                              ; preds = %180, %177
  %184 = call i32 (...) @rcu_read_unlock()
  %185 = load %struct.l2t_entry*, %struct.l2t_entry** %9, align 8
  ret %struct.l2t_entry* %185
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.neighbour* @dst_neigh_lookup(%struct.dst_entry*, i8*) #1

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.l2t_data* @L2DATA(%struct.t3cdev*) #1

declare dso_local i32 @arp_hash(i64, i32, %struct.l2t_data*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @l2t_hold(%struct.l2t_data*, %struct.l2t_entry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @reuse_entry(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local %struct.l2t_entry* @alloc_l2e(%struct.l2t_data*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i64 @is_vlan_dev(%struct.net_device*) #1

declare dso_local i32 @vlan_dev_vlan_id(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @neigh_release(%struct.neighbour*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

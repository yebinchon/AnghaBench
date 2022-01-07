; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_t4_l2t_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_t4_l2t_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.l2t_data* }
%struct.l2t_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.l2t_entry* }
%struct.l2t_entry = type { i32, i64, i32, i32, %struct.sk_buff_head, %struct.neighbour*, i32, %struct.l2t_entry* }
%struct.sk_buff_head = type { i32 }
%struct.neighbour = type { i32, i32, %struct.TYPE_5__*, i64, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@L2T_STATE_RESOLVING = common dso_local global i64 0, align 8
@NUD_FAILED = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@L2T_STATE_VALID = common dso_local global i64 0, align 8
@L2T_STATE_STALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_l2t_update(%struct.adapter* %0, %struct.neighbour* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.sk_buff_head*, align 8
  %7 = alloca %struct.l2t_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.neighbour* %1, %struct.neighbour** %4, align 8
  store %struct.sk_buff_head* null, %struct.sk_buff_head** %6, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  %14 = load %struct.l2t_data*, %struct.l2t_data** %13, align 8
  store %struct.l2t_data* %14, %struct.l2t_data** %7, align 8
  %15 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %16 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %21 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %9, align 8
  %24 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %25 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %10, align 4
  %29 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @addr_hash(%struct.l2t_data* %29, i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %35 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %34, i32 0, i32 0
  %36 = call i32 @read_lock_bh(i32* %35)
  %37 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %38 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %37, i32 0, i32 1
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %11, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %43, align 8
  store %struct.l2t_entry* %44, %struct.l2t_entry** %5, align 8
  br label %45

45:                                               ; preds = %73, %2
  %46 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %47 = icmp ne %struct.l2t_entry* %46, null
  br i1 %47, label %48, label %77

48:                                               ; preds = %45
  %49 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @addreq(%struct.l2t_entry* %49, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %48
  %54 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %55 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %10, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %61 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %60, i32 0, i32 2
  %62 = call i32 @spin_lock(i32* %61)
  %63 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %64 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %63, i32 0, i32 6
  %65 = call i64 @atomic_read(i32* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  br label %81

68:                                               ; preds = %59
  %69 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %70 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %69, i32 0, i32 2
  %71 = call i32 @spin_unlock(i32* %70)
  br label %77

72:                                               ; preds = %53, %48
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %75 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %74, i32 0, i32 7
  %76 = load %struct.l2t_entry*, %struct.l2t_entry** %75, align 8
  store %struct.l2t_entry* %76, %struct.l2t_entry** %5, align 8
  br label %45

77:                                               ; preds = %68, %45
  %78 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %79 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %78, i32 0, i32 0
  %80 = call i32 @read_unlock_bh(i32* %79)
  br label %169

81:                                               ; preds = %67
  %82 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %83 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %82, i32 0, i32 0
  %84 = call i32 @read_unlock(i32* %83)
  %85 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %86 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %87 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %86, i32 0, i32 5
  %88 = load %struct.neighbour*, %struct.neighbour** %87, align 8
  %89 = icmp ne %struct.neighbour* %85, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %92 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %93 = call i32 @neigh_replace(%struct.l2t_entry* %91, %struct.neighbour* %92)
  br label %94

94:                                               ; preds = %90, %81
  %95 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %96 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @L2T_STATE_RESOLVING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %130

100:                                              ; preds = %94
  %101 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %102 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @NUD_FAILED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %100
  %108 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %109 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %108, i32 0, i32 4
  store %struct.sk_buff_head* %109, %struct.sk_buff_head** %6, align 8
  br label %129

110:                                              ; preds = %100
  %111 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %112 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @NUD_CONNECTED, align 4
  %115 = load i32, i32* @NUD_STALE, align 4
  %116 = or i32 %114, %115
  %117 = and i32 %113, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %110
  %120 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %121 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %120, i32 0, i32 4
  %122 = call i32 @skb_queue_empty(%struct.sk_buff_head* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load %struct.adapter*, %struct.adapter** %3, align 8
  %126 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %127 = call i32 @write_l2e(%struct.adapter* %125, %struct.l2t_entry* %126, i32 1)
  br label %128

128:                                              ; preds = %124, %119, %110
  br label %129

129:                                              ; preds = %128, %107
  br label %158

130:                                              ; preds = %94
  %131 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %132 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @NUD_CONNECTED, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i64, i64* @L2T_STATE_VALID, align 8
  br label %141

139:                                              ; preds = %130
  %140 = load i64, i64* @L2T_STATE_STALE, align 8
  br label %141

141:                                              ; preds = %139, %137
  %142 = phi i64 [ %138, %137 ], [ %140, %139 ]
  %143 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %144 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %146 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %149 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @memcmp(i32 %147, i32 %150, i32 4)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %141
  %154 = load %struct.adapter*, %struct.adapter** %3, align 8
  %155 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %156 = call i32 @write_l2e(%struct.adapter* %154, %struct.l2t_entry* %155, i32 0)
  br label %157

157:                                              ; preds = %153, %141
  br label %158

158:                                              ; preds = %157, %129
  %159 = load %struct.sk_buff_head*, %struct.sk_buff_head** %6, align 8
  %160 = icmp ne %struct.sk_buff_head* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.adapter*, %struct.adapter** %3, align 8
  %163 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %164 = call i32 @handle_failed_resolution(%struct.adapter* %162, %struct.l2t_entry* %163)
  br label %165

165:                                              ; preds = %161, %158
  %166 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %167 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %166, i32 0, i32 2
  %168 = call i32 @spin_unlock_bh(i32* %167)
  br label %169

169:                                              ; preds = %165, %77
  ret void
}

declare dso_local i32 @addr_hash(%struct.l2t_data*, i32*, i32, i32) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @addreq(%struct.l2t_entry*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @write_l2e(%struct.adapter*, %struct.l2t_entry*, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @handle_failed_resolution(%struct.adapter*, %struct.l2t_entry*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

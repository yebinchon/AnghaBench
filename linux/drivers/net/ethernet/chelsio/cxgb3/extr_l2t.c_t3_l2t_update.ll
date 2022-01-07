; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2t_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_t3_l2t_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.neighbour = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.l2t_entry = type { i64, i32, i64, i32, i32, i32, %struct.neighbour*, i32, %struct.l2t_entry* }
%struct.l2t_data = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.l2t_entry* }

@L2T_STATE_RESOLVING = common dso_local global i64 0, align 8
@NUD_FAILED = common dso_local global i32 0, align 4
@NUD_CONNECTED = common dso_local global i32 0, align 4
@NUD_STALE = common dso_local global i32 0, align 4
@L2T_STATE_VALID = common dso_local global i64 0, align 8
@L2T_STATE_STALE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t3_l2t_update(%struct.t3cdev* %0, %struct.neighbour* %1) #0 {
  %3 = alloca %struct.t3cdev*, align 8
  %4 = alloca %struct.neighbour*, align 8
  %5 = alloca %struct.sk_buff_head, align 4
  %6 = alloca %struct.l2t_entry*, align 8
  %7 = alloca %struct.l2t_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.t3cdev* %0, %struct.t3cdev** %3, align 8
  store %struct.neighbour* %1, %struct.neighbour** %4, align 8
  %11 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %12 = call %struct.l2t_data* @L2DATA(%struct.t3cdev* %11)
  store %struct.l2t_data* %12, %struct.l2t_data** %7, align 8
  %13 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %14 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i64*
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %19 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %9, align 4
  %23 = load i64, i64* %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %26 = call i32 @arp_hash(i64 %23, i32 %24, %struct.l2t_data* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %28 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %27, i32 0, i32 0
  %29 = call i32 @read_lock_bh(i32* %28)
  %30 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %31 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.l2t_entry*, %struct.l2t_entry** %36, align 8
  store %struct.l2t_entry* %37, %struct.l2t_entry** %6, align 8
  br label %38

38:                                               ; preds = %58, %2
  %39 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %40 = icmp ne %struct.l2t_entry* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %43 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %49 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %55 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %54, i32 0, i32 3
  %56 = call i32 @spin_lock(i32* %55)
  br label %66

57:                                               ; preds = %47, %41
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %60 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %59, i32 0, i32 8
  %61 = load %struct.l2t_entry*, %struct.l2t_entry** %60, align 8
  store %struct.l2t_entry* %61, %struct.l2t_entry** %6, align 8
  br label %38

62:                                               ; preds = %38
  %63 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %64 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %63, i32 0, i32 0
  %65 = call i32 @read_unlock_bh(i32* %64)
  br label %155

66:                                               ; preds = %53
  %67 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %5)
  %68 = load %struct.l2t_data*, %struct.l2t_data** %7, align 8
  %69 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %68, i32 0, i32 0
  %70 = call i32 @read_unlock(i32* %69)
  %71 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %72 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i32 0, i32 7
  %73 = call i64 @atomic_read(i32* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %146

75:                                               ; preds = %66
  %76 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %77 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %78 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %77, i32 0, i32 6
  %79 = load %struct.neighbour*, %struct.neighbour** %78, align 8
  %80 = icmp ne %struct.neighbour* %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %83 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %84 = call i32 @neigh_replace(%struct.l2t_entry* %82, %struct.neighbour* %83)
  br label %85

85:                                               ; preds = %81, %75
  %86 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %87 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @L2T_STATE_RESOLVING, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %117

91:                                               ; preds = %85
  %92 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %93 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @NUD_FAILED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %100 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %99, i32 0, i32 5
  %101 = call i32 @skb_queue_splice_init(i32* %100, %struct.sk_buff_head* %5)
  br label %116

102:                                              ; preds = %91
  %103 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %104 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @NUD_CONNECTED, align 4
  %107 = load i32, i32* @NUD_STALE, align 4
  %108 = or i32 %106, %107
  %109 = and i32 %105, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %102
  %112 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %113 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %114 = call i32 @setup_l2e_send_pending(%struct.t3cdev* %112, i32* null, %struct.l2t_entry* %113)
  br label %115

115:                                              ; preds = %111, %102
  br label %116

116:                                              ; preds = %115, %98
  br label %145

117:                                              ; preds = %85
  %118 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %119 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @NUD_CONNECTED, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = load i64, i64* @L2T_STATE_VALID, align 8
  br label %128

126:                                              ; preds = %117
  %127 = load i64, i64* @L2T_STATE_STALE, align 8
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i64 [ %125, %124 ], [ %127, %126 ]
  %130 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %131 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %130, i32 0, i32 2
  store i64 %129, i64* %131, align 8
  %132 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %133 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %136 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @ether_addr_equal(i32 %134, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %144, label %140

140:                                              ; preds = %128
  %141 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %142 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %143 = call i32 @setup_l2e_send_pending(%struct.t3cdev* %141, i32* null, %struct.l2t_entry* %142)
  br label %144

144:                                              ; preds = %140, %128
  br label %145

145:                                              ; preds = %144, %116
  br label %146

146:                                              ; preds = %145, %66
  %147 = load %struct.l2t_entry*, %struct.l2t_entry** %6, align 8
  %148 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %147, i32 0, i32 3
  %149 = call i32 @spin_unlock_bh(i32* %148)
  %150 = call i32 @skb_queue_empty(%struct.sk_buff_head* %5)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %146
  %153 = load %struct.t3cdev*, %struct.t3cdev** %3, align 8
  %154 = call i32 @handle_failed_resolution(%struct.t3cdev* %153, %struct.sk_buff_head* %5)
  br label %155

155:                                              ; preds = %62, %152, %146
  ret void
}

declare dso_local %struct.l2t_data* @L2DATA(%struct.t3cdev*) #1

declare dso_local i32 @arp_hash(i64, i32, %struct.l2t_data*) #1

declare dso_local i32 @read_lock_bh(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @read_unlock_bh(i32*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

declare dso_local i32 @read_unlock(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @neigh_replace(%struct.l2t_entry*, %struct.neighbour*) #1

declare dso_local i32 @skb_queue_splice_init(i32*, %struct.sk_buff_head*) #1

declare dso_local i32 @setup_l2e_send_pending(%struct.t3cdev*, i32*, %struct.l2t_entry*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @skb_queue_empty(%struct.sk_buff_head*) #1

declare dso_local i32 @handle_failed_resolution(%struct.t3cdev*, %struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

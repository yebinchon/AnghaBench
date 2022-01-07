; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i64, i64, i32, i32, %struct.hlist_head* }
%struct.hlist_head = type { i32 }
%struct.tun_file = type { i64 }
%struct.tun_flow_entry = type { i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@MAX_TAP_FLOWS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*, i32, %struct.tun_file*)* @tun_flow_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_flow_update(%struct.tun_struct* %0, i32 %1, %struct.tun_file* %2) #0 {
  %4 = alloca %struct.tun_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tun_file*, align 8
  %7 = alloca %struct.hlist_head*, align 8
  %8 = alloca %struct.tun_flow_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.tun_struct* %0, %struct.tun_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.tun_file* %2, %struct.tun_file** %6, align 8
  %11 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %12 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %9, align 8
  %14 = load %struct.tun_file*, %struct.tun_file** %6, align 8
  %15 = getelementptr inbounds %struct.tun_file, %struct.tun_file* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %18 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %17, i32 0, i32 4
  %19 = load %struct.hlist_head*, %struct.hlist_head** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @tun_hashfn(i32 %20)
  %22 = getelementptr inbounds %struct.hlist_head, %struct.hlist_head* %19, i64 %21
  store %struct.hlist_head* %22, %struct.hlist_head** %7, align 8
  %23 = call i32 (...) @rcu_read_lock()
  %24 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.tun_flow_entry* @tun_flow_find(%struct.hlist_head* %24, i32 %25)
  store %struct.tun_flow_entry* %26, %struct.tun_flow_entry** %8, align 8
  %27 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %8, align 8
  %28 = call i64 @likely(%struct.tun_flow_entry* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %3
  %31 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %8, align 8
  %32 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @READ_ONCE(i32 %33)
  %35 = load i64, i64* %10, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %8, align 8
  %39 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @WRITE_ONCE(i32 %40, i64 %41)
  br label %43

43:                                               ; preds = %37, %30
  %44 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %8, align 8
  %45 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @jiffies, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i64, i64* @jiffies, align 8
  %51 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %8, align 8
  %52 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load %struct.tun_flow_entry*, %struct.tun_flow_entry** %8, align 8
  %55 = getelementptr inbounds %struct.tun_flow_entry, %struct.tun_flow_entry* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @sock_rps_record_flow_hash(i32 %56)
  br label %95

58:                                               ; preds = %3
  %59 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %60 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call %struct.tun_flow_entry* @tun_flow_find(%struct.hlist_head* %62, i32 %63)
  %65 = icmp ne %struct.tun_flow_entry* %64, null
  br i1 %65, label %78, label %66

66:                                               ; preds = %58
  %67 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %68 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @MAX_TAP_FLOWS, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %74 = load %struct.hlist_head*, %struct.hlist_head** %7, align 8
  %75 = load i32, i32* %5, align 4
  %76 = load i64, i64* %10, align 8
  %77 = call i32 @tun_flow_create(%struct.tun_struct* %73, %struct.hlist_head* %74, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %72, %66, %58
  %79 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %80 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %79, i32 0, i32 3
  %81 = call i32 @timer_pending(i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %78
  %84 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %85 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %84, i32 0, i32 3
  %86 = load i64, i64* @jiffies, align 8
  %87 = load i64, i64* %9, align 8
  %88 = add i64 %86, %87
  %89 = call i32 @round_jiffies_up(i64 %88)
  %90 = call i32 @mod_timer(i32* %85, i32 %89)
  br label %91

91:                                               ; preds = %83, %78
  %92 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %93 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %92, i32 0, i32 2
  %94 = call i32 @spin_unlock_bh(i32* %93)
  br label %95

95:                                               ; preds = %91, %53
  %96 = call i32 (...) @rcu_read_unlock()
  ret void
}

declare dso_local i64 @tun_hashfn(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.tun_flow_entry* @tun_flow_find(%struct.hlist_head*, i32) #1

declare dso_local i64 @likely(%struct.tun_flow_entry*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i64) #1

declare dso_local i32 @sock_rps_record_flow_hash(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @tun_flow_create(%struct.tun_struct*, %struct.hlist_head*, i32, i64) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

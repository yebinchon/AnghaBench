; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_t4_l2t_alloc_switching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_t4_l2t_alloc_switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i32, i32, i32, i32, i32, i32 }
%struct.adapter = type { %struct.l2t_data* }
%struct.l2t_data = type { i32 }

@L2T_STATE_SWITCHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.l2t_entry* @t4_l2t_alloc_switching(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.l2t_data*, align 8
  %11 = alloca %struct.l2t_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.adapter*, %struct.adapter** %6, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  %15 = load %struct.l2t_data*, %struct.l2t_data** %14, align 8
  store %struct.l2t_data* %15, %struct.l2t_data** %10, align 8
  %16 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %17 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %16, i32 0, i32 0
  %18 = call i32 @write_lock_bh(i32* %17)
  %19 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32*, i32** %9, align 8
  %23 = call %struct.l2t_entry* @find_or_alloc_l2e(%struct.l2t_data* %19, i32 %20, i32 %21, i32* %22)
  store %struct.l2t_entry* %23, %struct.l2t_entry** %11, align 8
  %24 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %25 = icmp ne %struct.l2t_entry* %24, null
  br i1 %25, label %26, label %75

26:                                               ; preds = %4
  %27 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %28 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %27, i32 0, i32 0
  %29 = call i32 @spin_lock(i32* %28)
  %30 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %31 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %30, i32 0, i32 1
  %32 = call i32 @atomic_read(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %67, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @L2T_STATE_SWITCHING, align 4
  %36 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %37 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %40 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %43 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %45 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @ether_addr_copy(i32 %46, i32* %47)
  %49 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %50 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %49, i32 0, i32 1
  %51 = call i32 @atomic_set(i32* %50, i32 1)
  %52 = load %struct.adapter*, %struct.adapter** %6, align 8
  %53 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %54 = call i32 @write_l2e(%struct.adapter* %52, %struct.l2t_entry* %53, i32 0)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %34
  %58 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %59 = call i32 @_t4_l2e_free(%struct.l2t_entry* %58)
  %60 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %61 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock(i32* %61)
  %63 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %64 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %63, i32 0, i32 0
  %65 = call i32 @write_unlock_bh(i32* %64)
  store %struct.l2t_entry* null, %struct.l2t_entry** %5, align 8
  br label %80

66:                                               ; preds = %34
  br label %71

67:                                               ; preds = %26
  %68 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %69 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %68, i32 0, i32 1
  %70 = call i32 @atomic_inc(i32* %69)
  br label %71

71:                                               ; preds = %67, %66
  %72 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  %73 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %71, %4
  %76 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  %77 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %76, i32 0, i32 0
  %78 = call i32 @write_unlock_bh(i32* %77)
  %79 = load %struct.l2t_entry*, %struct.l2t_entry** %11, align 8
  store %struct.l2t_entry* %79, %struct.l2t_entry** %5, align 8
  br label %80

80:                                               ; preds = %75, %57
  %81 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  ret %struct.l2t_entry* %81
}

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local %struct.l2t_entry* @find_or_alloc_l2e(%struct.l2t_data*, i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @write_l2e(%struct.adapter*, %struct.l2t_entry*, i32) #1

declare dso_local i32 @_t4_l2e_free(%struct.l2t_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

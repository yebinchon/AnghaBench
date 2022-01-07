; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_alloc_l2e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_l2t.c_alloc_l2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, %struct.l2t_entry*, %struct.l2t_entry*, i32, i32, i32 }
%struct.l2t_data = type { i64, %struct.l2t_entry*, i32, %struct.l2t_entry* }

@L2T_STATE_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2t_entry* (%struct.l2t_data*)* @alloc_l2e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %0) #0 {
  %2 = alloca %struct.l2t_entry*, align 8
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.l2t_entry**, align 8
  %7 = alloca i32, align 4
  store %struct.l2t_data* %0, %struct.l2t_data** %3, align 8
  %8 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %9 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %8, i32 0, i32 2
  %10 = call i64 @atomic_read(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.l2t_entry* null, %struct.l2t_entry** %2, align 8
  br label %107

13:                                               ; preds = %1
  %14 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %15 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %14, i32 0, i32 3
  %16 = load %struct.l2t_entry*, %struct.l2t_entry** %15, align 8
  store %struct.l2t_entry* %16, %struct.l2t_entry** %5, align 8
  %17 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %18 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %17, i32 0, i32 1
  %19 = load %struct.l2t_entry*, %struct.l2t_entry** %18, align 8
  %20 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %21 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %19, i64 %22
  store %struct.l2t_entry* %23, %struct.l2t_entry** %4, align 8
  br label %24

24:                                               ; preds = %35, %13
  %25 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %26 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %27 = icmp ne %struct.l2t_entry* %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %30 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %29, i32 0, i32 5
  %31 = call i64 @atomic_read(i32* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  br label %53

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %37 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %36, i32 1
  store %struct.l2t_entry* %37, %struct.l2t_entry** %5, align 8
  br label %24

38:                                               ; preds = %24
  %39 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %40 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %39, i32 0, i32 1
  %41 = load %struct.l2t_entry*, %struct.l2t_entry** %40, align 8
  %42 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %41, i64 1
  store %struct.l2t_entry* %42, %struct.l2t_entry** %5, align 8
  br label %43

43:                                               ; preds = %49, %38
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %45 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %44, i32 0, i32 5
  %46 = call i64 @atomic_read(i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %51 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %50, i32 1
  store %struct.l2t_entry* %51, %struct.l2t_entry** %5, align 8
  br label %43

52:                                               ; preds = %43
  br label %53

53:                                               ; preds = %52, %33
  %54 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %55 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %54, i64 1
  %56 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %57 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %56, i32 0, i32 3
  store %struct.l2t_entry* %55, %struct.l2t_entry** %57, align 8
  %58 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %59 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %58, i32 0, i32 2
  %60 = call i32 @atomic_dec(i32* %59)
  %61 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %62 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @L2T_STATE_UNUSED, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %53
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %68 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %71 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %74 = call i32 @arp_hash(i32 %69, i32 %72, %struct.l2t_data* %73)
  store i32 %74, i32* %7, align 4
  %75 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %76 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %75, i32 0, i32 1
  %77 = load %struct.l2t_entry*, %struct.l2t_entry** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %77, i64 %79
  %81 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %80, i32 0, i32 2
  store %struct.l2t_entry** %81, %struct.l2t_entry*** %6, align 8
  br label %82

82:                                               ; preds = %97, %66
  %83 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %84 = load %struct.l2t_entry*, %struct.l2t_entry** %83, align 8
  %85 = icmp ne %struct.l2t_entry* %84, null
  br i1 %85, label %86, label %101

86:                                               ; preds = %82
  %87 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %88 = load %struct.l2t_entry*, %struct.l2t_entry** %87, align 8
  %89 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %90 = icmp eq %struct.l2t_entry* %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %93 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %92, i32 0, i32 1
  %94 = load %struct.l2t_entry*, %struct.l2t_entry** %93, align 8
  %95 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  store %struct.l2t_entry* %94, %struct.l2t_entry** %95, align 8
  br label %101

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %99 = load %struct.l2t_entry*, %struct.l2t_entry** %98, align 8
  %100 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %99, i32 0, i32 1
  store %struct.l2t_entry** %100, %struct.l2t_entry*** %6, align 8
  br label %82

101:                                              ; preds = %91, %82
  %102 = load i64, i64* @L2T_STATE_UNUSED, align 8
  %103 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %104 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %103, i32 0, i32 0
  store i64 %102, i64* %104, align 8
  br label %105

105:                                              ; preds = %101, %53
  %106 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  store %struct.l2t_entry* %106, %struct.l2t_entry** %2, align 8
  br label %107

107:                                              ; preds = %105, %12
  %108 = load %struct.l2t_entry*, %struct.l2t_entry** %2, align 8
  ret %struct.l2t_entry* %108
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @arp_hash(i32, i32, %struct.l2t_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

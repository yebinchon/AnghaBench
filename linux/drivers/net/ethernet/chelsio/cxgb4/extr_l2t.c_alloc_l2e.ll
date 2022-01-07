; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_alloc_l2e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_alloc_l2e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2t_entry = type { i64, i64, %struct.l2t_entry*, %struct.l2t_entry*, i32 }
%struct.l2t_data = type { i64, %struct.l2t_entry*, i32, %struct.l2t_entry* }

@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@L2T_STATE_UNUSED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.l2t_entry* (%struct.l2t_data*)* @alloc_l2e to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.l2t_entry* @alloc_l2e(%struct.l2t_data* %0) #0 {
  %2 = alloca %struct.l2t_entry*, align 8
  %3 = alloca %struct.l2t_data*, align 8
  %4 = alloca %struct.l2t_entry*, align 8
  %5 = alloca %struct.l2t_entry*, align 8
  %6 = alloca %struct.l2t_entry**, align 8
  store %struct.l2t_data* %0, %struct.l2t_data** %3, align 8
  %7 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %8 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %7, i32 0, i32 2
  %9 = call i64 @atomic_read(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store %struct.l2t_entry* null, %struct.l2t_entry** %2, align 8
  br label %100

12:                                               ; preds = %1
  %13 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %14 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %13, i32 0, i32 3
  %15 = load %struct.l2t_entry*, %struct.l2t_entry** %14, align 8
  store %struct.l2t_entry* %15, %struct.l2t_entry** %5, align 8
  %16 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %17 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %16, i32 0, i32 1
  %18 = load %struct.l2t_entry*, %struct.l2t_entry** %17, align 8
  %19 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %20 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %18, i64 %21
  store %struct.l2t_entry* %22, %struct.l2t_entry** %4, align 8
  br label %23

23:                                               ; preds = %34, %12
  %24 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %25 = load %struct.l2t_entry*, %struct.l2t_entry** %4, align 8
  %26 = icmp ne %struct.l2t_entry* %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %29 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %28, i32 0, i32 4
  %30 = call i64 @atomic_read(i32* %29)
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %51

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %33
  %35 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %36 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %35, i32 1
  store %struct.l2t_entry* %36, %struct.l2t_entry** %5, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %39 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %38, i32 0, i32 1
  %40 = load %struct.l2t_entry*, %struct.l2t_entry** %39, align 8
  store %struct.l2t_entry* %40, %struct.l2t_entry** %5, align 8
  br label %41

41:                                               ; preds = %47, %37
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %43 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i32 0, i32 4
  %44 = call i64 @atomic_read(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %49 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %48, i32 1
  store %struct.l2t_entry* %49, %struct.l2t_entry** %5, align 8
  br label %41

50:                                               ; preds = %41
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %53 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %52, i64 1
  %54 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %55 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %54, i32 0, i32 3
  store %struct.l2t_entry* %53, %struct.l2t_entry** %55, align 8
  %56 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %57 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %56, i32 0, i32 2
  %58 = call i32 @atomic_dec(i32* %57)
  %59 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %60 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %95

64:                                               ; preds = %51
  %65 = load %struct.l2t_data*, %struct.l2t_data** %3, align 8
  %66 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %65, i32 0, i32 1
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %66, align 8
  %68 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %69 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %67, i64 %70
  %72 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %71, i32 0, i32 3
  store %struct.l2t_entry** %72, %struct.l2t_entry*** %6, align 8
  br label %73

73:                                               ; preds = %90, %64
  %74 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %75 = load %struct.l2t_entry*, %struct.l2t_entry** %74, align 8
  %76 = icmp ne %struct.l2t_entry* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %79 = load %struct.l2t_entry*, %struct.l2t_entry** %78, align 8
  %80 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %81 = icmp eq %struct.l2t_entry* %79, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %84 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %83, i32 0, i32 2
  %85 = load %struct.l2t_entry*, %struct.l2t_entry** %84, align 8
  %86 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  store %struct.l2t_entry* %85, %struct.l2t_entry** %86, align 8
  %87 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %88 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %87, i32 0, i32 2
  store %struct.l2t_entry* null, %struct.l2t_entry** %88, align 8
  br label %94

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89
  %91 = load %struct.l2t_entry**, %struct.l2t_entry*** %6, align 8
  %92 = load %struct.l2t_entry*, %struct.l2t_entry** %91, align 8
  %93 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %92, i32 0, i32 2
  store %struct.l2t_entry** %93, %struct.l2t_entry*** %6, align 8
  br label %73

94:                                               ; preds = %82, %73
  br label %95

95:                                               ; preds = %94, %51
  %96 = load i64, i64* @L2T_STATE_UNUSED, align 8
  %97 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  %98 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load %struct.l2t_entry*, %struct.l2t_entry** %5, align 8
  store %struct.l2t_entry* %99, %struct.l2t_entry** %2, align 8
  br label %100

100:                                              ; preds = %95, %11
  %101 = load %struct.l2t_entry*, %struct.l2t_entry** %2, align 8
  ret %struct.l2t_entry* %101
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

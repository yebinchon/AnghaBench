; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_refill_pools.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap-wl.c_ubi_refill_pools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, i32, %struct.TYPE_6__, %struct.ubi_fm_pool, %struct.ubi_fm_pool }
%struct.TYPE_6__ = type { i32 }
%struct.ubi_fm_pool = type { i64, i64, i64, i32* }
%struct.ubi_wl_entry = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@WL_FREE_MAX_DIFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_refill_pools(%struct.ubi_device* %0) #0 {
  %2 = alloca %struct.ubi_device*, align 8
  %3 = alloca %struct.ubi_fm_pool*, align 8
  %4 = alloca %struct.ubi_fm_pool*, align 8
  %5 = alloca %struct.ubi_wl_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %2, align 8
  %7 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %8 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %7, i32 0, i32 5
  store %struct.ubi_fm_pool* %8, %struct.ubi_fm_pool** %3, align 8
  %9 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %10 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %9, i32 0, i32 4
  store %struct.ubi_fm_pool* %10, %struct.ubi_fm_pool** %4, align 8
  %11 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 2
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %15 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %16 = call i32 @return_unused_pool_pebs(%struct.ubi_device* %14, %struct.ubi_fm_pool* %15)
  %17 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %18 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %19 = call i32 @return_unused_pool_pebs(%struct.ubi_device* %17, %struct.ubi_fm_pool* %18)
  %20 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %21 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %20, i32 0, i32 0
  store i64 0, i64* %21, align 8
  %22 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %23 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %22, i32 0, i32 0
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %129, %1
  store i32 0, i32* %6, align 4
  %25 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %26 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %29 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ult i64 %27, %30
  br i1 %31, label %32, label %60

32:                                               ; preds = %24
  %33 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %130

39:                                               ; preds = %32
  %40 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %41 = call %struct.ubi_wl_entry* @wl_get_wle(%struct.ubi_device* %40)
  store %struct.ubi_wl_entry* %41, %struct.ubi_wl_entry** %5, align 8
  %42 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %43 = icmp ne %struct.ubi_wl_entry* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %39
  br label %130

45:                                               ; preds = %39
  %46 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %47 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %50 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %53 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32 %48, i32* %55, align 4
  %56 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %57 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 1
  store i64 %59, i64* %57, align 8
  br label %63

60:                                               ; preds = %24
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %65 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %68 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ult i64 %66, %69
  br i1 %70, label %71, label %122

71:                                               ; preds = %63
  %72 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %73 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %79 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sub nsw i32 %80, %83
  %85 = icmp slt i32 %84, 5
  br i1 %85, label %86, label %87

86:                                               ; preds = %77, %71
  br label %130

87:                                               ; preds = %77
  %88 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %89 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %90 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %89, i32 0, i32 3
  %91 = load i32, i32* @WL_FREE_MAX_DIFF, align 4
  %92 = call %struct.ubi_wl_entry* @find_wl_entry(%struct.ubi_device* %88, %struct.TYPE_6__* %90, i32 %91)
  store %struct.ubi_wl_entry* %92, %struct.ubi_wl_entry** %5, align 8
  %93 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %94 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %95 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %96 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %95, i32 0, i32 3
  %97 = call i32 @self_check_in_wl_tree(%struct.ubi_device* %93, %struct.ubi_wl_entry* %94, %struct.TYPE_6__* %96)
  %98 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %99 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %102 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %101, i32 0, i32 3
  %103 = call i32 @rb_erase(i32* %100, %struct.TYPE_6__* %102)
  %104 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %105 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %105, align 8
  %108 = load %struct.ubi_wl_entry*, %struct.ubi_wl_entry** %5, align 8
  %109 = getelementptr inbounds %struct.ubi_wl_entry, %struct.ubi_wl_entry* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %112 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %115 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %110, i32* %117, align 4
  %118 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %119 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %119, align 8
  br label %125

122:                                              ; preds = %63
  %123 = load i32, i32* %6, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %122, %87
  %126 = load i32, i32* %6, align 4
  %127 = icmp eq i32 %126, 2
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %130

129:                                              ; preds = %125
  br label %24

130:                                              ; preds = %128, %86, %44, %38
  %131 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %3, align 8
  %132 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %131, i32 0, i32 2
  store i64 0, i64* %132, align 8
  %133 = load %struct.ubi_fm_pool*, %struct.ubi_fm_pool** %4, align 8
  %134 = getelementptr inbounds %struct.ubi_fm_pool, %struct.ubi_fm_pool* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  %135 = load %struct.ubi_device*, %struct.ubi_device** %2, align 8
  %136 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %135, i32 0, i32 2
  %137 = call i32 @spin_unlock(i32* %136)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @return_unused_pool_pebs(%struct.ubi_device*, %struct.ubi_fm_pool*) #1

declare dso_local %struct.ubi_wl_entry* @wl_get_wle(%struct.ubi_device*) #1

declare dso_local %struct.ubi_wl_entry* @find_wl_entry(%struct.ubi_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @self_check_in_wl_tree(%struct.ubi_device*, %struct.ubi_wl_entry*, %struct.TYPE_6__*) #1

declare dso_local i32 @rb_erase(i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

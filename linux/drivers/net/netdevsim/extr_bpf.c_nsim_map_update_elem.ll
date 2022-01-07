; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_update_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_update_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { %struct.TYPE_3__, %struct.nsim_bpf_bound_map* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nsim_bpf_bound_map = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@BPF_EXIST = common dso_local global i64 0, align 8
@BPF_NOEXIST = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i8*, i8*, i64)* @nsim_map_update_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_map_update_elem(%struct.bpf_offloaded_map* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.bpf_offloaded_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nsim_bpf_bound_map*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %12, i32 0, i32 1
  %14 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %13, align 8
  store %struct.nsim_bpf_bound_map* %14, %struct.nsim_bpf_bound_map** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %16 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @nsim_map_key_find(%struct.bpf_offloaded_map* %18, i8* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @BPF_EXIST, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %11, align 4
  br label %112

29:                                               ; preds = %23, %4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @BPF_NOEXIST, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* @EEXIST, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %11, align 4
  br label %112

39:                                               ; preds = %32, %29
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %83

42:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %10, align 4
  %45 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %46 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %47)
  %49 = icmp slt i32 %44, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %52 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %50
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %43

65:                                               ; preds = %60, %43
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %68 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %69)
  %71 = icmp eq i32 %66, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %65
  %73 = load i32, i32* @E2BIG, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %11, align 4
  br label %112

75:                                               ; preds = %65
  %76 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %77 = load i32, i32* %10, align 4
  %78 = call i32 @nsim_map_alloc_elem(%struct.bpf_offloaded_map* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %112

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82, %39
  %84 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %85 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %94 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @memcpy(i32 %91, i8* %92, i32 %96)
  %98 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %99 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %108 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @memcpy(i32 %105, i8* %106, i32 %110)
  br label %112

112:                                              ; preds = %83, %81, %72, %36, %27
  %113 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  %114 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %113, i32 0, i32 0
  %115 = call i32 @mutex_unlock(i32* %114)
  %116 = load i32, i32* %11, align 4
  ret i32 %116
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nsim_map_key_find(%struct.bpf_offloaded_map*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @nsim_map_alloc_elem(%struct.bpf_offloaded_map*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

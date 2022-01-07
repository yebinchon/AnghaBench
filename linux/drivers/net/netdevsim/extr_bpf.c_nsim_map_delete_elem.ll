; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_delete_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_delete_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { %struct.TYPE_3__, %struct.nsim_bpf_bound_map* }
%struct.TYPE_3__ = type { i64 }
%struct.nsim_bpf_bound_map = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@BPF_MAP_TYPE_ARRAY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i8*)* @nsim_map_delete_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_map_delete_elem(%struct.bpf_offloaded_map* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_offloaded_map*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nsim_bpf_bound_map*, align 8
  %7 = alloca i32, align 4
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %9 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %8, i32 0, i32 1
  %10 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %9, align 8
  store %struct.nsim_bpf_bound_map* %10, %struct.nsim_bpf_bound_map** %6, align 8
  %11 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %12 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @BPF_MAP_TYPE_ARRAY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %22 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @nsim_map_key_find(%struct.bpf_offloaded_map* %24, i8* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sge i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %20
  %30 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %31 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @kfree(i32 %37)
  %39 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %40 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %49 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = call i32 @memset(%struct.TYPE_4__* %53, i32 0, i32 8)
  br label %55

55:                                               ; preds = %29, %20
  %56 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %57 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* %7, align 4
  br label %64

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %63, %61
  %65 = phi i32 [ %62, %61 ], [ 0, %63 ]
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nsim_map_key_find(%struct.bpf_offloaded_map*, i8*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_get_next_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_get_next_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { %struct.TYPE_3__, %struct.nsim_bpf_bound_map* }
%struct.TYPE_3__ = type { i32 }
%struct.nsim_bpf_bound_map = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i8*, i8*)* @nsim_map_get_next_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_map_get_next_key(%struct.bpf_offloaded_map* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bpf_offloaded_map*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nsim_bpf_bound_map*, align 8
  %9 = alloca i32, align 4
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %11 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %10, i32 0, i32 1
  %12 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %11, align 8
  store %struct.nsim_bpf_bound_map* %12, %struct.nsim_bpf_bound_map** %8, align 8
  %13 = load i32, i32* @ENOENT, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %9, align 4
  %15 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  %16 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %3
  %21 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 @nsim_map_key_find(%struct.bpf_offloaded_map* %21, i8* %22)
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %9, align 4
  br label %33

30:                                               ; preds = %24
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %29
  br label %34

34:                                               ; preds = %67, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  %37 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %38)
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %41, label %70

41:                                               ; preds = %34
  %42 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  %43 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %41
  %52 = load i8*, i8** %7, align 8
  %53 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  %54 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %5, align 8
  %62 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @memcpy(i8* %52, i64 %60, i32 %64)
  br label %70

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %34

70:                                               ; preds = %51, %34
  %71 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  %72 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  %76 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @ARRAY_SIZE(%struct.TYPE_4__* %77)
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %70
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %84

83:                                               ; preds = %70
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %80
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nsim_map_key_find(%struct.bpf_offloaded_map*, i8*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

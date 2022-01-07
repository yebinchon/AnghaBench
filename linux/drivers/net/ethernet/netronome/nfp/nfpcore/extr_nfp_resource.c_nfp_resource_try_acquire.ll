; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_try_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_resource.c_nfp_resource_try_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp = type { i32 }
%struct.nfp_resource = type { i32 }
%struct.nfp_cpp_mutex = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp*, %struct.nfp_resource*, %struct.nfp_cpp_mutex*)* @nfp_resource_try_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_resource_try_acquire(%struct.nfp_cpp* %0, %struct.nfp_resource* %1, %struct.nfp_cpp_mutex* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_cpp*, align 8
  %6 = alloca %struct.nfp_resource*, align 8
  %7 = alloca %struct.nfp_cpp_mutex*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_cpp* %0, %struct.nfp_cpp** %5, align 8
  store %struct.nfp_resource* %1, %struct.nfp_resource** %6, align 8
  store %struct.nfp_cpp_mutex* %2, %struct.nfp_cpp_mutex** %7, align 8
  %9 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %7, align 8
  %10 = call i64 @nfp_cpp_mutex_lock(%struct.nfp_cpp_mutex* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %42

15:                                               ; preds = %3
  %16 = load %struct.nfp_cpp*, %struct.nfp_cpp** %5, align 8
  %17 = load %struct.nfp_resource*, %struct.nfp_resource** %6, align 8
  %18 = call i32 @nfp_cpp_resource_find(%struct.nfp_cpp* %16, %struct.nfp_resource* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %38

22:                                               ; preds = %15
  %23 = load %struct.nfp_resource*, %struct.nfp_resource** %6, align 8
  %24 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nfp_cpp_mutex_trylock(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %33

30:                                               ; preds = %22
  %31 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %7, align 8
  %32 = call i32 @nfp_cpp_mutex_unlock(%struct.nfp_cpp_mutex* %31)
  store i32 0, i32* %4, align 4
  br label %42

33:                                               ; preds = %29
  %34 = load %struct.nfp_resource*, %struct.nfp_resource** %6, align 8
  %35 = getelementptr inbounds %struct.nfp_resource, %struct.nfp_resource* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nfp_cpp_mutex_free(i32 %36)
  br label %38

38:                                               ; preds = %33, %21
  %39 = load %struct.nfp_cpp_mutex*, %struct.nfp_cpp_mutex** %7, align 8
  %40 = call i32 @nfp_cpp_mutex_unlock(%struct.nfp_cpp_mutex* %39)
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %30, %12
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @nfp_cpp_mutex_lock(%struct.nfp_cpp_mutex*) #1

declare dso_local i32 @nfp_cpp_resource_find(%struct.nfp_cpp*, %struct.nfp_resource*) #1

declare dso_local i32 @nfp_cpp_mutex_trylock(i32) #1

declare dso_local i32 @nfp_cpp_mutex_unlock(%struct.nfp_cpp_mutex*) #1

declare dso_local i32 @nfp_cpp_mutex_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

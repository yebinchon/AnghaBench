; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_key_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_key_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { i32, %struct.nsim_bpf_bound_map* }
%struct.nsim_bpf_bound_map = type { i32* }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i8*)* @nsim_map_key_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_map_key_find(%struct.bpf_offloaded_map* %0, i8* %1) #0 {
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
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %33, %2
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %14 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp ult i32 %12, %16
  br i1 %17, label %18, label %36

18:                                               ; preds = %11
  %19 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %20 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %19, i32 0, i32 0
  %21 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %22 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i8*, i8** %5, align 8
  %28 = call i64 @nsim_map_key_match(i32* %20, i32* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %18
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %39

32:                                               ; preds = %18
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %11

36:                                               ; preds = %11
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @nsim_map_key_match(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

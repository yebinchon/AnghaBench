; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_alloc_elem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_map_alloc_elem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_offloaded_map = type { %struct.TYPE_3__, %struct.nsim_bpf_bound_map* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nsim_bpf_bound_map = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, i8* }

@GFP_USER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bpf_offloaded_map*, i32)* @nsim_map_alloc_elem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_map_alloc_elem(%struct.bpf_offloaded_map* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_offloaded_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nsim_bpf_bound_map*, align 8
  store %struct.bpf_offloaded_map* %0, %struct.bpf_offloaded_map** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %8 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %7, i32 0, i32 1
  %9 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %8, align 8
  store %struct.nsim_bpf_bound_map* %9, %struct.nsim_bpf_bound_map** %6, align 8
  %10 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %11 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @GFP_USER, align 4
  %15 = call i8* @kmalloc(i32 %13, i32 %14)
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %18 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  store i32* %16, i32** %23, align 8
  %24 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %25 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %79

36:                                               ; preds = %2
  %37 = load %struct.bpf_offloaded_map*, %struct.bpf_offloaded_map** %4, align 8
  %38 = getelementptr inbounds %struct.bpf_offloaded_map, %struct.bpf_offloaded_map* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_USER, align 4
  %42 = call i8* @kmalloc(i32 %40, i32 %41)
  %43 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %44 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i8* %42, i8** %49, align 8
  %50 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %51 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %78, label %59

59:                                               ; preds = %36
  %60 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %61 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @kfree(i32* %67)
  %69 = load %struct.nsim_bpf_bound_map*, %struct.nsim_bpf_bound_map** %6, align 8
  %70 = getelementptr inbounds %struct.nsim_bpf_bound_map, %struct.nsim_bpf_bound_map* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %3, align 4
  br label %79

78:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %78, %59, %33
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

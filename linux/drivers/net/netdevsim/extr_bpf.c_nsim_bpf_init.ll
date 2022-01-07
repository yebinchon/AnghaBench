; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdevsim = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"bpf_offloaded_id\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"bpf_tc_accept\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"bpf_tc_non_bound_accept\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"bpf_xdpdrv_accept\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"bpf_xdpoffload_accept\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"bpf_map_accept\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_bpf_init(%struct.netdevsim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netdevsim*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  store %struct.netdevsim* %0, %struct.netdevsim** %3, align 8
  %6 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %7 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %6, i32 0, i32 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.dentry*, %struct.dentry** %9, align 8
  store %struct.dentry* %10, %struct.dentry** %4, align 8
  %11 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %12 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %11, i32 0, i32 7
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %17 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @bpf_offload_dev_netdev_register(i32 %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %57

24:                                               ; preds = %1
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %27 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %26, i32 0, i32 5
  %28 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 256, %struct.dentry* %25, i32* %27)
  %29 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %30 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %33 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %32, i32 0, i32 0
  %34 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 384, %struct.dentry* %31, i32* %33)
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %37 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %36, i32 0, i32 1
  %38 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 384, %struct.dentry* %35, i32* %37)
  %39 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %40 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.dentry*, %struct.dentry** %4, align 8
  %42 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %43 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %42, i32 0, i32 2
  %44 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 384, %struct.dentry* %41, i32* %43)
  %45 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %46 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %45, i32 0, i32 3
  store i32 1, i32* %46, align 4
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %49 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %48, i32 0, i32 3
  %50 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 384, %struct.dentry* %47, i32* %49)
  %51 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %52 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %51, i32 0, i32 4
  store i32 1, i32* %52, align 8
  %53 = load %struct.dentry*, %struct.dentry** %4, align 8
  %54 = load %struct.netdevsim*, %struct.netdevsim** %3, align 8
  %55 = getelementptr inbounds %struct.netdevsim, %struct.netdevsim* %54, i32 0, i32 4
  %56 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 384, %struct.dentry* %53, i32* %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %24, %22
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @bpf_offload_dev_netdev_register(i32, i32) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

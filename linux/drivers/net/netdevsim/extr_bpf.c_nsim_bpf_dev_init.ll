; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_dev = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"bpf_bound_progs\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@nsim_bpf_dev_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bpf_bind_accept\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"bpf_bind_verifier_delay\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nsim_bpf_dev_init(%struct.nsim_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nsim_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nsim_dev* %0, %struct.nsim_dev** %3, align 8
  %5 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %6 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %5, i32 0, i32 6
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %9 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %8, i32 0, i32 5
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @debugfs_create_dir(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %16 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %18 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IS_ERR_OR_NULL(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %53

25:                                               ; preds = %1
  %26 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %27 = call i32 @bpf_offload_dev_create(i32* @nsim_bpf_dev_ops, %struct.nsim_dev* %26)
  %28 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %29 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %31 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR_OR_ZERO(i32 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* %4, align 4
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %25
  %39 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %40 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %42 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %45 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %44, i32 0, i32 0
  %46 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 384, i32 %43, i32* %45)
  %47 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nsim_dev*, %struct.nsim_dev** %3, align 8
  %51 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %50, i32 0, i32 1
  %52 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 384, i32 %49, i32* %51)
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %38, %36, %22
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @bpf_offload_dev_create(i32*, %struct.nsim_dev*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(i32) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

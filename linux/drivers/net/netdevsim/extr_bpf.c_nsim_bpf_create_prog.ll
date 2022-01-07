; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_create_prog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/netdevsim/extr_bpf.c_nsim_bpf_create_prog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nsim_dev = type { i32, i32, i32 }
%struct.bpf_prog = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.nsim_bpf_bound_prog* }
%struct.nsim_bpf_bound_prog = type { i8*, i32, i32, i32, %struct.bpf_prog*, %struct.nsim_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@nsim_bpf_string_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"loaded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nsim_dev*, %struct.bpf_prog*)* @nsim_bpf_create_prog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsim_bpf_create_prog(%struct.nsim_dev* %0, %struct.bpf_prog* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nsim_dev*, align 8
  %5 = alloca %struct.bpf_prog*, align 8
  %6 = alloca %struct.nsim_bpf_bound_prog*, align 8
  %7 = alloca [16 x i8], align 16
  store %struct.nsim_dev* %0, %struct.nsim_dev** %4, align 8
  store %struct.bpf_prog* %1, %struct.bpf_prog** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nsim_bpf_bound_prog* @kzalloc(i32 40, i32 %8)
  store %struct.nsim_bpf_bound_prog* %9, %struct.nsim_bpf_bound_prog** %6, align 8
  %10 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %11 = icmp ne %struct.nsim_bpf_bound_prog* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %80

15:                                               ; preds = %2
  %16 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %17 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %18 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %17, i32 0, i32 5
  store %struct.nsim_dev* %16, %struct.nsim_dev** %18, align 8
  %19 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %20 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %21 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %20, i32 0, i32 4
  store %struct.bpf_prog* %19, %struct.bpf_prog** %21, align 8
  %22 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %23 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %22, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %25 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %26 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %31 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %32 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @debugfs_create_dir(i8* %30, i32 %33)
  %35 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %36 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 8
  %37 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %38 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @IS_ERR_OR_NULL(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %15
  %43 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %44 = call i32 @kfree(%struct.nsim_bpf_bound_prog* %43)
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %80

47:                                               ; preds = %15
  %48 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %49 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %52 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 256, i32 %50, i32* %54)
  %56 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %57 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %60 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %59, i32 0, i32 0
  %61 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 256, i32 %58, i8** %60, i32* @nsim_bpf_string_fops)
  %62 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %63 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %66 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %65, i32 0, i32 2
  %67 = call i32 @debugfs_create_bool(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 256, i32 %64, i32* %66)
  %68 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %69 = getelementptr inbounds %struct.nsim_bpf_bound_prog, %struct.nsim_bpf_bound_prog* %68, i32 0, i32 1
  %70 = load %struct.nsim_dev*, %struct.nsim_dev** %4, align 8
  %71 = getelementptr inbounds %struct.nsim_dev, %struct.nsim_dev* %70, i32 0, i32 0
  %72 = call i32 @list_add_tail(i32* %69, i32* %71)
  %73 = load %struct.nsim_bpf_bound_prog*, %struct.nsim_bpf_bound_prog** %6, align 8
  %74 = load %struct.bpf_prog*, %struct.bpf_prog** %5, align 8
  %75 = getelementptr inbounds %struct.bpf_prog, %struct.bpf_prog* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  store %struct.nsim_bpf_bound_prog* %73, %struct.nsim_bpf_bound_prog** %79, align 8
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %47, %42, %12
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.nsim_bpf_bound_prog* @kzalloc(i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @debugfs_create_dir(i8*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @kfree(%struct.nsim_bpf_bound_prog*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, i32, i32*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, i32, i8**, i32*) #1

declare dso_local i32 @debugfs_create_bool(i8*, i32, i32, i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

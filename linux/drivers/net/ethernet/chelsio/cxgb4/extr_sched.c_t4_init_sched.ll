; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_init_sched.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_sched.c_t4_init_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_table = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@tab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SCHED_STATE_UNUSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sched_table* @t4_init_sched(i32 %0) #0 {
  %2 = alloca %struct.sched_table*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sched_table*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %7 = load i32, i32* @tab, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @struct_size(%struct.sched_table* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sched_table* @kvzalloc(i32 %9, i32 %10)
  store %struct.sched_table* %11, %struct.sched_table** %4, align 8
  %12 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %13 = icmp ne %struct.sched_table* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.sched_table* null, %struct.sched_table** %2, align 8
  br label %70

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %18 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %65, %15
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %22 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %19
  %26 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %27 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = call i32 @memset(%struct.TYPE_2__* %31, i32 0, i32 4)
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %35 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %5, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* @SCHED_STATE_UNUSED, align 4
  %42 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %43 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  store i32 %41, i32* %48, align 4
  %49 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %50 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i32 @INIT_LIST_HEAD(i32* %55)
  %57 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  %58 = getelementptr inbounds %struct.sched_table, %struct.sched_table* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = call i32 @atomic_set(i32* %63, i32 0)
  br label %65

65:                                               ; preds = %25
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %19

68:                                               ; preds = %19
  %69 = load %struct.sched_table*, %struct.sched_table** %4, align 8
  store %struct.sched_table* %69, %struct.sched_table** %2, align 8
  br label %70

70:                                               ; preds = %68, %14
  %71 = load %struct.sched_table*, %struct.sched_table** %2, align 8
  ret %struct.sched_table* %71
}

declare dso_local %struct.sched_table* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.sched_table*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

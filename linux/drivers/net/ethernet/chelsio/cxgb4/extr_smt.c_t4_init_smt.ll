; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_smt.c_t4_init_smt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_smt.c_t4_init_smt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smt_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32 }

@SMT_SIZE = common dso_local global i32 0, align 4
@smtab = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@SMT_STATE_UNUSED = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.smt_data* @t4_init_smt() #0 {
  %1 = alloca %struct.smt_data*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.smt_data*, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @SMT_SIZE, align 4
  store i32 %5, i32* %2, align 4
  %6 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %7 = load i32, i32* @smtab, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @struct_size(%struct.smt_data* %6, i32 %7, i32 %8)
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.smt_data* @kvzalloc(i32 %9, i32 %10)
  store %struct.smt_data* %11, %struct.smt_data** %3, align 8
  %12 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %13 = icmp ne %struct.smt_data* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %0
  store %struct.smt_data* null, %struct.smt_data** %1, align 8
  br label %74

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4
  %17 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %18 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %20 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %19, i32 0, i32 2
  %21 = call i32 @rwlock_init(i32* %20)
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %69, %15
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %25 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ult i32 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %31 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 %29, i32* %36, align 8
  %37 = load i32, i32* @SMT_STATE_UNUSED, align 4
  %38 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %39 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 4
  store i32 %37, i32* %44, align 8
  %45 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %46 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memset(i32* %51, i32 0, i32 %52)
  %54 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %55 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  %63 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %28
  %70 = load i32, i32* %4, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %4, align 4
  br label %22

72:                                               ; preds = %22
  %73 = load %struct.smt_data*, %struct.smt_data** %3, align 8
  store %struct.smt_data* %73, %struct.smt_data** %1, align 8
  br label %74

74:                                               ; preds = %72, %14
  %75 = load %struct.smt_data*, %struct.smt_data** %1, align 8
  ret %struct.smt_data* %75
}

declare dso_local %struct.smt_data* @kvzalloc(i32, i32) #1

declare dso_local i32 @struct_size(%struct.smt_data*, i32, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

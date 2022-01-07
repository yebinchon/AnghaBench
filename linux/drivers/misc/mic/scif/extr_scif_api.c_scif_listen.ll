; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_listen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_listen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scif_endpt = type { i64, i32, i32, %struct.TYPE_5__, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32* }

@scif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [26 x i8] c"SCIFAPI listen: ep %p %s\0A\00", align 1
@scif_ep_states = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EISCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_listen(i64 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scif_endpt*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i64, i64* %4, align 8
  %8 = inttoptr i64 %7 to %struct.scif_endpt*
  store %struct.scif_endpt* %8, %struct.scif_endpt** %6, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 2, i32 0), align 4
  %10 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %11 = load i32*, i32** @scif_ep_states, align 8
  %12 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %13 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds i32, i32* %11, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.scif_endpt* %10, i32 %16)
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %19 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %18, i32 0, i32 4
  %20 = call i32 @spin_lock(i32* %19)
  %21 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %22 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  switch i64 %23, label %37 [
    i64 128, label %24
    i64 135, label %24
    i64 136, label %24
    i64 129, label %24
    i64 132, label %24
    i64 131, label %30
    i64 134, label %30
    i64 133, label %30
    i64 130, label %30
    i64 137, label %36
  ]

24:                                               ; preds = %2, %2, %2, %2, %2
  %25 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %26 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %25, i32 0, i32 4
  %27 = call i32 @spin_unlock(i32* %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %2, %2, %2, %2
  %31 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %32 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %31, i32 0, i32 4
  %33 = call i32 @spin_unlock(i32* %32)
  %34 = load i32, i32* @EISCONN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %69

36:                                               ; preds = %2
  br label %37

37:                                               ; preds = %2, %36
  %38 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %39 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %38, i32 0, i32 0
  store i64 131, i64* %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %42 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %44 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %43, i32 0, i32 9
  store i64 0, i64* %44, align 8
  %45 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %46 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %45, i32 0, i32 8
  store i64 0, i64* %46, align 8
  %47 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %48 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %47, i32 0, i32 7
  %49 = call i32 @INIT_LIST_HEAD(i32* %48)
  %50 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %51 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %50, i32 0, i32 6
  %52 = call i32 @init_waitqueue_head(i32* %51)
  %53 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %54 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %53, i32 0, i32 5
  %55 = call i32 @INIT_LIST_HEAD(i32* %54)
  %56 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %57 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %56, i32 0, i32 4
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %60 = call i32 @scif_teardown_ep(%struct.scif_endpt* %59)
  %61 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %62 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  %64 = call i32 @mutex_lock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0))
  %65 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %66 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %65, i32 0, i32 2
  %67 = call i32 @list_add_tail(i32* %66, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 1))
  %68 = call i32 @mutex_unlock(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0))
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %37, %30, %24
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @dev_dbg(i32, i8*, %struct.scif_endpt*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @scif_teardown_ep(%struct.scif_endpt*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

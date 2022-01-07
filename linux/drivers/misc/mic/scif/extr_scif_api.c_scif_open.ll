; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_api.c_scif_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.scif_endpt = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.scif_endpt* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SCIFEP_UNBOUND = common dso_local global i32 0, align 4
@scif_info = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [29 x i8] c"SCIFAPI open: ep %p success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scif_endpt* @scif_open() #0 {
  %1 = alloca %struct.scif_endpt*, align 8
  %2 = alloca %struct.scif_endpt*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @might_sleep()
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 24, i32 %5)
  %7 = bitcast i8* %6 to %struct.scif_endpt*
  store %struct.scif_endpt* %7, %struct.scif_endpt** %2, align 8
  %8 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %9 = icmp ne %struct.scif_endpt* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %58

11:                                               ; preds = %0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @kzalloc(i32 24, i32 %12)
  %14 = bitcast i8* %13 to %struct.scif_endpt*
  %15 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %16 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.scif_endpt* %14, %struct.scif_endpt** %17, align 8
  %18 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %19 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.scif_endpt*, %struct.scif_endpt** %20, align 8
  %22 = icmp ne %struct.scif_endpt* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %11
  br label %55

24:                                               ; preds = %11
  %25 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %26 = call i32 @scif_anon_inode_getfile(%struct.scif_endpt* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %49

30:                                               ; preds = %24
  %31 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %32 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %31, i32 0, i32 4
  %33 = call i32 @spin_lock_init(i32* %32)
  %34 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %35 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %34, i32 0, i32 3
  %36 = call i32 @mutex_init(i32* %35)
  %37 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %38 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %37, i32 0, i32 2
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %41 = call i32 @scif_rma_ep_init(%struct.scif_endpt* %40)
  %42 = load i32, i32* @SCIFEP_UNBOUND, align 4
  %43 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %44 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @scif_info, i32 0, i32 0, i32 0), align 4
  %46 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %47 = call i32 @dev_dbg(i32 %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.scif_endpt* %46)
  %48 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  store %struct.scif_endpt* %48, %struct.scif_endpt** %1, align 8
  br label %59

49:                                               ; preds = %29
  %50 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %51 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.scif_endpt*, %struct.scif_endpt** %52, align 8
  %54 = call i32 @kfree(%struct.scif_endpt* %53)
  br label %55

55:                                               ; preds = %49, %23
  %56 = load %struct.scif_endpt*, %struct.scif_endpt** %2, align 8
  %57 = call i32 @kfree(%struct.scif_endpt* %56)
  br label %58

58:                                               ; preds = %55, %10
  store %struct.scif_endpt* null, %struct.scif_endpt** %1, align 8
  br label %59

59:                                               ; preds = %58, %30
  %60 = load %struct.scif_endpt*, %struct.scif_endpt** %1, align 8
  ret %struct.scif_endpt* %60
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @scif_anon_inode_getfile(%struct.scif_endpt*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @scif_rma_ep_init(%struct.scif_endpt*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.scif_endpt*) #1

declare dso_local i32 @kfree(%struct.scif_endpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

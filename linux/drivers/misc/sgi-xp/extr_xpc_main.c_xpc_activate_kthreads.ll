; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_activate_kthreads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-xp/extr_xpc_main.c_xpc_activate_kthreads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xpc_channel = type { i32, i32, i32, i32, i32, i32 }

@xpc_chan = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"wakeup %d idle kthreads, partid=%d, channel=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"create %d new kthreads, partid=%d, channel=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xpc_activate_kthreads(%struct.xpc_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.xpc_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xpc_channel* %0, %struct.xpc_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %9 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %8, i32 0, i32 5
  %10 = call i32 @atomic_read(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %12 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %11, i32 0, i32 4
  %13 = call i32 @atomic_read(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sle i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = call i32 @DBUG_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %4, align 4
  %32 = sub nsw i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @xpc_chan, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %36 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %39 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37, i32 %40)
  %42 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %43 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %42, i32 0, i32 3
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @wake_up_nr(i32* %43, i32 %44)
  br label %46

46:                                               ; preds = %28, %2
  %47 = load i32, i32* %4, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %81

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %55 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %50
  %59 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %60 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %81

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %50
  %69 = load i32, i32* @xpc_chan, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %72 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %75 = getelementptr inbounds %struct.xpc_channel, %struct.xpc_channel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_dbg(i32 %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %70, i32 %73, i32 %76)
  %78 = load %struct.xpc_channel*, %struct.xpc_channel** %3, align 8
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @xpc_create_kthreads(%struct.xpc_channel* %78, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %68, %66, %49
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @DBUG_ON(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @wake_up_nr(i32*, i32) #1

declare dso_local i32 @xpc_create_kthreads(%struct.xpc_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

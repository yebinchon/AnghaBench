; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_get_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_dev = type { i32, i32 }
%struct.major_info = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TAP_NUM_DEVS = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Too many tap devices\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tap_get_minor(i32 %0, %struct.tap_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tap_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.major_info*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.tap_dev* %1, %struct.tap_dev** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @MAJOR(i32 %10)
  %12 = call %struct.major_info* @tap_get_major(i32 %11)
  store %struct.major_info* %12, %struct.major_info** %6, align 8
  %13 = load %struct.major_info*, %struct.major_info** %6, align 8
  %14 = icmp ne %struct.major_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.major_info*, %struct.major_info** %6, align 8
  %20 = getelementptr inbounds %struct.major_info, %struct.major_info* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.major_info*, %struct.major_info** %6, align 8
  %23 = getelementptr inbounds %struct.major_info, %struct.major_info* %22, i32 0, i32 1
  %24 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %25 = load i32, i32* @TAP_NUM_DEVS, align 4
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = call i32 @idr_alloc(i32* %23, %struct.tap_dev* %24, i32 1, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %33 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %47

34:                                               ; preds = %18
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @ENOSPC, align 4
  %37 = sub nsw i32 0, %36
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %41 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netdev_err(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %39, %34
  br label %47

47:                                               ; preds = %46, %30
  %48 = load %struct.major_info*, %struct.major_info** %6, align 8
  %49 = getelementptr inbounds %struct.major_info, %struct.major_info* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %15
  %52 = call i32 (...) @rcu_read_unlock()
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %5, align 4
  br label %58

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  ret i32 %59
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.major_info* @tap_get_major(i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.tap_dev*, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

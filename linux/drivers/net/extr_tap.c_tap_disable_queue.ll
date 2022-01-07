; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_disable_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_tap_disable_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32, i32, i32 }
%struct.tap_dev = type { i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_queue*)* @tap_disable_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tap_disable_queue(%struct.tap_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tap_queue*, align 8
  %4 = alloca %struct.tap_dev*, align 8
  %5 = alloca %struct.tap_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.tap_queue* %0, %struct.tap_queue** %3, align 8
  %7 = call i32 (...) @ASSERT_RTNL()
  %8 = load %struct.tap_queue*, %struct.tap_queue** %3, align 8
  %9 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.tap_queue*, %struct.tap_queue** %3, align 8
  %17 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @rtnl_dereference(i32 %18)
  %20 = bitcast i8* %19 to %struct.tap_dev*
  store %struct.tap_dev* %20, %struct.tap_dev** %4, align 8
  %21 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %22 = icmp ne %struct.tap_dev* %21, null
  br i1 %22, label %23, label %75

23:                                               ; preds = %15
  %24 = load %struct.tap_queue*, %struct.tap_queue** %3, align 8
  %25 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %29 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sge i32 %27, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %35 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %38 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %36, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @rtnl_dereference(i32 %43)
  %45 = bitcast i8* %44 to %struct.tap_queue*
  store %struct.tap_queue* %45, %struct.tap_queue** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.tap_queue*, %struct.tap_queue** %5, align 8
  %48 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %50 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.tap_queue*, %struct.tap_queue** %5, align 8
  %57 = call i32 @rcu_assign_pointer(i32 %55, %struct.tap_queue* %56)
  %58 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %59 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %62 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %60, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @RCU_INIT_POINTER(i32 %67, i32* null)
  %69 = load %struct.tap_queue*, %struct.tap_queue** %3, align 8
  %70 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  %71 = load %struct.tap_dev*, %struct.tap_dev** %4, align 8
  %72 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %23, %15
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %12
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i8* @rtnl_dereference(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.tap_queue*) #1

declare dso_local i32 @RCU_INIT_POINTER(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

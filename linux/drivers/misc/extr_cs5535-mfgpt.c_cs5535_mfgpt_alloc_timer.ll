; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_alloc_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_cs5535-mfgpt.c_cs5535_mfgpt_alloc_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs5535_mfgpt_chip = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.cs5535_mfgpt_timer = type { i32, %struct.cs5535_mfgpt_chip* }

@cs5535_mfgpt_chip = common dso_local global %struct.cs5535_mfgpt_chip zeroinitializer, align 8
@MFGPT_DOMAIN_WORKING = common dso_local global i32 0, align 4
@MFGPT_MAX_TIMERS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"registered timer %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cs5535_mfgpt_timer* @cs5535_mfgpt_alloc_timer(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.cs5535_mfgpt_chip*, align 8
  %6 = alloca %struct.cs5535_mfgpt_timer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store %struct.cs5535_mfgpt_chip* @cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip** %5, align 8
  store %struct.cs5535_mfgpt_timer* null, %struct.cs5535_mfgpt_timer** %6, align 8
  %10 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %11 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %109

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @MFGPT_DOMAIN_WORKING, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 6, i32* %8, align 4
  br label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @MFGPT_MAX_TIMERS, align 4
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %20, %19
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 @WARN_ON(i32 1)
  br label %109

28:                                               ; preds = %22
  %29 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %30 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %29, i32 0, i32 1
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %28
  %36 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %37 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @find_first_bit(i32 %38, i32 %39)
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  br label %49

48:                                               ; preds = %35
  br label %49

49:                                               ; preds = %48, %45
  %50 = phi i32 [ %47, %45 ], [ -1, %48 ]
  store i32 %50, i32* %3, align 4
  br label %60

51:                                               ; preds = %28
  %52 = load i32, i32* %3, align 4
  %53 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %54 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @test_bit(i32 %52, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %51
  store i32 -1, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %51
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i32, i32* %3, align 4
  %62 = icmp sge i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %60
  %64 = load i32, i32* %3, align 4
  %65 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %66 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @__clear_bit(i32 %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %60
  %70 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %71 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %70, i32 0, i32 1
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  %74 = load i32, i32* %3, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %109

77:                                               ; preds = %69
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call %struct.cs5535_mfgpt_timer* @kmalloc(i32 16, i32 %78)
  store %struct.cs5535_mfgpt_timer* %79, %struct.cs5535_mfgpt_timer** %6, align 8
  %80 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %81 = icmp ne %struct.cs5535_mfgpt_timer* %80, null
  br i1 %81, label %96, label %82

82:                                               ; preds = %77
  %83 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %84 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %83, i32 0, i32 1
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %89 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @__set_bit(i32 %87, i32 %90)
  %92 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %93 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %92, i32 0, i32 1
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  br label %109

96:                                               ; preds = %77
  %97 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %98 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %99 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %98, i32 0, i32 1
  store %struct.cs5535_mfgpt_chip* %97, %struct.cs5535_mfgpt_chip** %99, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  %102 = getelementptr inbounds %struct.cs5535_mfgpt_timer, %struct.cs5535_mfgpt_timer* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.cs5535_mfgpt_chip*, %struct.cs5535_mfgpt_chip** %5, align 8
  %104 = getelementptr inbounds %struct.cs5535_mfgpt_chip, %struct.cs5535_mfgpt_chip* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %3, align 4
  %108 = call i32 @dev_info(i32* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %96, %82, %76, %26, %14
  %110 = load %struct.cs5535_mfgpt_timer*, %struct.cs5535_mfgpt_timer** %6, align 8
  ret %struct.cs5535_mfgpt_timer* %110
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @find_first_bit(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.cs5535_mfgpt_timer* @kmalloc(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

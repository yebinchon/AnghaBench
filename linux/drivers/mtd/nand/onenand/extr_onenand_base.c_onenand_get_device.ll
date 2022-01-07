; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32, i32, i32 (%struct.mtd_info.0*)* }
%struct.mtd_info.0 = type opaque

@wait = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@FL_READY = common dso_local global i32 0, align 4
@FL_PM_SUSPENDED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32)* @onenand_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_get_device(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.onenand_chip*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %7, i32 0, i32 0
  %9 = load %struct.onenand_chip*, %struct.onenand_chip** %8, align 8
  store %struct.onenand_chip* %9, %struct.onenand_chip** %6, align 8
  %10 = load i32, i32* @wait, align 4
  %11 = load i32, i32* @current, align 4
  %12 = call i32 @DECLARE_WAITQUEUE(i32 %10, i32 %11)
  br label %13

13:                                               ; preds = %2, %64
  %14 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %15 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %14, i32 0, i32 2
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %18 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @FL_READY, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %13
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %25 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %27 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %26, i32 0, i32 2
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %34 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %33, i32 0, i32 3
  %35 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %34, align 8
  %36 = icmp ne i32 (%struct.mtd_info.0*)* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %39 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %38, i32 0, i32 3
  %40 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %39, align 8
  %41 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %42 = bitcast %struct.mtd_info* %41 to %struct.mtd_info.0*
  %43 = call i32 %40(%struct.mtd_info.0* %42)
  br label %44

44:                                               ; preds = %37, %32, %22
  br label %77

45:                                               ; preds = %13
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %51 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %50, i32 0, i32 2
  %52 = call i32 @spin_unlock(i32* %51)
  %53 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %54 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @FL_PM_SUSPENDED, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %49
  br label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @EAGAIN, align 4
  %61 = sub nsw i32 0, %60
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  store i32 %63, i32* %3, align 4
  br label %78

64:                                               ; preds = %45
  %65 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %66 = call i32 @set_current_state(i32 %65)
  %67 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %68 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %67, i32 0, i32 1
  %69 = call i32 @add_wait_queue(i32* %68, i32* @wait)
  %70 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %71 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %70, i32 0, i32 2
  %72 = call i32 @spin_unlock(i32* %71)
  %73 = call i32 (...) @schedule()
  %74 = load %struct.onenand_chip*, %struct.onenand_chip** %6, align 8
  %75 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %74, i32 0, i32 1
  %76 = call i32 @remove_wait_queue(i32* %75, i32* @wait)
  br label %13

77:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %77, %62
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @DECLARE_WAITQUEUE(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

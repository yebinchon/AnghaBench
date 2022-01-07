; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@E100_WAIT_SCB_TIMEOUT = common dso_local global i32 0, align 4
@E100_WAIT_SCB_FAST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@cuc_resume = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*, i64, i32)* @e100_exec_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_exec_cmd(%struct.nic* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.nic*, %struct.nic** %4, align 8
  %11 = getelementptr inbounds %struct.nic, %struct.nic* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %3
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @E100_WAIT_SCB_TIMEOUT, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.nic*, %struct.nic** %4, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @ioread8(i32* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @likely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %45

31:                                               ; preds = %18
  %32 = call i32 (...) @cpu_relax()
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @E100_WAIT_SCB_FAST, align 4
  %35 = icmp ugt i32 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = call i32 @udelay(i32 5)
  br label %41

41:                                               ; preds = %39, %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %14

45:                                               ; preds = %30, %14
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @E100_WAIT_SCB_TIMEOUT, align 4
  %48 = icmp eq i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %45
  %53 = load i32, i32* @EAGAIN, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %78

55:                                               ; preds = %45
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* @cuc_resume, align 8
  %58 = icmp ne i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.nic*, %struct.nic** %4, align 8
  %65 = getelementptr inbounds %struct.nic, %struct.nic* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 1
  %69 = call i32 @iowrite32(i32 %63, i32* %68)
  br label %70

70:                                               ; preds = %62, %55
  %71 = load i64, i64* %5, align 8
  %72 = load %struct.nic*, %struct.nic** %4, align 8
  %73 = getelementptr inbounds %struct.nic, %struct.nic* %72, i32 0, i32 1
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = call i32 @iowrite8(i64 %71, i32* %76)
  br label %78

78:                                               ; preds = %70, %52
  %79 = load %struct.nic*, %struct.nic** %4, align 8
  %80 = getelementptr inbounds %struct.nic, %struct.nic* %79, i32 0, i32 0
  %81 = load i64, i64* %7, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ioread8(i32*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @iowrite8(i64, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

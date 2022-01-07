; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_phantom.c_phantom_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_phantom.c_phantom_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phantom_device = type { i32, i32, i32, i32, i64, i32, i64, %struct.phm_regs }
%struct.phm_regs = type { i32, i32*, i32 }

@PHN_CONTROL = common dso_local global i64 0, align 8
@PHN_CTL_IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PHB_NOT_OH = common dso_local global i32 0, align 4
@PHN_CTL_AMP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @phantom_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phantom_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.phantom_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.phm_regs*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.phantom_device*
  store %struct.phantom_device* %12, %struct.phantom_device** %6, align 8
  %13 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %14 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %13, i32 0, i32 5
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %17 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PHN_CONTROL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ioread32(i64 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PHN_CTL_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %28 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %27, i32 0, i32 5
  %29 = call i32 @spin_unlock(i32* %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %114

31:                                               ; preds = %2
  %32 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %33 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @iowrite32(i32 0, i64 %34)
  %36 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %37 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @iowrite32(i32 192, i64 %38)
  %40 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %41 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @PHB_NOT_OH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %99

46:                                               ; preds = %31
  %47 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %48 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %47, i32 0, i32 7
  store %struct.phm_regs* %48, %struct.phm_regs** %9, align 8
  %49 = load %struct.phm_regs*, %struct.phm_regs** %9, align 8
  %50 = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @min(i32 %51, i32 8)
  store i32 %52, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %81, %46
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %53
  %58 = load %struct.phm_regs*, %struct.phm_regs** %9, align 8
  %59 = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @BIT(i32 %61)
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %57
  %66 = load %struct.phm_regs*, %struct.phm_regs** %9, align 8
  %67 = getelementptr inbounds %struct.phm_regs, %struct.phm_regs* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %74 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %73, i32 0, i32 6
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = add nsw i64 %75, %77
  %79 = call i32 @iowrite32(i32 %72, i64 %78)
  br label %80

80:                                               ; preds = %65, %57
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %7, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %53

84:                                               ; preds = %53
  %85 = load i32, i32* @PHN_CTL_AMP, align 4
  %86 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %87 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = xor i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %91 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %94 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %93, i32 0, i32 4
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PHN_CONTROL, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @iowrite32(i32 %92, i64 %97)
  br label %99

99:                                               ; preds = %84, %31
  %100 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %101 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %100, i32 0, i32 5
  %102 = call i32 @spin_unlock(i32* %101)
  %103 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %104 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %103, i32 0, i32 4
  %105 = load i64, i64* %104, align 8
  %106 = call i32 @ioread32(i64 %105)
  %107 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %108 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %107, i32 0, i32 3
  %109 = call i32 @atomic_inc(i32* %108)
  %110 = load %struct.phantom_device*, %struct.phantom_device** %6, align 8
  %111 = getelementptr inbounds %struct.phantom_device, %struct.phantom_device* %110, i32 0, i32 2
  %112 = call i32 @wake_up_interruptible(i32* %111)
  %113 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %99, %26
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

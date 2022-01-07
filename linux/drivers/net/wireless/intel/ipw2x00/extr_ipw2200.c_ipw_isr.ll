; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@STATUS_INT_ENABLED = common dso_local global i32 0, align 4
@IPW_INTA_RW = common dso_local global i32 0, align 4
@IPW_INTA_MASK_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"IRQ INTA == 0xFFFFFFFF\0A\00", align 1
@IPW_INTA_MASK_ALL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ipw_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipw_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ipw_priv*
  store %struct.ipw_priv* %10, %struct.ipw_priv** %6, align 8
  %11 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %12 = icmp ne %struct.ipw_priv* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %17 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %16, i32 0, i32 2
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %20 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @STATUS_INT_ENABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  br label %67

26:                                               ; preds = %15
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %28 = load i32, i32* @IPW_INTA_RW, align 4
  %29 = call i32 @ipw_read32(%struct.ipw_priv* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %31 = load i32, i32* @IPW_INTA_MASK_R, align 4
  %32 = call i32 @ipw_read32(%struct.ipw_priv* %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = call i32 @IPW_WARNING(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %67

37:                                               ; preds = %26
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  br label %67

45:                                               ; preds = %37
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %47 = call i32 @__ipw_disable_interrupts(%struct.ipw_priv* %46)
  %48 = load i32, i32* @IPW_INTA_MASK_ALL, align 4
  %49 = load i32, i32* %8, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %54 = load i32, i32* @IPW_INTA_RW, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ipw_write32(%struct.ipw_priv* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %7, align 4
  %58 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %59 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %61 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %60, i32 0, i32 3
  %62 = call i32 @tasklet_schedule(i32* %61)
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %64 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %44, %35, %25
  %68 = load %struct.ipw_priv*, %struct.ipw_priv** %6, align 8
  %69 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %68, i32 0, i32 2
  %70 = call i32 @spin_unlock(i32* %69)
  %71 = load i32, i32* @IRQ_NONE, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %45, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ipw_read32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @IPW_WARNING(i8*) #1

declare dso_local i32 @__ipw_disable_interrupts(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

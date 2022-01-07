; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_winbond-cir.c_wbcir_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.wbcir_data* }
%struct.wbcir_data = type { i64, i32*, i32, i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WBCIR_TXSTATE_INACTIVE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i32*, i32)* @wbcir_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbcir_tx(%struct.rc_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wbcir_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %12, i32 0, i32 0
  %14 = load %struct.wbcir_data*, %struct.wbcir_data** %13, align 8
  store %struct.wbcir_data* %14, %struct.wbcir_data** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc_array(i32 %15, i32 4, i32 %16)
  store i32* %17, i32** %9, align 8
  %18 = load i32*, i32** %9, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %24
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @DIV_ROUND_CLOSEST(i32 %33, i32 10)
  %35 = load i32*, i32** %9, align 8
  %36 = load i32, i32* %10, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %24

42:                                               ; preds = %24
  %43 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %44 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %43, i32 0, i32 3
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %48 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WBCIR_TXSTATE_INACTIVE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %54 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %53, i32 0, i32 3
  %55 = load i64, i64* %11, align 8
  %56 = call i32 @spin_unlock_irqrestore(i32* %54, i64 %55)
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @kfree(i32* %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %77

61:                                               ; preds = %42
  %62 = load i32*, i32** %9, align 8
  %63 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %64 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %63, i32 0, i32 1
  store i32* %62, i32** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %67 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %69 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %68, i32 0, i32 4
  store i64 0, i64* %69, align 8
  %70 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %71 = call i32 @wbcir_irq_tx(%struct.wbcir_data* %70)
  %72 = load %struct.wbcir_data*, %struct.wbcir_data** %8, align 8
  %73 = getelementptr inbounds %struct.wbcir_data, %struct.wbcir_data* %72, i32 0, i32 3
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %4, align 4
  br label %77

77:                                               ; preds = %61, %52, %20
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wbcir_irq_tx(%struct.wbcir_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

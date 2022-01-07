; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_set_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_rc5t583-irq.c_rc5t583_irq_set_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc5t583_irq_data = type { i32, i32 }
%struct.irq_data = type { i32 }
%struct.rc5t583 = type { i32, i32* }

@rc5t583_irqs = common dso_local global %struct.rc5t583_irq_data* null, align 8
@GPIO_INT = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_BOTH = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_FALLING = common dso_local global i32 0, align 4
@IRQ_TYPE_EDGE_RISING = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.irq_data*, i32)* @rc5t583_irq_set_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc5t583_irq_set_type(%struct.irq_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.irq_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc5t583*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rc5t583_irq_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %13 = call %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data* %12)
  store %struct.rc5t583* %13, %struct.rc5t583** %6, align 8
  %14 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %15 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %18 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sub i32 %16, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** @rc5t583_irqs, align 8
  %22 = load i32, i32* %7, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %21, i64 %23
  store %struct.rc5t583_irq_data* %24, %struct.rc5t583_irq_data** %8, align 8
  store i32 0, i32* %9, align 4
  %25 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %8, align 8
  %26 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @GPIO_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %85

31:                                               ; preds = %2
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @IRQ_TYPE_EDGE_BOTH, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %85

36:                                               ; preds = %31
  %37 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %8, align 8
  %38 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 4
  store i32 %40, i32* %10, align 4
  %41 = load %struct.rc5t583_irq_data*, %struct.rc5t583_irq_data** %8, align 8
  %42 = getelementptr inbounds %struct.rc5t583_irq_data, %struct.rc5t583_irq_data* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = srem i32 %43, 4
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IRQ_TYPE_EDGE_FALLING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %36
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %50, 2
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %49, %36
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @IRQ_TYPE_EDGE_RISING, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load i32, i32* %9, align 4
  %59 = or i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* %11, align 4
  %62 = shl i32 3, %61
  %63 = xor i32 %62, -1
  %64 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %65 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, %63
  store i32 %71, i32* %69, align 4
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 %72, %73
  %75 = load %struct.rc5t583*, %struct.rc5t583** %6, align 8
  %76 = getelementptr inbounds %struct.rc5t583, %struct.rc5t583* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %74
  store i32 %82, i32* %80, align 4
  %83 = load %struct.irq_data*, %struct.irq_data** %4, align 8
  %84 = call i32 @rc5t583_irq_unmask(%struct.irq_data* %83)
  store i32 0, i32* %3, align 4
  br label %88

85:                                               ; preds = %31, %2
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %85, %60
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local %struct.rc5t583* @irq_data_get_irq_chip_data(%struct.irq_data*) #1

declare dso_local i32 @rc5t583_irq_unmask(%struct.irq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

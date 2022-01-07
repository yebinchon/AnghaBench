; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv88e6xxx_g2_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.mv88e6xxx_chip*
  store %struct.mv88e6xxx_chip* %12, %struct.mv88e6xxx_chip** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %14 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %13)
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %16 = call i32 @mv88e6xxx_g2_int_source(%struct.mv88e6xxx_chip* %15, i32* %10)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %18 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %17)
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %48

22:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %23

23:                                               ; preds = %44, %22
  %24 = load i32, i32* %8, align 4
  %25 = icmp ult i32 %24, 16
  br i1 %25, label %26, label %47

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %8, align 4
  %29 = shl i32 1, %28
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %43

32:                                               ; preds = %26
  %33 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %34 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @irq_find_mapping(i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @handle_nested_irq(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %32, %26
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %23

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47, %21
  %49 = load i32, i32* %6, align 4
  %50 = icmp ugt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  br label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @IRQ_NONE, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  ret i32 %56
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_int_source(%struct.mv88e6xxx_chip*, i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

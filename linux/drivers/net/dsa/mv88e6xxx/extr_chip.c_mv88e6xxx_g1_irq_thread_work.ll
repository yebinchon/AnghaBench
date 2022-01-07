; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_g1_irq_thread_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_g1_irq_thread_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MV88E6XXX_G1_STS = common dso_local global i32 0, align 4
@MV88E6XXX_G1_CTL1 = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*)* @mv88e6xxx_g1_irq_thread_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_irq_thread_work(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca %struct.mv88e6xxx_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %2, align 8
  store i32 0, i32* %3, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %10 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %9)
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %12 = load i32, i32* @MV88E6XXX_G1_STS, align 4
  %13 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %11, i32 %12, i32* %6)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %15 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %82

19:                                               ; preds = %1
  br label %20

20:                                               ; preds = %76, %19
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %46, %20
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ult i32 %22, %26
  br i1 %27, label %28, label %49

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 1, %30
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %36 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @irq_find_mapping(i32 %38, i32 %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @handle_nested_irq(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %34, %28
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %21

49:                                               ; preds = %21
  %50 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %51 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %50)
  %52 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %53 = load i32, i32* @MV88E6XXX_G1_CTL1, align 4
  %54 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %52, i32 %53, i32* %7)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %62

58:                                               ; preds = %49
  %59 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %60 = load i32, i32* @MV88E6XXX_G1_STS, align 4
  %61 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %59, i32 %60, i32* %6)
  store i32 %61, i32* %8, align 4
  br label %62

62:                                               ; preds = %58, %57
  %63 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %64 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %82

68:                                               ; preds = %62
  %69 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %2, align 8
  %70 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @GENMASK(i32 %72, i32 0)
  %74 = load i32, i32* %7, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %20, label %81

81:                                               ; preds = %76
  br label %82

82:                                               ; preds = %81, %67, %18
  %83 = load i32, i32* %3, align 4
  %84 = icmp ugt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %82
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  br label %89

87:                                               ; preds = %82
  %88 = load i32, i32* @IRQ_NONE, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  ret i32 %90
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @irq_find_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

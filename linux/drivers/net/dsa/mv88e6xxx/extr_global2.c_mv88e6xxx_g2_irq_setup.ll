; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@mv88e6xxx_g2_irq_domain_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mv88e6xxx_g2_irq_chip = common dso_local global i32 0, align 4
@MV88E6XXX_G1_STS_IRQ_DEVICE = common dso_local global i32 0, align 4
@mv88e6xxx_g2_irq_thread_fn = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mv88e6xxx-g2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g2_irq_setup(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %7 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %13 = call i32 @irq_domain_add_simple(i32 %11, i32 16, i32 0, i32* @mv88e6xxx_g2_irq_domain_ops, %struct.mv88e6xxx_chip* %12)
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %15 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %18 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %102

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %36, %25
  %27 = load i32, i32* %5, align 4
  %28 = icmp slt i32 %27, 16
  br i1 %28, label %29, label %39

29:                                               ; preds = %26
  %30 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %31 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @irq_create_mapping(i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %26

39:                                               ; preds = %26
  %40 = load i32, i32* @mv88e6xxx_g2_irq_chip, align 4
  %41 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %42 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  store i32 %40, i32* %43, align 4
  %44 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %45 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 -1, i32* %46, align 4
  %47 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %48 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MV88E6XXX_G1_STS_IRQ_DEVICE, align 4
  %52 = call i8* @irq_find_mapping(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %55 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %57 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %39
  %61 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %62 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %4, align 4
  br label %78

64:                                               ; preds = %39
  %65 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %66 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @mv88e6xxx_g2_irq_thread_fn, align 4
  %69 = load i32, i32* @IRQF_ONESHOT, align 4
  %70 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %71 = call i32 @request_threaded_irq(i32 %67, i32* null, i32 %68, i32 %69, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.mv88e6xxx_chip* %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %78

75:                                               ; preds = %64
  %76 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %77 = call i32 @mv88e6xxx_g2_watchdog_setup(%struct.mv88e6xxx_chip* %76)
  store i32 %77, i32* %2, align 4
  br label %102

78:                                               ; preds = %74, %60
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %92, %78
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 16
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %84 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i8* @irq_find_mapping(i32 %86, i32 %87)
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @irq_dispose_mapping(i32 %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %79

95:                                               ; preds = %79
  %96 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %97 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @irq_domain_remove(i32 %99)
  %101 = load i32, i32* %4, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %95, %75, %22
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @irq_domain_add_simple(i32, i32, i32, i32*, %struct.mv88e6xxx_chip*) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i8* @irq_find_mapping(i32, i32) #1

declare dso_local i32 @request_threaded_irq(i32, i32*, i32, i32, i8*, %struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_watchdog_setup(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @irq_dispose_mapping(i32) #1

declare dso_local i32 @irq_domain_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

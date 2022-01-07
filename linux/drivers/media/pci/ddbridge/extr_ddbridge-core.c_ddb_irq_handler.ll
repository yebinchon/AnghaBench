; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32 }

@INTERRUPT_STATUS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INTERRUPT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ddb*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ddb*
  store %struct.ddb* %10, %struct.ddb** %6, align 8
  %11 = load %struct.ddb*, %struct.ddb** %6, align 8
  %12 = load i32, i32* @INTERRUPT_STATUS, align 4
  %13 = call i32 @ddbreadl(%struct.ddb* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %47, %19
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, -2147483648
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %20
  %27 = load %struct.ddb*, %struct.ddb** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @INTERRUPT_ACK, align 4
  %30 = call i32 @ddbwritel(%struct.ddb* %27, i32 %28, i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 15
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %26
  %35 = load %struct.ddb*, %struct.ddb** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @irq_handle_msg(%struct.ddb* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %26
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 268435200
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = load %struct.ddb*, %struct.ddb** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @irq_handle_io(%struct.ddb* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.ddb*, %struct.ddb** %6, align 8
  %49 = load i32, i32* @INTERRUPT_STATUS, align 4
  %50 = call i32 @ddbreadl(%struct.ddb* %48, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %20, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %24, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @ddbreadl(%struct.ddb*, i32) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @irq_handle_msg(%struct.ddb*, i32) #1

declare dso_local i32 @irq_handle_io(%struct.ddb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_irq_handler0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ddbridge/extr_ddbridge-core.c_ddb_irq_handler0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ddb = type { i32 }

@INTERRUPT_STATUS = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INTERRUPT_ACK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ddb_irq_handler0(i32 %0, i8* %1) #0 {
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
  store i32 -1879048448, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.ddb*, %struct.ddb** %6, align 8
  %13 = load i32, i32* @INTERRUPT_STATUS, align 4
  %14 = call i32 @ddbreadl(%struct.ddb* %12, i32 %13)
  %15 = and i32 %11, %14
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @IRQ_NONE, align 4
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %35, %20
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, -2147483648
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.ddb*, %struct.ddb** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @INTERRUPT_ACK, align 4
  %31 = call i32 @ddbwritel(%struct.ddb* %28, i32 %29, i32 %30)
  %32 = load %struct.ddb*, %struct.ddb** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @irq_handle_io(%struct.ddb* %32, i32 %33)
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.ddb*, %struct.ddb** %6, align 8
  %38 = load i32, i32* @INTERRUPT_STATUS, align 4
  %39 = call i32 @ddbreadl(%struct.ddb* %37, i32 %38)
  %40 = and i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %21, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %25, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @ddbreadl(%struct.ddb*, i32) #1

declare dso_local i32 @ddbwritel(%struct.ddb*, i32, i32) #1

declare dso_local i32 @irq_handle_io(%struct.ddb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

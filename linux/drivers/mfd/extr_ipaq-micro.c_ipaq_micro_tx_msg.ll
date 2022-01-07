; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_ipaq_micro_tx_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ipaq-micro.c_ipaq_micro_tx_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipaq_micro = type { i32, %struct.ipaq_micro_msg*, i32, i32 }
%struct.ipaq_micro_msg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"TX msg: %02x, %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipaq_micro_tx_msg(%struct.ipaq_micro* %0, %struct.ipaq_micro_msg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipaq_micro*, align 8
  %5 = alloca %struct.ipaq_micro_msg*, align 8
  %6 = alloca i64, align 8
  store %struct.ipaq_micro* %0, %struct.ipaq_micro** %4, align 8
  store %struct.ipaq_micro_msg* %1, %struct.ipaq_micro_msg** %5, align 8
  %7 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %8 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ipaq_micro_msg*, %struct.ipaq_micro_msg** %5, align 8
  %11 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ipaq_micro_msg*, %struct.ipaq_micro_msg** %5, align 8
  %14 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %15)
  %17 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %18 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %22 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %21, i32 0, i32 1
  %23 = load %struct.ipaq_micro_msg*, %struct.ipaq_micro_msg** %22, align 8
  %24 = icmp ne %struct.ipaq_micro_msg* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load %struct.ipaq_micro_msg*, %struct.ipaq_micro_msg** %5, align 8
  %27 = getelementptr inbounds %struct.ipaq_micro_msg, %struct.ipaq_micro_msg* %26, i32 0, i32 0
  %28 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %29 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %28, i32 0, i32 2
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %32 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %31, i32 0, i32 0
  %33 = load i64, i64* %6, align 8
  %34 = call i32 @spin_unlock_irqrestore(i32* %32, i64 %33)
  store i32 0, i32* %3, align 4
  br label %45

35:                                               ; preds = %2
  %36 = load %struct.ipaq_micro_msg*, %struct.ipaq_micro_msg** %5, align 8
  %37 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %38 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %37, i32 0, i32 1
  store %struct.ipaq_micro_msg* %36, %struct.ipaq_micro_msg** %38, align 8
  %39 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %40 = call i32 @ipaq_micro_trigger_tx(%struct.ipaq_micro* %39)
  %41 = load %struct.ipaq_micro*, %struct.ipaq_micro** %4, align 8
  %42 = getelementptr inbounds %struct.ipaq_micro, %struct.ipaq_micro* %41, i32 0, i32 0
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %35, %25
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipaq_micro_trigger_tx(%struct.ipaq_micro*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

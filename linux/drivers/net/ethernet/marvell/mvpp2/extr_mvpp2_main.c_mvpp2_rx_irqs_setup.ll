; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_irqs_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_rx_irqs_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32, %struct.mvpp2_queue_vector*, %struct.mvpp2* }
%struct.mvpp2_queue_vector = type { i32, i32, i32 }
%struct.mvpp2 = type { i64 }

@MVPP21 = common dso_local global i64 0, align 8
@MVPP22_ISR_RXQ_GROUP_INDEX_GROUP_OFFSET = common dso_local global i32 0, align 4
@MVPP22_ISR_RXQ_GROUP_INDEX_REG = common dso_local global i32 0, align 4
@MVPP22_ISR_RXQ_SUB_GROUP_SIZE_OFFSET = common dso_local global i32 0, align 4
@MVPP22_ISR_RXQ_SUB_GROUP_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_rx_irqs_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_rx_irqs_setup(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2_queue_vector*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 4
  %9 = load %struct.mvpp2*, %struct.mvpp2** %8, align 8
  store %struct.mvpp2* %9, %struct.mvpp2** %3, align 8
  %10 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %11 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MVPP21, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @MVPP21_ISR_RXQ_GROUP_REG(i32 %19)
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %22 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mvpp2_write(%struct.mvpp2* %16, i32 %20, i32 %23)
  br label %76

25:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %26

26:                                               ; preds = %73, %25
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %29 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %76

32:                                               ; preds = %26
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 3
  %35 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %35, i64 %37
  store %struct.mvpp2_queue_vector* %38, %struct.mvpp2_queue_vector** %6, align 8
  %39 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %40 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %32
  br label %73

44:                                               ; preds = %32
  %45 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %46 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %4, align 4
  %48 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %49 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MVPP22_ISR_RXQ_GROUP_INDEX_GROUP_OFFSET, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %56 = load i32, i32* @MVPP22_ISR_RXQ_GROUP_INDEX_REG, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @mvpp2_write(%struct.mvpp2* %55, i32 %56, i32 %57)
  %59 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %60 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %4, align 4
  %62 = load %struct.mvpp2_queue_vector*, %struct.mvpp2_queue_vector** %6, align 8
  %63 = getelementptr inbounds %struct.mvpp2_queue_vector, %struct.mvpp2_queue_vector* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MVPP22_ISR_RXQ_SUB_GROUP_SIZE_OFFSET, align 4
  %66 = shl i32 %64, %65
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %70 = load i32, i32* @MVPP22_ISR_RXQ_SUB_GROUP_CONFIG_REG, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @mvpp2_write(%struct.mvpp2* %69, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %44, %43
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %26

76:                                               ; preds = %15, %26
  ret void
}

declare dso_local i32 @mvpp2_write(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @MVPP21_ISR_RXQ_GROUP_REG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

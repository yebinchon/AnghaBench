; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_desc = type { i32 }
%struct.ucb1x00 = type { i64 }

@UCB_IE_STATUS = common dso_local global i32 0, align 4
@UCB_IE_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_desc*)* @ucb1x00_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ucb1x00_irq(%struct.irq_desc* %0) #0 {
  %2 = alloca %struct.irq_desc*, align 8
  %3 = alloca %struct.ucb1x00*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.irq_desc* %0, %struct.irq_desc** %2, align 8
  %6 = load %struct.irq_desc*, %struct.irq_desc** %2, align 8
  %7 = call %struct.ucb1x00* @irq_desc_get_handler_data(%struct.irq_desc* %6)
  store %struct.ucb1x00* %7, %struct.ucb1x00** %3, align 8
  %8 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %9 = call i32 @ucb1x00_enable(%struct.ucb1x00* %8)
  %10 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %11 = load i32, i32* @UCB_IE_STATUS, align 4
  %12 = call i32 @ucb1x00_reg_read(%struct.ucb1x00* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %14 = load i32, i32* @UCB_IE_CLEAR, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %13, i32 %14, i32 %15)
  %17 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %18 = load i32, i32* @UCB_IE_CLEAR, align 4
  %19 = call i32 @ucb1x00_reg_write(%struct.ucb1x00* %17, i32 %18, i32 0)
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %41, %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ult i32 %21, 16
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i1 [ false, %20 ], [ %25, %23 ]
  br i1 %27, label %28, label %46

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = and i32 %29, 1
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %34 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = zext i32 %36 to i64
  %38 = add nsw i64 %35, %37
  %39 = call i32 @generic_handle_irq(i64 %38)
  br label %40

40:                                               ; preds = %32, %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %4, align 4
  %45 = lshr i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %20

46:                                               ; preds = %26
  %47 = load %struct.ucb1x00*, %struct.ucb1x00** %3, align 8
  %48 = call i32 @ucb1x00_disable(%struct.ucb1x00* %47)
  ret void
}

declare dso_local %struct.ucb1x00* @irq_desc_get_handler_data(%struct.irq_desc*) #1

declare dso_local i32 @ucb1x00_enable(%struct.ucb1x00*) #1

declare dso_local i32 @ucb1x00_reg_read(%struct.ucb1x00*, i32) #1

declare dso_local i32 @ucb1x00_reg_write(%struct.ucb1x00*, i32, i32) #1

declare dso_local i32 @generic_handle_irq(i64) #1

declare dso_local i32 @ucb1x00_disable(%struct.ucb1x00*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

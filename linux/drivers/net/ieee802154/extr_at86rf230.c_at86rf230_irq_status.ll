; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_irq_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_irq_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_state_change = type { i32*, %struct.at86rf230_local* }
%struct.at86rf230_local = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_TRX_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"not supported irq %02x received\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @at86rf230_irq_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at86rf230_irq_status(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.at86rf230_state_change*, align 8
  %4 = alloca %struct.at86rf230_local*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.at86rf230_state_change*
  store %struct.at86rf230_state_change* %8, %struct.at86rf230_state_change** %3, align 8
  %9 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %10 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %9, i32 0, i32 1
  %11 = load %struct.at86rf230_local*, %struct.at86rf230_local** %10, align 8
  store %struct.at86rf230_local* %11, %struct.at86rf230_local** %4, align 8
  %12 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %13 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %19 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @enable_irq(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @IRQ_TRX_END, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %1
  %29 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %30 = call i32 @at86rf230_irq_trx_end(%struct.at86rf230_state_change* %29)
  br label %40

31:                                               ; preds = %1
  %32 = load %struct.at86rf230_local*, %struct.at86rf230_local** %4, align 8
  %33 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %3, align 8
  %39 = call i32 @kfree(%struct.at86rf230_state_change* %38)
  br label %40

40:                                               ; preds = %31, %28
  ret void
}

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @at86rf230_irq_trx_end(%struct.at86rf230_state_change*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.at86rf230_state_change*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

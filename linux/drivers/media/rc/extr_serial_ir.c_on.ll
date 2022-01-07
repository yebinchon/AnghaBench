; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_serial_ir.c_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@txsense = common dso_local global i64 0, align 8
@UART_MCR = common dso_local global i32 0, align 4
@hardware = common dso_local global %struct.TYPE_2__* null, align 8
@type = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @on() #0 {
  %1 = load i64, i64* @txsense, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load i32, i32* @UART_MCR, align 4
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %6 = load i64, i64* @type, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i64 %6
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @soutp(i32 %4, i32 %9)
  br label %19

11:                                               ; preds = %0
  %12 = load i32, i32* @UART_MCR, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @hardware, align 8
  %14 = load i64, i64* @type, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @soutp(i32 %12, i32 %17)
  br label %19

19:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @soutp(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

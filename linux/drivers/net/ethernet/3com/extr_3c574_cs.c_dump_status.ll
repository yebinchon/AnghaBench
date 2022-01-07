; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_dump_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_dump_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"  irq status %04x, rx status %04x, tx status %02x, tx free %04x\0A\00", align 1
@EL3_STATUS = common dso_local global i32 0, align 4
@RxStatus = common dso_local global i32 0, align 4
@TxStatus = common dso_local global i64 0, align 8
@TxFree = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"  diagnostics: fifo %04x net %04x ethernet %04x media %04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dump_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_status(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = call i32 @EL3WINDOW(i32 1)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @EL3_STATUS, align 4
  %11 = add i32 %9, %10
  %12 = call i32 @inw(i32 %11)
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RxStatus, align 4
  %15 = add i32 %13, %14
  %16 = call i32 @inw(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = load i64, i64* @TxStatus, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @inb(i64 %20)
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TxFree, align 4
  %24 = add i32 %22, %23
  %25 = call i32 @inw(i32 %24)
  %26 = call i32 @netdev_info(%struct.net_device* %8, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %16, i32 %21, i32 %25)
  %27 = call i32 @EL3WINDOW(i32 4)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = load i32, i32* %3, align 4
  %30 = add i32 %29, 4
  %31 = call i32 @inw(i32 %30)
  %32 = load i32, i32* %3, align 4
  %33 = add i32 %32, 6
  %34 = call i32 @inw(i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = add i32 %35, 8
  %37 = call i32 @inw(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = add i32 %38, 10
  %40 = call i32 @inw(i32 %39)
  %41 = call i32 @netdev_info(%struct.net_device* %28, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = call i32 @EL3WINDOW(i32 1)
  ret void
}

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

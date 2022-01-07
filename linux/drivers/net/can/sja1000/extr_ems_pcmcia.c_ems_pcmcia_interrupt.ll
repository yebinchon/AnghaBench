; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pcmcia.c_ems_pcmcia_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_ems_pcmcia.c_ems_pcmcia_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ems_pcmcia_card = type { i32, %struct.net_device**, i32 }
%struct.net_device = type { i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @ems_pcmcia_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ems_pcmcia_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ems_pcmcia_card*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.ems_pcmcia_card*
  store %struct.ems_pcmcia_card* %12, %struct.ems_pcmcia_card** %6, align 8
  %13 = load i64, i64* @IRQ_NONE, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.ems_pcmcia_card*, %struct.ems_pcmcia_card** %6, align 8
  %15 = getelementptr inbounds %struct.ems_pcmcia_card, %struct.ems_pcmcia_card* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @readw(i32 %16)
  %18 = icmp ne i32 %17, 43605
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %20, i64* %3, align 8
  br label %62

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %57, %21
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %48, %22
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.ems_pcmcia_card*, %struct.ems_pcmcia_card** %6, align 8
  %26 = getelementptr inbounds %struct.ems_pcmcia_card, %struct.ems_pcmcia_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %23
  %30 = load %struct.ems_pcmcia_card*, %struct.ems_pcmcia_card** %6, align 8
  %31 = getelementptr inbounds %struct.ems_pcmcia_card, %struct.ems_pcmcia_card* %30, i32 0, i32 1
  %32 = load %struct.net_device**, %struct.net_device*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.net_device*, %struct.net_device** %32, i64 %34
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  store %struct.net_device* %36, %struct.net_device** %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %7, align 8
  %38 = icmp ne %struct.net_device* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %48

40:                                               ; preds = %29
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.net_device*, %struct.net_device** %7, align 8
  %43 = call i64 @sja1000_interrupt(i32 %41, %struct.net_device* %42)
  %44 = load i64, i64* @IRQ_HANDLED, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 1, i32* %10, align 4
  br label %47

47:                                               ; preds = %46, %40
  br label %48

48:                                               ; preds = %47, %39
  %49 = load i32, i32* %9, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %23

51:                                               ; preds = %23
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %54, %51
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %22, label %60

60:                                               ; preds = %57
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %60, %19
  %63 = load i64, i64* %3, align 8
  ret i64 %63
}

declare dso_local i32 @readw(i32) #1

declare dso_local i64 @sja1000_interrupt(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

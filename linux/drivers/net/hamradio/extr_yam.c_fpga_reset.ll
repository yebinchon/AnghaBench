; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_fpga_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_fpga_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCR_DLAB = common dso_local global i32 0, align 4
@LCR_BIT5 = common dso_local global i32 0, align 4
@MCR_OUT1 = common dso_local global i32 0, align 4
@MCR_OUT2 = common dso_local global i32 0, align 4
@MCR_DTR = common dso_local global i32 0, align 4
@MCR_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @fpga_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fpga_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @IER(i32 %3)
  %5 = call i32 @outb(i32 0, i32 %4)
  %6 = load i32, i32* @LCR_DLAB, align 4
  %7 = load i32, i32* @LCR_BIT5, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @LCR(i32 %9)
  %11 = call i32 @outb(i32 %8, i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @DLL(i32 %12)
  %14 = call i32 @outb(i32 1, i32 %13)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @DLM(i32 %15)
  %17 = call i32 @outb(i32 0, i32 %16)
  %18 = load i32, i32* @LCR_BIT5, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @LCR(i32 %19)
  %21 = call i32 @outb(i32 %18, i32 %20)
  %22 = load i32, i32* %2, align 4
  %23 = call i32 @LSR(i32 %22)
  %24 = call i32 @inb(i32 %23)
  %25 = load i32, i32* %2, align 4
  %26 = call i32 @MSR(i32 %25)
  %27 = call i32 @inb(i32 %26)
  %28 = load i32, i32* @MCR_OUT1, align 4
  %29 = load i32, i32* @MCR_OUT2, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @MCR(i32 %31)
  %33 = call i32 @outb(i32 %30, i32 %32)
  %34 = call i32 @delay(i32 100)
  %35 = load i32, i32* @MCR_DTR, align 4
  %36 = load i32, i32* @MCR_RTS, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @MCR_OUT1, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @MCR_OUT2, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %2, align 4
  %43 = call i32 @MCR(i32 %42)
  %44 = call i32 @outb(i32 %41, i32 %43)
  %45 = call i32 @delay(i32 100)
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @IER(i32) #1

declare dso_local i32 @LCR(i32) #1

declare dso_local i32 @DLL(i32) #1

declare dso_local i32 @DLM(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @LSR(i32) #1

declare dso_local i32 @MSR(i32) #1

declare dso_local i32 @MCR(i32) #1

declare dso_local i32 @delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

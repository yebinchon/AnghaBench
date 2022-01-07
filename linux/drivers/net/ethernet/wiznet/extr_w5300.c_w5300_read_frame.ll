; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_read_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5300_priv = type { i32 }

@W5300_S0_RX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w5300_priv*, i32*, i32)* @w5300_read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w5300_read_frame(%struct.w5300_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.w5300_priv*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.w5300_priv* %0, %struct.w5300_priv** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %24, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %15 = load i32, i32* @W5300_S0_RX_FIFO, align 4
  %16 = call i32 @w5300_read(%struct.w5300_priv* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = ashr i32 %17, 8
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %5, align 8
  store i32 %21, i32* %22, align 4
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, 2
  store i32 %26, i32* %8, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %29 = load i32, i32* @W5300_S0_RX_FIFO, align 4
  %30 = call i32 @w5300_read(%struct.w5300_priv* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.w5300_priv*, %struct.w5300_priv** %4, align 8
  %32 = load i32, i32* @W5300_S0_RX_FIFO, align 4
  %33 = call i32 @w5300_read(%struct.w5300_priv* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  ret void
}

declare dso_local i32 @w5300_read(%struct.w5300_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5100.c_w5100_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5100_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32)* }

@W5100_MR = common dso_local global i32 0, align 4
@MR_RST = common dso_local global i32 0, align 4
@MR_PB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.w5100_priv*)* @w5100_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w5100_reset(%struct.w5100_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.w5100_priv*, align 8
  store %struct.w5100_priv* %0, %struct.w5100_priv** %3, align 8
  %4 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %5 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (i32)*, i32 (i32)** %7, align 8
  %9 = icmp ne i32 (i32)* %8, null
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %12 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32)*, i32 (i32)** %14, align 8
  %16 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %17 = getelementptr inbounds %struct.w5100_priv, %struct.w5100_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 %15(i32 %18)
  store i32 %19, i32* %2, align 4
  br label %30

20:                                               ; preds = %1
  %21 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %22 = load i32, i32* @W5100_MR, align 4
  %23 = load i32, i32* @MR_RST, align 4
  %24 = call i32 @w5100_write(%struct.w5100_priv* %21, i32 %22, i32 %23)
  %25 = call i32 @mdelay(i32 5)
  %26 = load %struct.w5100_priv*, %struct.w5100_priv** %3, align 8
  %27 = load i32, i32* @W5100_MR, align 4
  %28 = load i32, i32* @MR_PB, align 4
  %29 = call i32 @w5100_write(%struct.w5100_priv* %26, i32 %27, i32 %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %20, %10
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @w5100_write(%struct.w5100_priv*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

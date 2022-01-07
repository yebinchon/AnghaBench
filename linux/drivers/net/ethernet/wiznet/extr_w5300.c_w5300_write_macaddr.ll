; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_write_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/wiznet/extr_w5300.c_w5300_write_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.w5300_priv = type { %struct.net_device* }
%struct.net_device = type { i32* }

@W5300_SHARL = common dso_local global i32 0, align 4
@W5300_SHARH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w5300_priv*)* @w5300_write_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w5300_write_macaddr(%struct.w5300_priv* %0) #0 {
  %2 = alloca %struct.w5300_priv*, align 8
  %3 = alloca %struct.net_device*, align 8
  store %struct.w5300_priv* %0, %struct.w5300_priv** %2, align 8
  %4 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %5 = getelementptr inbounds %struct.w5300_priv, %struct.w5300_priv* %4, i32 0, i32 0
  %6 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %8 = load i32, i32* @W5300_SHARL, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 24
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %19, 16
  %21 = or i32 %14, %20
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 8
  %28 = or i32 %21, %27
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %28, %33
  %35 = call i32 @w5300_write32(%struct.w5300_priv* %7, i32 %8, i32 %34)
  %36 = load %struct.w5300_priv*, %struct.w5300_priv** %2, align 8
  %37 = load i32, i32* @W5300_SHARH, align 4
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 5
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = call i32 @w5300_write(%struct.w5300_priv* %36, i32 %37, i32 %49)
  ret void
}

declare dso_local i32 @w5300_write32(%struct.w5300_priv*, i32, i32) #1

declare dso_local i32 @w5300_write(%struct.w5300_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rbuf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_rbuf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i64 }

@RBUF_CONTROL = common dso_local global i32 0, align 4
@RBUF_4B_ALGN = common dso_local global i32 0, align 4
@RBUF_RSB_EN = common dso_local global i32 0, align 4
@RBUF_RSB_SWAP1 = common dso_local global i32 0, align 4
@CONFIG_CPU_BIG_ENDIAN = common dso_local global i32 0, align 4
@RBUF_RSB_SWAP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*)* @rbuf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rbuf_init(%struct.bcm_sysport_priv* %0) #0 {
  %2 = alloca %struct.bcm_sysport_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %2, align 8
  %4 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %5 = load i32, i32* @RBUF_CONTROL, align 4
  %6 = call i32 @rbuf_readl(%struct.bcm_sysport_priv* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RBUF_4B_ALGN, align 4
  %8 = load i32, i32* @RBUF_RSB_EN, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %13 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @RBUF_RSB_SWAP1, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* @CONFIG_CPU_BIG_ENDIAN, align 4
  %23 = call i32 @IS_ENABLED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @RBUF_RSB_SWAP0, align 4
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @RBUF_RSB_SWAP0, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %3, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %25
  %35 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %2, align 8
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @RBUF_CONTROL, align 4
  %38 = call i32 @rbuf_writel(%struct.bcm_sysport_priv* %35, i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @rbuf_readl(%struct.bcm_sysport_priv*, i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @rbuf_writel(%struct.bcm_sysport_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000_platform.c_sp_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/sja1000/extr_sja1000_platform.c_sp_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sja1000_priv = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.sja1000_platform_data = type { i32, i32, i32 }

@IORESOURCE_MEM_TYPE_MASK = common dso_local global i64 0, align 8
@sp_read_reg32 = common dso_local global i32 0, align 4
@sp_write_reg32 = common dso_local global i32 0, align 4
@sp_read_reg16 = common dso_local global i32 0, align 4
@sp_write_reg16 = common dso_local global i32 0, align 4
@sp_read_reg8 = common dso_local global i32 0, align 4
@sp_write_reg8 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sja1000_priv*, %struct.sja1000_platform_data*, i64)* @sp_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sp_populate(%struct.sja1000_priv* %0, %struct.sja1000_platform_data* %1, i64 %2) #0 {
  %4 = alloca %struct.sja1000_priv*, align 8
  %5 = alloca %struct.sja1000_platform_data*, align 8
  %6 = alloca i64, align 8
  store %struct.sja1000_priv* %0, %struct.sja1000_priv** %4, align 8
  store %struct.sja1000_platform_data* %1, %struct.sja1000_platform_data** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.sja1000_platform_data*, %struct.sja1000_platform_data** %5, align 8
  %8 = getelementptr inbounds %struct.sja1000_platform_data, %struct.sja1000_platform_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sdiv i32 %9, 2
  %11 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %12 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %10, i32* %14, align 4
  %15 = load %struct.sja1000_platform_data*, %struct.sja1000_platform_data** %5, align 8
  %16 = getelementptr inbounds %struct.sja1000_platform_data, %struct.sja1000_platform_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %19 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sja1000_platform_data*, %struct.sja1000_platform_data** %5, align 8
  %21 = getelementptr inbounds %struct.sja1000_platform_data, %struct.sja1000_platform_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %24 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @IORESOURCE_MEM_TYPE_MASK, align 8
  %27 = and i64 %25, %26
  switch i64 %27, label %43 [
    i64 129, label %28
    i64 130, label %35
    i64 128, label %42
  ]

28:                                               ; preds = %3
  %29 = load i32, i32* @sp_read_reg32, align 4
  %30 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %31 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @sp_write_reg32, align 4
  %33 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %34 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %50

35:                                               ; preds = %3
  %36 = load i32, i32* @sp_read_reg16, align 4
  %37 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %38 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @sp_write_reg16, align 4
  %40 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %41 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %50

42:                                               ; preds = %3
  br label %43

43:                                               ; preds = %3, %42
  %44 = load i32, i32* @sp_read_reg8, align 4
  %45 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %46 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @sp_write_reg8, align 4
  %48 = load %struct.sja1000_priv*, %struct.sja1000_priv** %4, align 8
  %49 = getelementptr inbounds %struct.sja1000_priv, %struct.sja1000_priv* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %43, %35, %28
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

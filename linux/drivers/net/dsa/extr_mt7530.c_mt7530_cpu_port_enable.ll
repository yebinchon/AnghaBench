; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_cpu_port_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_cpu_port_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7530_priv = type { i64, i32 }

@PORT_SPEC_TAG = common dso_local global i32 0, align 4
@SA_DIS = common dso_local global i32 0, align 4
@MT7530_MFC = common dso_local global i32 0, align 4
@ID_MT7621 = common dso_local global i64 0, align 8
@CPU_MASK = common dso_local global i32 0, align 4
@CPU_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7530_priv*, i32)* @mt7530_cpu_port_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_cpu_port_enable(%struct.mt7530_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7530_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.mt7530_priv* %0, %struct.mt7530_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @MT7530_PVC_P(i32 %6)
  %8 = load i32, i32* @PORT_SPEC_TAG, align 4
  %9 = call i32 @mt7530_write(%struct.mt7530_priv* %5, i32 %7, i32 %8)
  %10 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @MT7530_PSC_P(i32 %11)
  %13 = load i32, i32* @SA_DIS, align 4
  %14 = call i32 @mt7530_set(%struct.mt7530_priv* %10, i32 %12, i32 %13)
  %15 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %16 = load i32, i32* @MT7530_MFC, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = call i32 @UNU_FFP(i32 %18)
  %20 = call i32 @mt7530_set(%struct.mt7530_priv* %15, i32 %16, i32 %19)
  %21 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @ID_MT7621, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %28 = load i32, i32* @MT7530_MFC, align 4
  %29 = load i32, i32* @CPU_MASK, align 4
  %30 = load i32, i32* @CPU_EN, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CPU_PORT(i32 %31)
  %33 = or i32 %30, %32
  %34 = call i32 @mt7530_rmw(%struct.mt7530_priv* %27, i32 %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26, %2
  %36 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @MT7530_PCR_P(i32 %37)
  %39 = load %struct.mt7530_priv*, %struct.mt7530_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dsa_user_ports(i32 %41)
  %43 = call i32 @PCR_MATRIX(i32 %42)
  %44 = call i32 @mt7530_write(%struct.mt7530_priv* %36, i32 %38, i32 %43)
  ret i32 0
}

declare dso_local i32 @mt7530_write(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @MT7530_PVC_P(i32) #1

declare dso_local i32 @mt7530_set(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @MT7530_PSC_P(i32) #1

declare dso_local i32 @UNU_FFP(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @CPU_PORT(i32) #1

declare dso_local i32 @MT7530_PCR_P(i32) #1

declare dso_local i32 @PCR_MATRIX(i32) #1

declare dso_local i32 @dsa_user_ports(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

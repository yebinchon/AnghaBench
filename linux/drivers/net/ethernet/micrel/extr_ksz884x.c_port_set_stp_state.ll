; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_set_stp_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_set_stp_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@KS8842_PORT_CTRL_2_OFFSET = common dso_local global i32 0, align 4
@PORT_TX_ENABLE = common dso_local global i32 0, align 4
@PORT_RX_ENABLE = common dso_local global i32 0, align 4
@PORT_LEARN_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_hw*, i32, i32)* @port_set_stp_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @port_set_stp_state(%struct.ksz_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ksz_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @KS8842_PORT_CTRL_2_OFFSET, align 4
  %11 = call i32 @port_r16(%struct.ksz_hw* %8, i32 %9, i32 %10, i32* %7)
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %75 [
    i32 132, label %13
    i32 129, label %23
    i32 130, label %34
    i32 131, label %46
    i32 133, label %56
    i32 128, label %66
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @PORT_TX_ENABLE, align 4
  %15 = load i32, i32* @PORT_RX_ENABLE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %75

23:                                               ; preds = %3
  %24 = load i32, i32* @PORT_TX_ENABLE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* @PORT_RX_ENABLE, align 4
  %29 = load i32, i32* %7, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  br label %75

34:                                               ; preds = %3
  %35 = load i32, i32* @PORT_TX_ENABLE, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @PORT_RX_ENABLE, align 4
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %7, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %7, align 4
  br label %75

46:                                               ; preds = %3
  %47 = load i32, i32* @PORT_TX_ENABLE, align 4
  %48 = load i32, i32* @PORT_RX_ENABLE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %75

56:                                               ; preds = %3
  %57 = load i32, i32* @PORT_TX_ENABLE, align 4
  %58 = load i32, i32* @PORT_RX_ENABLE, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %75

66:                                               ; preds = %3
  %67 = load i32, i32* @PORT_TX_ENABLE, align 4
  %68 = load i32, i32* @PORT_RX_ENABLE, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @PORT_LEARN_DISABLE, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  br label %75

75:                                               ; preds = %3, %66, %56, %46, %34, %23, %13
  %76 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = load i32, i32* @KS8842_PORT_CTRL_2_OFFSET, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @port_w16(%struct.ksz_hw* %76, i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %6, align 4
  %82 = load %struct.ksz_hw*, %struct.ksz_hw** %4, align 8
  %83 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  store i32 %81, i32* %90, align 4
  ret void
}

declare dso_local i32 @port_r16(%struct.ksz_hw*, i32, i32, i32*) #1

declare dso_local i32 @port_w16(%struct.ksz_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

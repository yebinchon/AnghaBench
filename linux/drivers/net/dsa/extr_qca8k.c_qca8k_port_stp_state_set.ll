; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_stp_state_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_port_stp_state_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i64 }
%struct.qca8k_priv = type { i32 }

@QCA8K_PORT_LOOKUP_STATE_DISABLED = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_STATE_BLOCKING = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_STATE_LISTENING = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_STATE_LEARNING = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_STATE_FORWARD = common dso_local global i32 0, align 4
@QCA8K_PORT_LOOKUP_STATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32, i32)* @qca8k_port_stp_state_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_port_stp_state_set(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qca8k_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.qca8k_priv*
  store %struct.qca8k_priv* %12, %struct.qca8k_priv** %7, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %23 [
    i32 131, label %14
    i32 132, label %16
    i32 128, label %18
    i32 129, label %20
    i32 130, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @QCA8K_PORT_LOOKUP_STATE_DISABLED, align 4
  store i32 %15, i32* %8, align 4
  br label %25

16:                                               ; preds = %3
  %17 = load i32, i32* @QCA8K_PORT_LOOKUP_STATE_BLOCKING, align 4
  store i32 %17, i32* %8, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @QCA8K_PORT_LOOKUP_STATE_LISTENING, align 4
  store i32 %19, i32* %8, align 4
  br label %25

20:                                               ; preds = %3
  %21 = load i32, i32* @QCA8K_PORT_LOOKUP_STATE_LEARNING, align 4
  store i32 %21, i32* %8, align 4
  br label %25

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %3, %22
  %24 = load i32, i32* @QCA8K_PORT_LOOKUP_STATE_FORWARD, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %23, %20, %18, %16, %14
  %26 = load %struct.qca8k_priv*, %struct.qca8k_priv** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @QCA8K_PORT_LOOKUP_CTRL(i32 %27)
  %29 = load i32, i32* @QCA8K_PORT_LOOKUP_STATE_MASK, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @qca8k_rmw(%struct.qca8k_priv* %26, i32 %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @qca8k_rmw(%struct.qca8k_priv*, i32, i32, i32) #1

declare dso_local i32 @QCA8K_PORT_LOOKUP_CTRL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCR_MATRIX_MASK = common dso_local global i32 0, align 4
@PCR_MATRIX_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsa_switch*, i32)* @mt7530_port_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7530_port_disable(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt7530_priv*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  store %struct.mt7530_priv* %8, %struct.mt7530_priv** %5, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dsa_is_user_port(%struct.dsa_switch* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %16 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %19 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @MT7530_PCR_P(i32 %26)
  %28 = load i32, i32* @PCR_MATRIX_MASK, align 4
  %29 = load i32, i32* @PCR_MATRIX_CLR, align 4
  %30 = call i32 @mt7530_rmw(%struct.mt7530_priv* %25, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @mt7530_port_set_status(%struct.mt7530_priv* %31, i32 %32, i32 0)
  %34 = load %struct.mt7530_priv*, %struct.mt7530_priv** %5, align 8
  %35 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  br label %37

37:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @MT7530_PCR_P(i32) #1

declare dso_local i32 @mt7530_port_set_status(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_bp_mc_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_bp_mc_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@TBUF_BP_MC_V1 = common dso_local global i32 0, align 4
@TBUF_BP_MC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*)* @bcmgenet_bp_mc_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_bp_mc_get(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcmgenet_priv*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  %4 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %5 = call i64 @GENET_IS_V1(%struct.bcmgenet_priv* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %9 = load i32, i32* @TBUF_BP_MC_V1, align 4
  %10 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %8, i32 %9)
  store i32 %10, i32* %2, align 4
  br label %24

11:                                               ; preds = %1
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %13 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %16 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  %21 = load i64, i64* @TBUF_BP_MC, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @bcmgenet_readl(i64 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %11, %7
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

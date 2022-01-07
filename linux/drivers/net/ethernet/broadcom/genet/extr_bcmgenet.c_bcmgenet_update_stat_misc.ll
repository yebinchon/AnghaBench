; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_update_stat_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_update_stat_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i32 }

@RBUF_OVFL_CNT_V2 = common dso_local global i32 0, align 4
@RBUF_OVFL_CNT_V3PLUS = common dso_local global i32 0, align 4
@RBUF_ERR_CNT_V2 = common dso_local global i32 0, align 4
@RBUF_ERR_CNT_V3PLUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcmgenet_priv*, i32)* @bcmgenet_update_stat_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcmgenet_update_stat_misc(%struct.bcmgenet_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %46 [
    i32 128, label %8
    i32 129, label %27
  ]

8:                                                ; preds = %2
  %9 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %10 = call i32 @GENET_IS_V2(%struct.bcmgenet_priv* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* @RBUF_OVFL_CNT_V2, align 4
  store i32 %13, i32* %5, align 4
  br label %16

14:                                               ; preds = %8
  %15 = load i32, i32* @RBUF_OVFL_CNT_V3PLUS, align 4
  store i32 %15, i32* %5, align 4
  br label %16

16:                                               ; preds = %14, %12
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %23, i32 0, i32 %24)
  br label %26

26:                                               ; preds = %22, %16
  br label %57

27:                                               ; preds = %2
  %28 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %29 = call i32 @GENET_IS_V2(%struct.bcmgenet_priv* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @RBUF_ERR_CNT_V2, align 4
  store i32 %32, i32* %5, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @RBUF_ERR_CNT_V3PLUS, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %42, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %57

46:                                               ; preds = %2
  %47 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv* %47, i32 %48)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  br label %57

57:                                               ; preds = %56, %45, %26
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @GENET_IS_V2(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_umac_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

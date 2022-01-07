; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_link_intr_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_link_intr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i64, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@UMAC_IRQ_LINK_EVENT = common dso_local global i32 0, align 4
@UMAC_IRQ_PHY_DET_R = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MOCA = common dso_local global i64 0, align 8
@GENET_HAS_MOCA_LINK_DET = common dso_local global i32 0, align 4
@INTRL2_CPU_MASK_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_link_intr_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_link_intr_enable(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %5 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %1
  %9 = load i32, i32* @UMAC_IRQ_LINK_EVENT, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %13 = call i64 @GENET_IS_V1(%struct.bcmgenet_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %8
  %16 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %17 = call i64 @GENET_IS_V2(%struct.bcmgenet_priv* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %21 = call i64 @GENET_IS_V3(%struct.bcmgenet_priv* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %15, %8
  %24 = load i32, i32* @UMAC_IRQ_PHY_DET_R, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %23, %19
  br label %59

28:                                               ; preds = %1
  %29 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32, i32* @UMAC_IRQ_LINK_EVENT, align 4
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %58

37:                                               ; preds = %28
  %38 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %39 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PHY_INTERFACE_MODE_MOCA, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %37
  %44 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %45 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @GENET_HAS_MOCA_LINK_DET, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %43
  %53 = load i32, i32* @UMAC_IRQ_LINK_EVENT, align 4
  %54 = load i32, i32* %3, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %52, %43
  br label %57

57:                                               ; preds = %56, %37
  br label %58

58:                                               ; preds = %57, %33
  br label %59

59:                                               ; preds = %58, %27
  %60 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @INTRL2_CPU_MASK_CLEAR, align 4
  %63 = call i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv* %60, i32 %61, i32 %62)
  ret void
}

declare dso_local i64 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i64 @GENET_IS_V2(%struct.bcmgenet_priv*) #1

declare dso_local i64 @GENET_IS_V3(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_init_umac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_init_umac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { i64, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"bcmgenet: init_umac\0A\00", align 1
@MIB_RESET_RX = common dso_local global i32 0, align 4
@MIB_RESET_TX = common dso_local global i32 0, align 4
@MIB_RESET_RUNT = common dso_local global i32 0, align 4
@UMAC_MIB_CTRL = common dso_local global i32 0, align 4
@ENET_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@UMAC_MAX_FRAME_LEN = common dso_local global i32 0, align 4
@RBUF_CTRL = common dso_local global i32 0, align 4
@RBUF_ALIGN_2B = common dso_local global i32 0, align 4
@RBUF_TBUF_SIZE_CTRL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_MOCA = common dso_local global i64 0, align 8
@GENET_HAS_MDIO_INTR = common dso_local global i32 0, align 4
@UMAC_IRQ_MDIO_DONE = common dso_local global i32 0, align 4
@UMAC_IRQ_MDIO_ERROR = common dso_local global i32 0, align 4
@INTRL2_CPU_MASK_CLEAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"done init umac\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @init_umac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_umac(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  %6 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %7 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %11 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @dev_dbg(%struct.device* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %16 = call i32 @reset_umac(%struct.bcmgenet_priv* %15)
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %18 = load i32, i32* @MIB_RESET_RX, align 4
  %19 = load i32, i32* @MIB_RESET_TX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MIB_RESET_RUNT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @UMAC_MIB_CTRL, align 4
  %24 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %17, i32 %22, i32 %23)
  %25 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %26 = load i32, i32* @UMAC_MIB_CTRL, align 4
  %27 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %25, i32 0, i32 %26)
  %28 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %29 = load i32, i32* @ENET_MAX_MTU_SIZE, align 4
  %30 = load i32, i32* @UMAC_MAX_FRAME_LEN, align 4
  %31 = call i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv* %28, i32 %29, i32 %30)
  %32 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %33 = load i32, i32* @RBUF_CTRL, align 4
  %34 = call i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @RBUF_ALIGN_2B, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @RBUF_CTRL, align 4
  %41 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %38, i32 %39, i32 %40)
  %42 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %43 = call i32 @GENET_IS_V1(%struct.bcmgenet_priv* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %1
  %46 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %47 = call i32 @GENET_IS_V2(%struct.bcmgenet_priv* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %51 = load i32, i32* @RBUF_TBUF_SIZE_CTRL, align 4
  %52 = call i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv* %50, i32 1, i32 %51)
  br label %53

53:                                               ; preds = %49, %45, %1
  %54 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %55 = call i32 @bcmgenet_intr_disable(%struct.bcmgenet_priv* %54)
  %56 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %57 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PHY_INTERFACE_MODE_MOCA, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %53
  %62 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %63 = call i32 @bcmgenet_bp_mc_get(%struct.bcmgenet_priv* %62)
  store i32 %63, i32* %4, align 4
  %64 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %65 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BIT(i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %73 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @netif_is_multiqueue(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %61
  %78 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %79 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %78, i32 0, i32 1
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  br label %94

85:                                               ; preds = %61
  %86 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %87 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %85, %77
  %95 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @bcmgenet_bp_mc_set(%struct.bcmgenet_priv* %95, i32 %96)
  br label %98

98:                                               ; preds = %94, %53
  %99 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %100 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %99, i32 0, i32 1
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @GENET_HAS_MDIO_INTR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %98
  %108 = load i32, i32* @UMAC_IRQ_MDIO_DONE, align 4
  %109 = load i32, i32* @UMAC_IRQ_MDIO_ERROR, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* %5, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %107, %98
  %114 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @INTRL2_CPU_MASK_CLEAR, align 4
  %117 = call i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv* %114, i32 %115, i32 %116)
  %118 = load %struct.device*, %struct.device** %3, align 8
  %119 = call i32 @dev_dbg(%struct.device* %118, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @reset_umac(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_umac_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @bcmgenet_rbuf_readl(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_rbuf_writel(%struct.bcmgenet_priv*, i32, i32) #1

declare dso_local i32 @GENET_IS_V1(%struct.bcmgenet_priv*) #1

declare dso_local i32 @GENET_IS_V2(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_intr_disable(%struct.bcmgenet_priv*) #1

declare dso_local i32 @bcmgenet_bp_mc_get(%struct.bcmgenet_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @netif_is_multiqueue(i32) #1

declare dso_local i32 @bcmgenet_bp_mc_set(%struct.bcmgenet_priv*, i32) #1

declare dso_local i32 @bcmgenet_intrl2_0_writel(%struct.bcmgenet_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

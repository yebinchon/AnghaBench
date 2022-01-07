; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, i32, %struct.alx_hw }
%struct.alx_hw = type { i32 }

@ALX_ISR_PHY = common dso_local global i32 0, align 4
@ALX_IMR = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"NIC Up: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Link Down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_check_link(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %7 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 3
  store %struct.alx_hw* %8, %struct.alx_hw** %3, align 8
  %9 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %10 = call i32 @alx_clear_phy_intr(%struct.alx_hw* %9)
  %11 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %12 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %15 = call i32 @alx_read_phy_link(%struct.alx_hw* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %105

19:                                               ; preds = %1
  %20 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %21 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* @ALX_ISR_PHY, align 4
  %25 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %26 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %30 = load i32, i32* @ALX_IMR, align 4
  %31 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %32 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @alx_write_mem32(%struct.alx_hw* %29, i32 %30, i32 %33)
  %35 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %36 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %35, i32 0, i32 1
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %41 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %19
  br label %108

45:                                               ; preds = %19
  %46 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %47 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SPEED_UNKNOWN, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %45
  %52 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %53 = load i32, i32* @link, align 4
  %54 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %55 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %58 = call i32 @alx_speed_desc(%struct.alx_hw* %57)
  %59 = call i32 (%struct.alx_priv*, i32, i32, i8*, ...) @netif_info(%struct.alx_priv* %52, i32 %53, i32 %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %61 = call i32 @alx_post_phy_link(%struct.alx_hw* %60)
  %62 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %63 = call i32 @alx_enable_aspm(%struct.alx_hw* %62, i32 1, i32 1)
  %64 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %65 = call i32 @alx_start_mac(%struct.alx_hw* %64)
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @SPEED_UNKNOWN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %51
  %70 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %71 = call i32 @alx_netif_start(%struct.alx_priv* %70)
  br label %72

72:                                               ; preds = %69, %51
  br label %104

73:                                               ; preds = %45
  %74 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %75 = call i32 @alx_netif_stop(%struct.alx_priv* %74)
  %76 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %77 = load i32, i32* @link, align 4
  %78 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %79 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (%struct.alx_priv*, i32, i32, i8*, ...) @netif_info(%struct.alx_priv* %76, i32 %77, i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %82 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %83 = call i32 @alx_reset_mac(%struct.alx_hw* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  br label %105

87:                                               ; preds = %73
  %88 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %89 = call i32 @alx_irq_disable(%struct.alx_priv* %88)
  %90 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %91 = call i32 @alx_reinit_rings(%struct.alx_priv* %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %105

95:                                               ; preds = %87
  %96 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %97 = call i32 @alx_configure(%struct.alx_priv* %96)
  %98 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %99 = call i32 @alx_enable_aspm(%struct.alx_hw* %98, i32 0, i32 1)
  %100 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %101 = call i32 @alx_post_phy_link(%struct.alx_hw* %100)
  %102 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %103 = call i32 @alx_irq_enable(%struct.alx_priv* %102)
  br label %104

104:                                              ; preds = %95, %72
  br label %108

105:                                              ; preds = %94, %86, %18
  %106 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %107 = call i32 @alx_schedule_reset(%struct.alx_priv* %106)
  br label %108

108:                                              ; preds = %105, %104, %44
  ret void
}

declare dso_local i32 @alx_clear_phy_intr(%struct.alx_hw*) #1

declare dso_local i32 @alx_read_phy_link(%struct.alx_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @netif_info(%struct.alx_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @alx_speed_desc(%struct.alx_hw*) #1

declare dso_local i32 @alx_post_phy_link(%struct.alx_hw*) #1

declare dso_local i32 @alx_enable_aspm(%struct.alx_hw*, i32, i32) #1

declare dso_local i32 @alx_start_mac(%struct.alx_hw*) #1

declare dso_local i32 @alx_netif_start(%struct.alx_priv*) #1

declare dso_local i32 @alx_netif_stop(%struct.alx_priv*) #1

declare dso_local i32 @alx_reset_mac(%struct.alx_hw*) #1

declare dso_local i32 @alx_irq_disable(%struct.alx_priv*) #1

declare dso_local i32 @alx_reinit_rings(%struct.alx_priv*) #1

declare dso_local i32 @alx_configure(%struct.alx_priv*) #1

declare dso_local i32 @alx_irq_enable(%struct.alx_priv*) #1

declare dso_local i32 @alx_schedule_reset(%struct.alx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i64, %struct.adapter*, i64 }
%struct.adapter = type { i32 }

@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@F_MAC_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RESET_CTRL = common dso_local global i64 0, align 8
@F_PCS_RESET_ = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@F_XG2G_RESET_ = common dso_local global i32 0, align 4
@F_RGMII_RESET_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_disable(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cmac*, %struct.cmac** %3, align 8
  %8 = getelementptr inbounds %struct.cmac, %struct.cmac* %7, i32 0, i32 1
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.adapter*, %struct.adapter** %5, align 8
  %16 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %17 = load %struct.cmac*, %struct.cmac** %3, align 8
  %18 = getelementptr inbounds %struct.cmac, %struct.cmac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i32 @t3_write_reg(%struct.adapter* %15, i64 %20, i32 0)
  %22 = load %struct.cmac*, %struct.cmac** %3, align 8
  %23 = getelementptr inbounds %struct.cmac, %struct.cmac* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %84

29:                                               ; preds = %24
  %30 = load i32, i32* @F_MAC_RESET_, align 4
  store i32 %30, i32* %6, align 4
  %31 = load %struct.cmac*, %struct.cmac** %3, align 8
  %32 = getelementptr inbounds %struct.cmac, %struct.cmac* %31, i32 0, i32 1
  %33 = load %struct.adapter*, %struct.adapter** %32, align 8
  %34 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %35 = load %struct.cmac*, %struct.cmac** %3, align 8
  %36 = getelementptr inbounds %struct.cmac, %struct.cmac* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %34, %37
  %39 = load i32, i32* @F_PCS_RESET_, align 4
  %40 = call i32 @t3_set_reg_field(%struct.adapter* %33, i64 %38, i32 %39, i32 0)
  %41 = call i32 @msleep(i32 100)
  %42 = load %struct.adapter*, %struct.adapter** %5, align 8
  %43 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %44 = load %struct.cmac*, %struct.cmac** %3, align 8
  %45 = getelementptr inbounds %struct.cmac, %struct.cmac* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %43, %46
  %48 = call i32 @t3_write_reg(%struct.adapter* %42, i64 %47, i32 0)
  %49 = load %struct.adapter*, %struct.adapter** %5, align 8
  %50 = call i64 @is_10G(%struct.adapter* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %29
  %53 = load i32, i32* @F_PCS_RESET_, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %73

56:                                               ; preds = %29
  %57 = load %struct.adapter*, %struct.adapter** %5, align 8
  %58 = call i64 @uses_xaui(%struct.adapter* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @F_PCS_RESET_, align 4
  %62 = load i32, i32* @F_XG2G_RESET_, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %72

66:                                               ; preds = %56
  %67 = load i32, i32* @F_RGMII_RESET_, align 4
  %68 = load i32, i32* @F_XG2G_RESET_, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %6, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %73

73:                                               ; preds = %72, %52
  %74 = load %struct.cmac*, %struct.cmac** %3, align 8
  %75 = getelementptr inbounds %struct.cmac, %struct.cmac* %74, i32 0, i32 1
  %76 = load %struct.adapter*, %struct.adapter** %75, align 8
  %77 = load i64, i64* @A_XGM_RESET_CTRL, align 8
  %78 = load %struct.cmac*, %struct.cmac** %3, align 8
  %79 = getelementptr inbounds %struct.cmac, %struct.cmac* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %77, %80
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @t3_write_reg(%struct.adapter* %76, i64 %81, i32 %82)
  br label %84

84:                                               ; preds = %73, %24
  ret i32 0
}

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @is_10G(%struct.adapter*) #1

declare dso_local i64 @uses_xaui(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_pfc_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_dcb_82598.c_ixgbe_dcb_config_pfc_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32 }

@IXGBE_RMCS = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_802_3X = common dso_local global i32 0, align 4
@IXGBE_RMCS_TFCE_PRIORITY = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RPFCE = common dso_local global i32 0, align 4
@IXGBE_FCTRL_RFCE = common dso_local global i32 0, align 4
@MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@IXGBE_FCRTL_XONE = common dso_local global i32 0, align 4
@IXGBE_FCRTH_FCEN = common dso_local global i32 0, align 4
@IXGBE_FCRTV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_dcb_config_pfc_82598(%struct.ixgbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %9 = load i32, i32* @IXGBE_RMCS, align 4
  %10 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %8, i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @IXGBE_RMCS_TFCE_802_3X, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @IXGBE_RMCS_TFCE_PRIORITY, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %19 = load i32, i32* @IXGBE_RMCS, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = load i32, i32* @IXGBE_FCTRL, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* @IXGBE_FCTRL_RPFCE, align 4
  %26 = load i32, i32* @IXGBE_FCTRL_RFCE, align 4
  %27 = or i32 %25, %26
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %2
  %34 = load i32, i32* @IXGBE_FCTRL_RPFCE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %33, %2
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %39 = load i32, i32* @IXGBE_FCTRL, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %38, i32 %39, i32 %40)
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %94, %37
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %97

46:                                               ; preds = %42
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @BIT(i32 %48)
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %46
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @IXGBE_FCRTL(i32 %54)
  %56 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %53, i32 %55, i32 0)
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @IXGBE_FCRTH(i32 %58)
  %60 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %57, i32 %59, i32 0)
  br label %94

61:                                               ; preds = %46
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = shl i32 %69, 10
  %71 = load i32, i32* @IXGBE_FCRTL_XONE, align 4
  %72 = or i32 %70, %71
  store i32 %72, i32* %5, align 4
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = shl i32 %80, 10
  %82 = load i32, i32* @IXGBE_FCRTH_FCEN, align 4
  %83 = or i32 %81, %82
  store i32 %83, i32* %6, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @IXGBE_FCRTL(i32 %85)
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %84, i32 %86, i32 %87)
  %89 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @IXGBE_FCRTH(i32 %90)
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %61, %52
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %42

97:                                               ; preds = %42
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %99 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %101, 65537
  store i32 %102, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %114, %97
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @MAX_TRAFFIC_CLASS, align 4
  %106 = sdiv i32 %105, 2
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @IXGBE_FCTTV(i32 %110)
  %112 = load i32, i32* %6, align 4
  %113 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %111, i32 %112)
  br label %114

114:                                              ; preds = %108
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %103

117:                                              ; preds = %103
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %119 = load i32, i32* @IXGBE_FCRTV, align 4
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %121 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %123, 2
  %125 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %118, i32 %119, i32 %124)
  ret i32 0
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IXGBE_FCRTL(i32) #1

declare dso_local i32 @IXGBE_FCRTH(i32) #1

declare dso_local i32 @IXGBE_FCTTV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

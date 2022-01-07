; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_ctrl_miim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_ctrl_miim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pch_gbe_adapter = type { i32 }

@PCH_GBE_MIIM_OPER_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pch-gbe.miim won't go Ready\0A\00", align 1
@PCH_GBE_MIIM_REG_ADDR_SHIFT = common dso_local global i32 0, align 4
@PCH_GBE_MIIM_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PHY %s: reg=%d, data=0x%04X\0A\00", align 1
@PCH_GBE_MIIM_OPER_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pch_gbe_mac_ctrl_miim(%struct.pch_gbe_hw* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pch_gbe_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.pch_gbe_adapter*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %17 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %16)
  store %struct.pch_gbe_adapter* %17, %struct.pch_gbe_adapter** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %19 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %15, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  store i32 100, i32* %14, align 4
  br label %22

22:                                               ; preds = %37, %5
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %22
  %26 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %27 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @ioread32(i32* %29)
  %31 = load i32, i32* @PCH_GBE_MIIM_OPER_READY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %40

35:                                               ; preds = %25
  %36 = call i32 @udelay(i32 20)
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %14, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %14, align 4
  br label %22

40:                                               ; preds = %34, %22
  %41 = load i32, i32* %14, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %40
  %44 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %12, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @netdev_err(i32 %46, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %48 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %49 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %48, i32 0, i32 0
  %50 = load i64, i64* %15, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  store i32 0, i32* %6, align 4
  br label %113

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* @PCH_GBE_MIIM_REG_ADDR_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @PCH_GBE_MIIM_PHY_ADDR_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = or i32 %55, %58
  %60 = load i32, i32* %9, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = call i32 @iowrite32(i32 %63, i32* %67)
  store i32 0, i32* %14, align 4
  br label %69

69:                                               ; preds = %85, %52
  %70 = load i32, i32* %14, align 4
  %71 = icmp ult i32 %70, 100
  br i1 %71, label %72, label %88

72:                                               ; preds = %69
  %73 = call i32 @udelay(i32 20)
  %74 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @ioread32(i32* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @PCH_GBE_MIIM_OPER_READY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72
  br label %88

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %14, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %14, align 4
  br label %69

88:                                               ; preds = %83, %69
  %89 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %7, align 8
  %90 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %89, i32 0, i32 0
  %91 = load i64, i64* %15, align 8
  %92 = call i32 @spin_unlock_irqrestore(i32* %90, i64 %91)
  %93 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %12, align 8
  %94 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @PCH_GBE_MIIM_OPER_READ, align 4
  %98 = icmp eq i32 %96, %97
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0)
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @PCH_GBE_MIIM_OPER_READ, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %88
  %106 = load i32, i32* %13, align 4
  br label %109

107:                                              ; preds = %88
  %108 = load i32, i32* %11, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = call i32 @netdev_dbg(i32 %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %100, i32 %101, i32 %110)
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %109, %43
  %114 = load i32, i32* %6, align 4
  ret i32 %114
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

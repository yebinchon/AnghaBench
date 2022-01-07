; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_hw_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.net_device** }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"hw error interrupt status 0x%x\0A\00", align 1
@Y2_IS_PAR_RD1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ram data read parity error\0A\00", align 1
@B3_RI_CTRL = common dso_local global i32 0, align 4
@RI_CLR_RD_PERR = common dso_local global i32 0, align 4
@Y2_IS_PAR_WR1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"ram data write parity error\0A\00", align 1
@RI_CLR_WR_PERR = common dso_local global i32 0, align 4
@Y2_IS_PAR_MAC1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"MAC parity error\0A\00", align 1
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@GMF_CLI_TX_PE = common dso_local global i32 0, align 4
@Y2_IS_PAR_RX1 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"RX parity error\0A\00", align 1
@rxqaddr = common dso_local global i32* null, align 8
@Q_CSR = common dso_local global i32 0, align 4
@BMU_CLR_IRQ_PAR = common dso_local global i32 0, align 4
@Y2_IS_TCP_TXA1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"TCP segmentation error\0A\00", align 1
@txqaddr = common dso_local global i32* null, align 8
@BMU_CLR_IRQ_TCP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32, i32)* @sky2_hw_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_hw_error(%struct.sky2_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sky2_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %9 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %8, i32 0, i32 0
  %10 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %10, i64 %12
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %7, align 8
  %15 = call i64 (...) @net_ratelimit()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @netdev_info(%struct.net_device* %18, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %17, %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @Y2_IS_PAR_RD1, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %21
  %27 = call i64 (...) @net_ratelimit()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load %struct.net_device*, %struct.net_device** %7, align 8
  %31 = call i32 @netdev_err(%struct.net_device* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %26
  %33 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @B3_RI_CTRL, align 4
  %36 = call i32 @RAM_BUFFER(i32 %34, i32 %35)
  %37 = load i32, i32* @RI_CLR_RD_PERR, align 4
  %38 = call i32 @sky2_write16(%struct.sky2_hw* %33, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %32, %21
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @Y2_IS_PAR_WR1, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %39
  %45 = call i64 (...) @net_ratelimit()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.net_device*, %struct.net_device** %7, align 8
  %49 = call i32 @netdev_err(%struct.net_device* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @B3_RI_CTRL, align 4
  %54 = call i32 @RAM_BUFFER(i32 %52, i32 %53)
  %55 = load i32, i32* @RI_CLR_WR_PERR, align 4
  %56 = call i32 @sky2_write16(%struct.sky2_hw* %51, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %50, %39
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @Y2_IS_PAR_MAC1, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %57
  %63 = call i64 (...) @net_ratelimit()
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load %struct.net_device*, %struct.net_device** %7, align 8
  %67 = call i32 @netdev_err(%struct.net_device* %66, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %72 = call i32 @SK_REG(i32 %70, i32 %71)
  %73 = load i32, i32* @GMF_CLI_TX_PE, align 4
  %74 = call i32 @sky2_write8(%struct.sky2_hw* %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %68, %57
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @Y2_IS_PAR_RX1, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %75
  %81 = call i64 (...) @net_ratelimit()
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.net_device*, %struct.net_device** %7, align 8
  %85 = call i32 @netdev_err(%struct.net_device* %84, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %88 = load i32*, i32** @rxqaddr, align 8
  %89 = load i32, i32* %5, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @Q_CSR, align 4
  %94 = call i32 @Q_ADDR(i32 %92, i32 %93)
  %95 = load i32, i32* @BMU_CLR_IRQ_PAR, align 4
  %96 = call i32 @sky2_write32(%struct.sky2_hw* %87, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %86, %75
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @Y2_IS_TCP_TXA1, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = call i64 (...) @net_ratelimit()
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.net_device*, %struct.net_device** %7, align 8
  %107 = call i32 @netdev_err(%struct.net_device* %106, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.sky2_hw*, %struct.sky2_hw** %4, align 8
  %110 = load i32*, i32** @txqaddr, align 8
  %111 = load i32, i32* %5, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @Q_CSR, align 4
  %116 = call i32 @Q_ADDR(i32 %114, i32 %115)
  %117 = load i32, i32* @BMU_CLR_IRQ_TCP, align 4
  %118 = call i32 @sky2_write32(%struct.sky2_hw* %109, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %108, %97
  ret void
}

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @sky2_write16(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @RAM_BUFFER(i32, i32) #1

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

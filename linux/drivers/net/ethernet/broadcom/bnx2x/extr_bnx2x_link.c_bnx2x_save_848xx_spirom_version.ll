; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_save_848xx_spirom_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_save_848xx_spirom_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_reg_set = type { i32, i32, i32, i32, i32, i32 }
%struct.bnx2x_phy = type { i64, i32 }
%struct.bnx2x = type { i32 }

@bnx2x_save_848xx_spirom_version.reg_set = internal global [5 x %struct.bnx2x_reg_set] [%struct.bnx2x_reg_set { i32 128, i32 43033, i32 20, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 128, i32 43034, i32 49664, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 128, i32 43035, i32 0, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 128, i32 43036, i32 768, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 128, i32 43031, i32 9, i32 0, i32 0, i32 0 }], align 16
@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858 = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unable to read 848xx phy fw version(1)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Unable to read 848xx phy fw version(2)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.bnx2x*, i32)* @bnx2x_save_848xx_spirom_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_save_848xx_spirom_version(%struct.bnx2x_phy* %0, %struct.bnx2x* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.bnx2x* %1, %struct.bnx2x** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %13 = call i64 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %17 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %18 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %19 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %16, %struct.bnx2x_phy* %17, i32 %18, i32 16399, i32* %11)
  %20 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %21 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM84858, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, 4095
  store i32 %27, i32* %11, align 4
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bnx2x_save_spirom_version(%struct.bnx2x* %29, i32 %30, i32 %31, i32 %34)
  br label %147

36:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %60, %36
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @ARRAY_SIZE(%struct.bnx2x_reg_set* getelementptr inbounds ([5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_save_848xx_spirom_version.reg_set, i64 0, i64 0))
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %63

41:                                               ; preds = %37
  %42 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %43 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_save_848xx_spirom_version.reg_set, i64 0, i64 %45
  %47 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_save_848xx_spirom_version.reg_set, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x %struct.bnx2x_reg_set], [5 x %struct.bnx2x_reg_set]* @bnx2x_save_848xx_spirom_version.reg_set, i64 0, i64 %55
  %57 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %42, %struct.bnx2x_phy* %43, i32 %48, i32 %53, i32 %58)
  br label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %37

63:                                               ; preds = %37
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %77, %63
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 100
  br i1 %66, label %67, label %80

67:                                               ; preds = %64
  %68 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %69 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %70 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %68, %struct.bnx2x_phy* %69, i32 128, i32 43032, i32* %7)
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, 1
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %80

75:                                               ; preds = %67
  %76 = call i32 @udelay(i32 5)
  br label %77

77:                                               ; preds = %75
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %64

80:                                               ; preds = %74, %64
  %81 = load i32, i32* %9, align 4
  %82 = icmp eq i32 %81, 100
  br i1 %82, label %83, label %92

83:                                               ; preds = %80
  %84 = load i32, i32* @NETIF_MSG_LINK, align 4
  %85 = call i32 @DP(i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %86 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %89 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @bnx2x_save_spirom_version(%struct.bnx2x* %86, i32 %87, i32 0, i32 %90)
  br label %147

92:                                               ; preds = %80
  %93 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %94 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %95 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %93, %struct.bnx2x_phy* %94, i32 128, i32 43033, i32 0)
  %96 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %97 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %98 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %96, %struct.bnx2x_phy* %97, i32 128, i32 43034, i32 49664)
  %99 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %100 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %101 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %99, %struct.bnx2x_phy* %100, i32 128, i32 43031, i32 10)
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %115, %92
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 100
  br i1 %104, label %105, label %118

105:                                              ; preds = %102
  %106 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %107 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %108 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %106, %struct.bnx2x_phy* %107, i32 128, i32 43032, i32* %7)
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %105
  br label %118

113:                                              ; preds = %105
  %114 = call i32 @udelay(i32 5)
  br label %115

115:                                              ; preds = %113
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %9, align 4
  br label %102

118:                                              ; preds = %112, %102
  %119 = load i32, i32* %9, align 4
  %120 = icmp eq i32 %119, 100
  br i1 %120, label %121, label %130

121:                                              ; preds = %118
  %122 = load i32, i32* @NETIF_MSG_LINK, align 4
  %123 = call i32 @DP(i32 %122, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %124 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %127 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @bnx2x_save_spirom_version(%struct.bnx2x* %124, i32 %125, i32 0, i32 %128)
  br label %147

130:                                              ; preds = %118
  %131 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %132 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %133 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %131, %struct.bnx2x_phy* %132, i32 128, i32 43035, i32* %11)
  %134 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %135 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %136 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %134, %struct.bnx2x_phy* %135, i32 128, i32 43036, i32* %8)
  %137 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* %8, align 4
  %140 = shl i32 %139, 16
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %144 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @bnx2x_save_spirom_version(%struct.bnx2x* %137, i32 %138, i32 %142, i32 %145)
  br label %147

147:                                              ; preds = %83, %121, %130, %28
  ret void
}

declare dso_local i64 @bnx2x_is_8483x_8485x(%struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_save_spirom_version(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bnx2x_reg_set*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

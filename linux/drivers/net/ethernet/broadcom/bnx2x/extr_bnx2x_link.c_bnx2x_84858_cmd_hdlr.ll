; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_84858_cmd_hdlr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_84858_cmd_hdlr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@PHY848xx_CMDHDLR_WAIT = common dso_local global i32 0, align 4
@MDIO_CTL_DEVAD = common dso_local global i32 0, align 4
@MDIO_848xx_CMD_HDLR_STATUS = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_IN_PROGRESS = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_SYSTEM_BUSY = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"FW cmd: FW not ready.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MDIO_848xx_CMD_HDLR_DATA1 = common dso_local global i64 0, align 8
@MDIO_848xx_CMD_HDLR_COMMAND = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_COMPLETE_PASS = common dso_local global i64 0, align 8
@PHY84858_STATUS_CMD_COMPLETE_ERROR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"FW cmd failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, i64, i64*, i32)* @bnx2x_84858_cmd_hdlr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_84858_cmd_hdlr(%struct.bnx2x_phy* %0, %struct.link_params* %1, i64 %2, i64* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_phy*, align 8
  %8 = alloca %struct.link_params*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %7, align 8
  store %struct.link_params* %1, %struct.link_params** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load %struct.link_params*, %struct.link_params** %8, align 8
  %16 = getelementptr inbounds %struct.link_params, %struct.link_params* %15, i32 0, i32 0
  %17 = load %struct.bnx2x*, %struct.bnx2x** %16, align 8
  store %struct.bnx2x* %17, %struct.bnx2x** %14, align 8
  store i32 0, i32* %12, align 4
  br label %18

18:                                               ; preds = %38, %5
  %19 = load i32, i32* %12, align 4
  %20 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %25 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %26 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %27 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 %25, i64 %26, i64* %13)
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @PHY84858_STATUS_CMD_IN_PROGRESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %22
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @PHY84858_STATUS_CMD_SYSTEM_BUSY, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %41

36:                                               ; preds = %31, %22
  %37 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  br label %18

41:                                               ; preds = %35, %18
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %44 = icmp sge i32 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @NETIF_MSG_LINK, align 4
  %47 = call i32 @DP(i32 %46, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %6, align 4
  br label %137

50:                                               ; preds = %41
  store i32 0, i32* %12, align 4
  br label %51

51:                                               ; preds = %69, %50
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %57 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %58 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %59 = load i64, i64* @MDIO_848xx_CMD_HDLR_DATA1, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %59, %61
  %63 = load i64*, i64** %10, align 8
  %64 = load i32, i32* %12, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %56, %struct.bnx2x_phy* %57, i32 %58, i64 %62, i64 %67)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %51

72:                                               ; preds = %51
  %73 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %74 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %75 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %76 = load i64, i64* @MDIO_848xx_CMD_HDLR_COMMAND, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %73, %struct.bnx2x_phy* %74, i32 %75, i64 %76, i64 %77)
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %99, %72
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %102

83:                                               ; preds = %79
  %84 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %85 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %86 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %87 = load i64, i64* @MDIO_848xx_CMD_HDLR_STATUS, align 8
  %88 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %84, %struct.bnx2x_phy* %85, i32 %86, i64 %87, i64* %13)
  %89 = load i64, i64* %13, align 8
  %90 = load i64, i64* @PHY84858_STATUS_CMD_COMPLETE_PASS, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %83
  %93 = load i64, i64* %13, align 8
  %94 = load i64, i64* @PHY84858_STATUS_CMD_COMPLETE_ERROR, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92, %83
  br label %102

97:                                               ; preds = %92
  %98 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %99

99:                                               ; preds = %97
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %12, align 4
  br label %79

102:                                              ; preds = %96, %79
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @PHY848xx_CMDHDLR_WAIT, align 4
  %105 = icmp sge i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @PHY84858_STATUS_CMD_COMPLETE_ERROR, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %106, %102
  %111 = load i32, i32* @NETIF_MSG_LINK, align 4
  %112 = call i32 @DP(i32 %111, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @EINVAL, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %137

115:                                              ; preds = %106
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %133, %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %136

120:                                              ; preds = %116
  %121 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  %122 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %123 = load i32, i32* @MDIO_CTL_DEVAD, align 4
  %124 = load i64, i64* @MDIO_848xx_CMD_HDLR_DATA1, align 8
  %125 = load i32, i32* %12, align 4
  %126 = sext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load i64*, i64** %10, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %121, %struct.bnx2x_phy* %122, i32 %123, i64 %127, i64* %131)
  br label %133

133:                                              ; preds = %120
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  br label %116

136:                                              ; preds = %116
  store i32 0, i32* %6, align 4
  br label %137

137:                                              ; preds = %136, %110, %45
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i64*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

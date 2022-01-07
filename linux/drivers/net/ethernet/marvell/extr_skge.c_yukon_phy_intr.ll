; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_phy_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_yukon_phy_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i64, i64, i64, %struct.TYPE_2__*, %struct.skge_hw* }
%struct.TYPE_2__ = type { i32 }
%struct.skge_hw = type { i32 }

@PHY_MARV_INT_STAT = common dso_local global i32 0, align 4
@PHY_MARV_PHY_STAT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"phy interrupt status 0x%x 0x%x\0A\00", align 1
@PHY_M_IS_AN_COMPL = common dso_local global i32 0, align 4
@PHY_MARV_AUNE_LP = common dso_local global i32 0, align 4
@PHY_M_AN_RF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"remote fault\00", align 1
@PHY_MARV_1000T_STAT = common dso_local global i32 0, align 4
@PHY_B_1000S_MSF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"master/slave fault\00", align 1
@PHY_M_PS_SPDUP_RES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"speed/duplex\00", align 1
@PHY_M_PS_FULL_DUP = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@FLOW_STAT_SYMMETRIC = common dso_local global i64 0, align 8
@FLOW_STAT_REM_SEND = common dso_local global i64 0, align 8
@FLOW_STAT_LOC_SEND = common dso_local global i64 0, align 8
@FLOW_STAT_NONE = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@GMAC_CTRL = common dso_local global i32 0, align 4
@GMC_PAUSE_OFF = common dso_local global i32 0, align 4
@GMC_PAUSE_ON = common dso_local global i32 0, align 4
@PHY_M_IS_LSP_CHANGE = common dso_local global i32 0, align 4
@PHY_M_IS_DUP_CHANGE = common dso_local global i32 0, align 4
@PHY_M_IS_LST_CHANGE = common dso_local global i32 0, align 4
@PHY_M_PS_LINK_UP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"%s: autonegotiation failed (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_port*)* @yukon_phy_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_phy_intr(%struct.skge_port* %0) #0 {
  %2 = alloca %struct.skge_port*, align 8
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skge_port* %0, %struct.skge_port** %2, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 5
  %10 = load %struct.skge_hw*, %struct.skge_hw** %9, align 8
  store %struct.skge_hw* %10, %struct.skge_hw** %3, align 8
  %11 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %12 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i8* null, i8** %5, align 8
  %14 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @PHY_MARV_INT_STAT, align 4
  %17 = call i32 @gm_phy_read(%struct.skge_hw* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PHY_MARV_PHY_STAT, align 4
  %21 = call i32 @gm_phy_read(%struct.skge_hw* %18, i32 %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %23 = load i32, i32* @intr, align 4
  %24 = load i32, i32* @KERN_DEBUG, align 4
  %25 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %26 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %25, i32 0, i32 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @netif_printk(%struct.skge_port* %22, i32 %23, i32 %24, %struct.TYPE_2__* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PHY_M_IS_AN_COMPL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %131

35:                                               ; preds = %1
  %36 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PHY_MARV_AUNE_LP, align 4
  %39 = call i32 @gm_phy_read(%struct.skge_hw* %36, i32 %37, i32 %38)
  %40 = load i32, i32* @PHY_M_AN_RF, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %35
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %179

44:                                               ; preds = %35
  %45 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @PHY_MARV_1000T_STAT, align 4
  %48 = call i32 @gm_phy_read(%struct.skge_hw* %45, i32 %46, i32 %47)
  %49 = load i32, i32* @PHY_B_1000S_MSF, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %5, align 8
  br label %179

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PHY_M_PS_SPDUP_RES, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %5, align 8
  br label %179

59:                                               ; preds = %53
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PHY_M_PS_FULL_DUP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @DUPLEX_FULL, align 8
  br label %68

66:                                               ; preds = %59
  %67 = load i64, i64* @DUPLEX_HALF, align 8
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i64 [ %65, %64 ], [ %67, %66 ]
  %70 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %71 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  %72 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i8* @yukon_speed(%struct.skge_hw* %72, i32 %73)
  %75 = ptrtoint i8* %74 to i64
  %76 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %77 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 130
  switch i32 %79, label %92 [
    i32 130, label %80
    i32 129, label %84
    i32 128, label %88
  ]

80:                                               ; preds = %68
  %81 = load i64, i64* @FLOW_STAT_SYMMETRIC, align 8
  %82 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %83 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  br label %96

84:                                               ; preds = %68
  %85 = load i64, i64* @FLOW_STAT_REM_SEND, align 8
  %86 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %87 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  br label %96

88:                                               ; preds = %68
  %89 = load i64, i64* @FLOW_STAT_LOC_SEND, align 8
  %90 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %91 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %90, i32 0, i32 3
  store i64 %89, i64* %91, align 8
  br label %96

92:                                               ; preds = %68
  %93 = load i64, i64* @FLOW_STAT_NONE, align 8
  %94 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %95 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %94, i32 0, i32 3
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %92, %88, %84, %80
  %97 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %98 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @FLOW_STAT_NONE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %114, label %102

102:                                              ; preds = %96
  %103 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %104 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SPEED_1000, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %121

108:                                              ; preds = %102
  %109 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %110 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @DUPLEX_HALF, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108, %96
  %115 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %116 = load i32, i32* %4, align 4
  %117 = load i32, i32* @GMAC_CTRL, align 4
  %118 = call i32 @SK_REG(i32 %116, i32 %117)
  %119 = load i32, i32* @GMC_PAUSE_OFF, align 4
  %120 = call i32 @skge_write8(%struct.skge_hw* %115, i32 %118, i32 %119)
  br label %128

121:                                              ; preds = %108, %102
  %122 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %123 = load i32, i32* %4, align 4
  %124 = load i32, i32* @GMAC_CTRL, align 4
  %125 = call i32 @SK_REG(i32 %123, i32 %124)
  %126 = load i32, i32* @GMC_PAUSE_ON, align 4
  %127 = call i32 @skge_write8(%struct.skge_hw* %122, i32 %125, i32 %126)
  br label %128

128:                                              ; preds = %121, %114
  %129 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %130 = call i32 @yukon_link_up(%struct.skge_port* %129)
  br label %187

131:                                              ; preds = %1
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* @PHY_M_IS_LSP_CHANGE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %131
  %137 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %138 = load i32, i32* %7, align 4
  %139 = call i8* @yukon_speed(%struct.skge_hw* %137, i32 %138)
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %142 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %136, %131
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* @PHY_M_IS_DUP_CHANGE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %161

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @PHY_M_PS_FULL_DUP, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i64, i64* @DUPLEX_FULL, align 8
  br label %157

155:                                              ; preds = %148
  %156 = load i64, i64* @DUPLEX_HALF, align 8
  br label %157

157:                                              ; preds = %155, %153
  %158 = phi i64 [ %154, %153 ], [ %156, %155 ]
  %159 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %160 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %157, %143
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @PHY_M_IS_LST_CHANGE, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %161
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @PHY_M_PS_LINK_UP, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %173 = call i32 @yukon_link_up(%struct.skge_port* %172)
  br label %177

174:                                              ; preds = %166
  %175 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %176 = call i32 @yukon_link_down(%struct.skge_port* %175)
  br label %177

177:                                              ; preds = %174, %171
  br label %178

178:                                              ; preds = %177, %161
  br label %187

179:                                              ; preds = %58, %52, %43
  %180 = load %struct.skge_port*, %struct.skge_port** %2, align 8
  %181 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %180, i32 0, i32 4
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load i8*, i8** %5, align 8
  %186 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %184, i8* %185)
  br label %187

187:                                              ; preds = %179, %178, %128
  ret void
}

declare dso_local i32 @gm_phy_read(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @netif_printk(%struct.skge_port*, i32, i32, %struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i8* @yukon_speed(%struct.skge_hw*, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @SK_REG(i32, i32) #1

declare dso_local i32 @yukon_link_up(%struct.skge_port*) #1

declare dso_local i32 @yukon_link_down(%struct.skge_port*) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_cl45_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_cl45_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32, i32, i64 }

@FLAGS_MDC_MDIO_WA_G = common dso_local global i32 0, align 4
@MISC_REG_CHIP_NUM = common dso_local global i64 0, align 8
@MISC_REG_CHIP_REV = common dso_local global i64 0, align 8
@FLAGS_MDC_MDIO_WA_B0 = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_STATUS = common dso_local global i64 0, align 8
@EMAC_MDIO_STATUS_10MB = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_ADDRESS = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_START_BUSY = common dso_local global i32 0, align 4
@EMAC_REG_EMAC_MDIO_COMM = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"read phy register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MDC/MDIO access timeout\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_READ_45 = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_DATA = common dso_local global i32 0, align 4
@FLAGS_MDC_MDIO_WA = common dso_local global i32 0, align 4
@FLAGS_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*)* @bnx2x_cl45_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cl45_read(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FLAGS_MDC_MDIO_WA_G, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %39

22:                                               ; preds = %5
  %23 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %24 = load i64, i64* @MISC_REG_CHIP_NUM, align 8
  %25 = call i32 @REG_RD(%struct.bnx2x* %23, i64 %24)
  %26 = shl i32 %25, 16
  %27 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %28 = load i64, i64* @MISC_REG_CHIP_REV, align 8
  %29 = call i32 @REG_RD(%struct.bnx2x* %27, i64 %28)
  %30 = and i32 %29, 15
  %31 = shl i32 %30, 12
  %32 = or i32 %26, %31
  store i32 %32, i32* %14, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %36 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @bnx2x_set_mdio_clk(%struct.bnx2x* %33, i32 %34, i64 %37)
  br label %39

39:                                               ; preds = %22, %5
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %41 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FLAGS_MDC_MDIO_WA_B0, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %48 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %49 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @EMAC_REG_EMAC_MDIO_STATUS, align 8
  %52 = add nsw i64 %50, %51
  %53 = load i32, i32* @EMAC_MDIO_STATUS_10MB, align 4
  %54 = call i32 @bnx2x_bits_en(%struct.bnx2x* %47, i64 %52, i32 %53)
  br label %55

55:                                               ; preds = %46, %39
  %56 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %57 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 21
  %60 = load i32, i32* %8, align 4
  %61 = shl i32 %60, 16
  %62 = or i32 %59, %61
  %63 = load i32, i32* %9, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_ADDRESS, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %68 = or i32 %66, %67
  store i32 %68, i32* %11, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %70 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %71 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %74 = add nsw i64 %72, %73
  %75 = load i32, i32* %11, align 4
  %76 = call i32 @REG_WR(%struct.bnx2x* %69, i64 %74, i32 %75)
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %96, %55
  %78 = load i32, i32* %12, align 4
  %79 = icmp slt i32 %78, 50
  br i1 %79, label %80, label %99

80:                                               ; preds = %77
  %81 = call i32 @udelay(i32 10)
  %82 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %83 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %84 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @REG_RD(%struct.bnx2x* %82, i64 %87)
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %11, align 4
  %90 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %80
  %94 = call i32 @udelay(i32 5)
  br label %99

95:                                               ; preds = %80
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %77

99:                                               ; preds = %93, %77
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %114

104:                                              ; preds = %99
  %105 = load i32, i32* @NETIF_MSG_LINK, align 4
  %106 = call i32 @DP(i32 %105, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @netdev_err(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32*, i32** %10, align 8
  store i32 0, i32* %111, align 4
  %112 = load i32, i32* @EFAULT, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %13, align 4
  br label %175

114:                                              ; preds = %99
  %115 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %116 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = shl i32 %117, 21
  %119 = load i32, i32* %8, align 4
  %120 = shl i32 %119, 16
  %121 = or i32 %118, %120
  %122 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_READ_45, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %125 = or i32 %123, %124
  store i32 %125, i32* %11, align 4
  %126 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %127 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %128 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %127, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %131 = add nsw i64 %129, %130
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @REG_WR(%struct.bnx2x* %126, i64 %131, i32 %132)
  store i32 0, i32* %12, align 4
  br label %134

134:                                              ; preds = %156, %114
  %135 = load i32, i32* %12, align 4
  %136 = icmp slt i32 %135, 50
  br i1 %136, label %137, label %159

137:                                              ; preds = %134
  %138 = call i32 @udelay(i32 10)
  %139 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %140 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %141 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @REG_RD(%struct.bnx2x* %139, i64 %144)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %137
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @EMAC_MDIO_COMM_DATA, align 4
  %153 = and i32 %151, %152
  %154 = load i32*, i32** %10, align 8
  store i32 %153, i32* %154, align 4
  br label %159

155:                                              ; preds = %137
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %12, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %12, align 4
  br label %134

159:                                              ; preds = %150, %134
  %160 = load i32, i32* %11, align 4
  %161 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %174

164:                                              ; preds = %159
  %165 = load i32, i32* @NETIF_MSG_LINK, align 4
  %166 = call i32 @DP(i32 %165, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %167 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %168 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @netdev_err(i32 %169, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %171 = load i32*, i32** %10, align 8
  store i32 0, i32* %171, align 4
  %172 = load i32, i32* @EFAULT, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %13, align 4
  br label %174

174:                                              ; preds = %164, %159
  br label %175

175:                                              ; preds = %174, %104
  %176 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %177 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @FLAGS_MDC_MDIO_WA, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %200

182:                                              ; preds = %175
  %183 = load i32, i32* @FLAGS_DUMMY_READ, align 4
  %184 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %185 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = xor i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %189 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @FLAGS_DUMMY_READ, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %182
  %195 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %196 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %197 = load i32, i32* %8, align 4
  %198 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %195, %struct.bnx2x_phy* %196, i32 %197, i32 15, i32* %15)
  br label %199

199:                                              ; preds = %194, %182
  br label %200

200:                                              ; preds = %199, %175
  %201 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %202 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @FLAGS_MDC_MDIO_WA_B0, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %200
  %208 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %209 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %210 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @EMAC_REG_EMAC_MDIO_STATUS, align 8
  %213 = add nsw i64 %211, %212
  %214 = load i32, i32* @EMAC_MDIO_STATUS_10MB, align 4
  %215 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %208, i64 %213, i32 %214)
  br label %216

216:                                              ; preds = %207, %200
  %217 = load i32, i32* %13, align 4
  ret i32 %217
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_set_mdio_clk(%struct.bnx2x*, i32, i64) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

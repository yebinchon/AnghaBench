; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_cl45_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_cl45_write.c"
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
@.str = private unnamed_addr constant [27 x i8] c"write phy register failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MDC/MDIO access timeout\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@EMAC_MDIO_COMM_COMMAND_WRITE_45 = common dso_local global i32 0, align 4
@FLAGS_MDC_MDIO_WA = common dso_local global i32 0, align 4
@FLAGS_DUMMY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32)* @bnx2x_cl45_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_cl45_write(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.bnx2x*, align 8
  %7 = alloca %struct.bnx2x_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %6, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
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
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load i32, i32* @NETIF_MSG_LINK, align 4
  %106 = call i32 @DP(i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %107 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @netdev_err(i32 %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EFAULT, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %13, align 4
  br label %172

113:                                              ; preds = %99
  %114 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %115 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 21
  %118 = load i32, i32* %8, align 4
  %119 = shl i32 %118, 16
  %120 = or i32 %117, %119
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @EMAC_MDIO_COMM_COMMAND_WRITE_45, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %11, align 4
  %127 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %128 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %129 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %132 = add nsw i64 %130, %131
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @REG_WR(%struct.bnx2x* %127, i64 %132, i32 %133)
  store i32 0, i32* %12, align 4
  br label %135

135:                                              ; preds = %154, %113
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 50
  br i1 %137, label %138, label %157

138:                                              ; preds = %135
  %139 = call i32 @udelay(i32 10)
  %140 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %141 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %142 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @EMAC_REG_EMAC_MDIO_COMM, align 8
  %145 = add nsw i64 %143, %144
  %146 = call i32 @REG_RD(%struct.bnx2x* %140, i64 %145)
  store i32 %146, i32* %11, align 4
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %138
  %152 = call i32 @udelay(i32 5)
  br label %157

153:                                              ; preds = %138
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %12, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %12, align 4
  br label %135

157:                                              ; preds = %151, %135
  %158 = load i32, i32* %11, align 4
  %159 = load i32, i32* @EMAC_MDIO_COMM_START_BUSY, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load i32, i32* @NETIF_MSG_LINK, align 4
  %164 = call i32 @DP(i32 %163, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %165 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %166 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @netdev_err(i32 %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* @EFAULT, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %162, %157
  br label %172

172:                                              ; preds = %171, %104
  %173 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %174 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @FLAGS_MDC_MDIO_WA, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %197

179:                                              ; preds = %172
  %180 = load i32, i32* @FLAGS_DUMMY_READ, align 4
  %181 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %182 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = xor i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %186 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @FLAGS_DUMMY_READ, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %179
  %192 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %193 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %192, %struct.bnx2x_phy* %193, i32 %194, i32 15, i32* %15)
  br label %196

196:                                              ; preds = %191, %179
  br label %197

197:                                              ; preds = %196, %172
  %198 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %199 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @FLAGS_MDC_MDIO_WA_B0, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %213

204:                                              ; preds = %197
  %205 = load %struct.bnx2x*, %struct.bnx2x** %6, align 8
  %206 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %7, align 8
  %207 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %206, i32 0, i32 2
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @EMAC_REG_EMAC_MDIO_STATUS, align 8
  %210 = add nsw i64 %208, %209
  %211 = load i32, i32* @EMAC_MDIO_STATUS_10MB, align 4
  %212 = call i32 @bnx2x_bits_dis(%struct.bnx2x* %205, i64 %210, i32 %211)
  br label %213

213:                                              ; preds = %204, %197
  %214 = load i32, i32* %13, align 4
  ret i32 %214
}

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @bnx2x_set_mdio_clk(%struct.bnx2x*, i32, i64) #1

declare dso_local i32 @bnx2x_bits_en(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_bits_dis(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_close_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_close_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_mac_vals = type { i32, i32*, i32, i32, i8*, i8* }

@MISC_REG_RESET_REG_2 = common dso_local global i32 0, align 4
@NIG_REG_BMAC0_REGS_OUT_EN = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_RST_BMAC0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Disable bmac Rx\0A\00", align 1
@NIG_REG_INGRESS_BMAC1_MEM = common dso_local global i32 0, align 4
@NIG_REG_INGRESS_BMAC0_MEM = common dso_local global i32 0, align 4
@BIGMAC2_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@BIGMAC_REGISTER_BMAC_CONTROL = common dso_local global i32 0, align 4
@BMAC_CONTROL_RX_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Disable emac Rx\0A\00", align 1
@NIG_REG_NIG_EMAC0_EN = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_2_XMAC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Disable xmac Rx\0A\00", align 1
@GRCBASE_XMAC1 = common dso_local global i32 0, align 4
@GRCBASE_XMAC0 = common dso_local global i32 0, align 4
@XMAC_REG_PFC_CTRL_HI = common dso_local global i32 0, align 4
@XMAC_REG_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_mac_vals*)* @bnx2x_prev_unload_close_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_prev_unload_close_mac(%struct.bnx2x* %0, %struct.bnx2x_mac_vals* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_mac_vals*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_mac_vals* %1, %struct.bnx2x_mac_vals** %4, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i32 @BP_PORT(%struct.bnx2x* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %16 = call i32 @memset(%struct.bnx2x_mac_vals* %15, i32 0, i32 40)
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = load i32, i32* @MISC_REG_RESET_REG_2, align 4
  %19 = call i8* @REG_RD(%struct.bnx2x* %17, i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %22 = call i32 @CHIP_IS_E3(%struct.bnx2x* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %135, label %24

24:                                               ; preds = %2
  %25 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %26 = load i32, i32* @NIG_REG_BMAC0_REGS_OUT_EN, align 4
  %27 = load i32, i32* %11, align 4
  %28 = mul nsw i32 %27, 4
  %29 = add nsw i32 %26, %28
  %30 = call i8* @REG_RD(%struct.bnx2x* %25, i32 %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_RST_BMAC0, align 4
  %33 = load i32, i32* %11, align 4
  %34 = shl i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %114

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %114

42:                                               ; preds = %39
  %43 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = call i32 @BP_PORT(%struct.bnx2x* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @NIG_REG_INGRESS_BMAC1_MEM, align 4
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @NIG_REG_INGRESS_BMAC0_MEM, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = call i64 @CHIP_IS_E2(%struct.bnx2x* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @BIGMAC2_REGISTER_BMAC_CONTROL, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @BIGMAC_REGISTER_BMAC_CONTROL, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  store i32 %61, i32* %7, align 4
  %62 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %63, %64
  %66 = call i8* @REG_RD(%struct.bnx2x* %62, i32 %65)
  %67 = ptrtoint i8* %66 to i32
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %70, %71
  %73 = add nsw i32 %72, 4
  %74 = call i8* @REG_RD(%struct.bnx2x* %69, i32 %73)
  %75 = ptrtoint i8* %74 to i32
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %77, %78
  %80 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %81 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %85 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 %83, i32* %87, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %91 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 %89, i32* %93, align 4
  %94 = load i32, i32* @BMAC_CONTROL_RX_ENABLE, align 4
  %95 = xor i32 %94, -1
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = and i32 %97, %95
  store i32 %98, i32* %96, align 4
  %99 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %100 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %101 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @REG_WR(%struct.bnx2x* %99, i32 %102, i32 %104)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %108 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 4
  %111 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @REG_WR(%struct.bnx2x* %106, i32 %110, i32 %112)
  br label %114

114:                                              ; preds = %60, %39, %24
  %115 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %116 = load i32, i32* @NIG_REG_NIG_EMAC0_EN, align 4
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = call i32 @BP_PORT(%struct.bnx2x* %117)
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 %116, %119
  %121 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %122 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %124 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %125 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i8* @REG_RD(%struct.bnx2x* %123, i32 %126)
  %128 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %129 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  %130 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %131 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %132 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = call i32 @REG_WR(%struct.bnx2x* %130, i32 %133, i32 0)
  store i32 1, i32* %10, align 4
  br label %201

135:                                              ; preds = %2
  %136 = load i32, i32* %9, align 4
  %137 = load i32, i32* @MISC_REGISTERS_RESET_REG_2_XMAC, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %188

140:                                              ; preds = %135
  %141 = call i32 @BNX2X_DEV_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %142 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %143 = call i32 @BP_PORT(%struct.bnx2x* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %140
  %146 = load i32, i32* @GRCBASE_XMAC1, align 4
  br label %149

147:                                              ; preds = %140
  %148 = load i32, i32* @GRCBASE_XMAC0, align 4
  br label %149

149:                                              ; preds = %147, %145
  %150 = phi i32 [ %146, %145 ], [ %148, %147 ]
  store i32 %150, i32* %6, align 4
  %151 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %152 = load i32, i32* %6, align 4
  %153 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %154 = add nsw i32 %152, %153
  %155 = call i8* @REG_RD(%struct.bnx2x* %151, i32 %154)
  %156 = ptrtoint i8* %155 to i32
  store i32 %156, i32* %5, align 4
  %157 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %158 = load i32, i32* %6, align 4
  %159 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %160 = add nsw i32 %158, %159
  %161 = load i32, i32* %5, align 4
  %162 = and i32 %161, -3
  %163 = call i32 @REG_WR(%struct.bnx2x* %157, i32 %160, i32 %162)
  %164 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %165 = load i32, i32* %6, align 4
  %166 = load i32, i32* @XMAC_REG_PFC_CTRL_HI, align 4
  %167 = add nsw i32 %165, %166
  %168 = load i32, i32* %5, align 4
  %169 = or i32 %168, 2
  %170 = call i32 @REG_WR(%struct.bnx2x* %164, i32 %167, i32 %169)
  %171 = load i32, i32* %6, align 4
  %172 = load i32, i32* @XMAC_REG_CTRL, align 4
  %173 = add nsw i32 %171, %172
  %174 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %175 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %174, i32 0, i32 3
  store i32 %173, i32* %175, align 4
  %176 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %177 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %178 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = call i8* @REG_RD(%struct.bnx2x* %176, i32 %179)
  %181 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %182 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %181, i32 0, i32 4
  store i8* %180, i8** %182, align 8
  %183 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %184 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %185 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @REG_WR(%struct.bnx2x* %183, i32 %186, i32 0)
  store i32 1, i32* %10, align 4
  br label %188

188:                                              ; preds = %149, %135
  %189 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %190 = load i32, i32* %9, align 4
  %191 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %192 = call i32 @bnx2x_prev_unload_close_umac(%struct.bnx2x* %189, i32 0, i32 %190, %struct.bnx2x_mac_vals* %191)
  %193 = load i32, i32* %10, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %10, align 4
  %195 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load %struct.bnx2x_mac_vals*, %struct.bnx2x_mac_vals** %4, align 8
  %198 = call i32 @bnx2x_prev_unload_close_umac(%struct.bnx2x* %195, i32 1, i32 %196, %struct.bnx2x_mac_vals* %197)
  %199 = load i32, i32* %10, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %188, %114
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = call i32 @msleep(i32 20)
  br label %206

206:                                              ; preds = %204, %201
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @memset(%struct.bnx2x_mac_vals*, i32, i32) #1

declare dso_local i8* @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E3(%struct.bnx2x*) #1

declare dso_local i32 @BNX2X_DEV_INFO(i8*) #1

declare dso_local i64 @CHIP_IS_E2(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @bnx2x_prev_unload_close_umac(%struct.bnx2x*, i32, i32, %struct.bnx2x_mac_vals*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

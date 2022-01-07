; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_prev_unload_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bnx2x_mac_vals = type { i32*, i64, i32, i64, i32*, i64*, i32, i64 }

@.str = private unnamed_addr constant [20 x i8] c"Common unload Flow\0A\00", align 1
@MISC_REG_RESET_REG_1 = common dso_local global i32 0, align 4
@MISC_REGISTERS_RESET_REG_1_RST_BRB1 = common dso_local global i32 0, align 4
@DORQ_REG_NORM_CID_OFST = common dso_local global i64 0, align 8
@NIG_REG_NIG_INT_STS_CLR_0 = common dso_local global i32 0, align 4
@PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER = common dso_local global i64 0, align 8
@BRB1_REG_NUM_OF_FULL_BLOCKS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"BRB still has 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to empty BRB, hope for the best\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_prev_unload_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_prev_unload_common(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x_mac_vals, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @memset(%struct.bnx2x_mac_vals* %8, i32 0, i32 64)
  %13 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %14 = call i64 @bnx2x_prev_is_path_marked(%struct.bnx2x* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %17)
  store i32 %18, i32* %2, align 4
  br label %196

19:                                               ; preds = %1
  %20 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %21 = load i32, i32* @MISC_REG_RESET_REG_1, align 4
  %22 = call i32 @REG_RD(%struct.bnx2x* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @MISC_REGISTERS_RESET_REG_1_RST_BRB1, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %103

27:                                               ; preds = %19
  store i32 1000, i32* %9, align 4
  %28 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %29 = call i32 @bnx2x_prev_unload_close_mac(%struct.bnx2x* %28, %struct.bnx2x_mac_vals* %8)
  %30 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = call i32 @bnx2x_set_rx_filter(%struct.TYPE_2__* %31, i32 0)
  %33 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %34 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 0
  %40 = call i32 @bnx2x_set_rx_filter(%struct.TYPE_2__* %39, i32 0)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = xor i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %47 = call i64 @bnx2x_prev_is_after_undi(%struct.bnx2x* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %27
  store i32 1, i32* %7, align 4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %51 = load i64, i64* @DORQ_REG_NORM_CID_OFST, align 8
  %52 = call i32 @REG_WR(%struct.bnx2x* %50, i64 %51, i32 0)
  %53 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %54 = load i32, i32* @NIG_REG_NIG_INT_STS_CLR_0, align 4
  %55 = call i32 @REG_RD(%struct.bnx2x* %53, i32 %54)
  br label %56

56:                                               ; preds = %49, %27
  %57 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %58 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %62 = load i64, i64* @PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, align 8
  %63 = call i32 @REG_WR(%struct.bnx2x* %61, i64 %62, i32 0)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %66 = load i32, i32* @BRB1_REG_NUM_OF_FULL_BLOCKS, align 4
  %67 = call i32 @REG_RD(%struct.bnx2x* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %68

68:                                               ; preds = %95, %64
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %97

71:                                               ; preds = %68
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %10, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load i32, i32* @BRB1_REG_NUM_OF_FULL_BLOCKS, align 4
  %75 = call i32 @REG_RD(%struct.bnx2x* %73, i32 %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %71
  br label %97

79:                                               ; preds = %71
  %80 = load i32, i32* %5, align 4
  %81 = call i32 (i8*, ...) @BNX2X_DEV_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp sgt i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 1000, i32* %9, align 4
  br label %89

86:                                               ; preds = %79
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %86, %85
  %90 = load i32, i32* %7, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %94 = call i32 @bnx2x_prev_unload_undi_inc(%struct.bnx2x* %93, i32 1)
  br label %95

95:                                               ; preds = %92, %89
  %96 = call i32 @udelay(i32 10)
  br label %68

97:                                               ; preds = %78, %68
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %102, label %100

100:                                              ; preds = %97
  %101 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %97
  br label %103

103:                                              ; preds = %102, %19
  %104 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %105 = call i32 @bnx2x_reset_common(%struct.bnx2x* %104)
  %106 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %111 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 7
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 6
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @REG_WR(%struct.bnx2x* %110, i64 %112, i32 %114)
  br label %116

116:                                              ; preds = %109, %103
  %117 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 5
  %118 = load i64*, i64** %117, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %116
  %123 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %124 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 5
  %125 = load i64*, i64** %124, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 4
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @REG_WR(%struct.bnx2x* %123, i64 %127, i32 %131)
  br label %133

133:                                              ; preds = %122, %116
  %134 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 5
  %135 = load i64*, i64** %134, align 8
  %136 = getelementptr inbounds i64, i64* %135, i64 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %133
  %140 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %141 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 5
  %142 = load i64*, i64** %141, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 1
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 4
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @REG_WR(%struct.bnx2x* %140, i64 %144, i32 %148)
  br label %150

150:                                              ; preds = %139, %133
  %151 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 3
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %150
  %155 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %156 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @REG_WR(%struct.bnx2x* %155, i64 %157, i32 %159)
  br label %161

161:                                              ; preds = %154, %150
  %162 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %183

165:                                              ; preds = %161
  %166 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %167 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @REG_WR(%struct.bnx2x* %166, i64 %168, i32 %172)
  %174 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %175 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = add nsw i64 %176, 4
  %178 = getelementptr inbounds %struct.bnx2x_mac_vals, %struct.bnx2x_mac_vals* %8, i32 0, i32 0
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @REG_WR(%struct.bnx2x* %174, i64 %177, i32 %181)
  br label %183

183:                                              ; preds = %165, %161
  %184 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @bnx2x_prev_mark_path(%struct.bnx2x* %184, i32 %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %191 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %190)
  %192 = load i32, i32* %6, align 4
  store i32 %192, i32* %2, align 4
  br label %196

193:                                              ; preds = %183
  %194 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %195 = call i32 @bnx2x_prev_mcp_done(%struct.bnx2x* %194)
  store i32 %195, i32* %2, align 4
  br label %196

196:                                              ; preds = %193, %189, %16
  %197 = load i32, i32* %2, align 4
  ret i32 %197
}

declare dso_local i32 @BNX2X_DEV_INFO(i8*, ...) #1

declare dso_local i32 @memset(%struct.bnx2x_mac_vals*, i32, i32) #1

declare dso_local i64 @bnx2x_prev_is_path_marked(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_mcp_done(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_prev_unload_close_mac(%struct.bnx2x*, %struct.bnx2x_mac_vals*) #1

declare dso_local i32 @bnx2x_set_rx_filter(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @bnx2x_prev_is_after_undi(%struct.bnx2x*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_unload_undi_inc(%struct.bnx2x*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @bnx2x_reset_common(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_prev_mark_path(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

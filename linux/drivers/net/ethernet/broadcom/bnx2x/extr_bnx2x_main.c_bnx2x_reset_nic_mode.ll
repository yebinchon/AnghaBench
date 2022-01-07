; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_reset_nic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_reset_nic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i64, i32 }

@NUM_MACS = common dso_local global i32 0, align 4
@SINGLE_FUNCTION = common dso_local global i64 0, align 8
@NIG_REG_LLH1_FUNC_EN = common dso_local global i64 0, align 8
@NIG_REG_LLH0_FUNC_EN = common dso_local global i64 0, align 8
@NIG_REG_LLH1_FUNC_MEM_ENABLE = common dso_local global i64 0, align 8
@NIG_REG_LLH0_FUNC_MEM_ENABLE = common dso_local global i64 0, align 8
@NIG_REG_P0_TX_MNG_HOST_ENABLE = common dso_local global i64 0, align 8
@NIG_REG_P1_TX_MNG_HOST_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Can't suspend tx-switching!\0A\00", align 1
@PRS_REG_NIC_MODE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Can't resume tx-switching!\0A\00", align 1
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"NIC MODE disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*)* @bnx2x_reset_nic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_reset_nic_mode(%struct.bnx2x* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  %11 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %12 = call i32 @BP_PORT(%struct.bnx2x* %11)
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* @NUM_MACS, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %18 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SINGLE_FUNCTION, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 1
  %25 = call i32 @bnx2x_set_rx_filter(i32* %24, i32 0)
  br label %95

26:                                               ; preds = %1
  %27 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i64, i64* @NIG_REG_LLH1_FUNC_EN, align 8
  br label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @NIG_REG_LLH0_FUNC_EN, align 8
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i64 [ %31, %30 ], [ %33, %32 ]
  %36 = call i32 @REG_RD(%struct.bnx2x* %27, i64 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i64, i64* @NIG_REG_LLH1_FUNC_EN, align 8
  br label %44

42:                                               ; preds = %34
  %43 = load i64, i64* @NIG_REG_LLH0_FUNC_EN, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  %46 = call i32 @REG_WR(%struct.bnx2x* %37, i64 %45, i32 0)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %91, %44
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @NUM_MACS, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %94

51:                                               ; preds = %47
  %52 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* @NIG_REG_LLH1_FUNC_MEM_ENABLE, align 8
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 4, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %56, %59
  br label %67

61:                                               ; preds = %51
  %62 = load i64, i64* @NIG_REG_LLH0_FUNC_MEM_ENABLE, align 8
  %63 = load i32, i32* %5, align 4
  %64 = mul nsw i32 4, %63
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %62, %65
  br label %67

67:                                               ; preds = %61, %55
  %68 = phi i64 [ %60, %55 ], [ %66, %61 ]
  %69 = call i32 @REG_RD(%struct.bnx2x* %52, i64 %68)
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %16, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %67
  %77 = load i64, i64* @NIG_REG_LLH1_FUNC_MEM_ENABLE, align 8
  %78 = load i32, i32* %5, align 4
  %79 = mul nsw i32 4, %78
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %77, %80
  br label %88

82:                                               ; preds = %67
  %83 = load i64, i64* @NIG_REG_LLH0_FUNC_MEM_ENABLE, align 8
  %84 = load i32, i32* %5, align 4
  %85 = mul nsw i32 4, %84
  %86 = sext i32 %85 to i64
  %87 = add nsw i64 %83, %86
  br label %88

88:                                               ; preds = %82, %76
  %89 = phi i64 [ %81, %76 ], [ %87, %82 ]
  %90 = call i32 @REG_WR(%struct.bnx2x* %73, i64 %89, i32 0)
  br label %91

91:                                               ; preds = %88
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %47

94:                                               ; preds = %47
  br label %95

95:                                               ; preds = %94, %22
  %96 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %95
  %100 = load i64, i64* @NIG_REG_P0_TX_MNG_HOST_ENABLE, align 8
  br label %103

101:                                              ; preds = %95
  %102 = load i64, i64* @NIG_REG_P1_TX_MNG_HOST_ENABLE, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i64 [ %100, %99 ], [ %102, %101 ]
  %105 = call i32 @REG_WR(%struct.bnx2x* %96, i64 %104, i32 0)
  %106 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %107 = call i32 @bnx2x_func_switch_update(%struct.bnx2x* %106, i32 1)
  store i32 %107, i32* %4, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %103
  %111 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %112 = load i32, i32* %4, align 4
  store i32 %112, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %190

113:                                              ; preds = %103
  %114 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %115 = load i64, i64* @PRS_REG_NIC_MODE, align 8
  %116 = call i32 @REG_WR(%struct.bnx2x* %114, i64 %115, i32 0)
  %117 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SINGLE_FUNCTION, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %113
  %123 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %124 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %123, i32 0, i32 1
  %125 = call i32 @bnx2x_set_rx_filter(i32* %124, i32 1)
  br label %169

126:                                              ; preds = %113
  %127 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %128 = load i32, i32* %6, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %126
  %131 = load i64, i64* @NIG_REG_LLH1_FUNC_EN, align 8
  br label %134

132:                                              ; preds = %126
  %133 = load i64, i64* @NIG_REG_LLH0_FUNC_EN, align 8
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i64 [ %131, %130 ], [ %133, %132 ]
  %136 = load i32, i32* %7, align 4
  %137 = call i32 @REG_WR(%struct.bnx2x* %127, i64 %135, i32 %136)
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %165, %134
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @NUM_MACS, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %168

142:                                              ; preds = %138
  %143 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %142
  %147 = load i64, i64* @NIG_REG_LLH1_FUNC_MEM_ENABLE, align 8
  %148 = load i32, i32* %5, align 4
  %149 = mul nsw i32 4, %148
  %150 = sext i32 %149 to i64
  %151 = add nsw i64 %147, %150
  br label %158

152:                                              ; preds = %142
  %153 = load i64, i64* @NIG_REG_LLH0_FUNC_MEM_ENABLE, align 8
  %154 = load i32, i32* %5, align 4
  %155 = mul nsw i32 4, %154
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %153, %156
  br label %158

158:                                              ; preds = %152, %146
  %159 = phi i64 [ %151, %146 ], [ %157, %152 ]
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %16, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @REG_WR(%struct.bnx2x* %143, i64 %159, i32 %163)
  br label %165

165:                                              ; preds = %158
  %166 = load i32, i32* %5, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %5, align 4
  br label %138

168:                                              ; preds = %138
  br label %169

169:                                              ; preds = %168, %122
  %170 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %171 = load i32, i32* %6, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %169
  %174 = load i64, i64* @NIG_REG_P0_TX_MNG_HOST_ENABLE, align 8
  br label %177

175:                                              ; preds = %169
  %176 = load i64, i64* @NIG_REG_P1_TX_MNG_HOST_ENABLE, align 8
  br label %177

177:                                              ; preds = %175, %173
  %178 = phi i64 [ %174, %173 ], [ %176, %175 ]
  %179 = call i32 @REG_WR(%struct.bnx2x* %170, i64 %178, i32 1)
  %180 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %181 = call i32 @bnx2x_func_switch_update(%struct.bnx2x* %180, i32 0)
  store i32 %181, i32* %4, align 4
  %182 = load i32, i32* %4, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %186 = load i32, i32* %4, align 4
  store i32 %186, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %190

187:                                              ; preds = %177
  %188 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %189 = call i32 @DP(i32 %188, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %190

190:                                              ; preds = %187, %184, %110
  %191 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %191)
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @bnx2x_set_rx_filter(i32*, i32) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i64) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @bnx2x_func_switch_update(%struct.bnx2x*, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

declare dso_local i32 @DP(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

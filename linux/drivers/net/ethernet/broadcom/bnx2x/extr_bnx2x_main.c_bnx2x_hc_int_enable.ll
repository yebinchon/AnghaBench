; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_hc_int_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_hc_int_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@HC_REG_CONFIG_1 = common dso_local global i32 0, align 4
@HC_REG_CONFIG_0 = common dso_local global i32 0, align 4
@USING_MSIX_FLAG = common dso_local global i32 0, align 4
@USING_SINGLE_MSIX_FLAG = common dso_local global i32 0, align 4
@USING_MSI_FLAG = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_SINGLE_ISR_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_INT_LINE_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0 = common dso_local global i32 0, align 4
@HC_CONFIG_0_REG_ATTN_BIT_EN_0 = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"write %x to HC %d (addr 0x%x)\0A\00", align 1
@HC_REG_INT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"write %x to HC %d (addr 0x%x) mode %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"MSI-X\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"MSI\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"INTx\00", align 1
@HC_REG_TRAILING_EDGE_0 = common dso_local global i32 0, align 4
@HC_REG_LEADING_EDGE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_hc_int_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_hc_int_enable(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %9 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %10 = call i32 @BP_PORT(%struct.bnx2x* %9)
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @HC_REG_CONFIG_1, align 4
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @HC_REG_CONFIG_0, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  store i32 %18, i32* %4, align 4
  %19 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @REG_RD(%struct.bnx2x* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @USING_MSIX_FLAG, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 1, i32 0
  store i32 %29, i32* %6, align 4
  %30 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %31 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @USING_SINGLE_MSIX_FLAG, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %7, align 4
  %38 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @USING_MSI_FLAG, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 0
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %67

48:                                               ; preds = %17
  %49 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %50 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %56 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %48
  br label %111

67:                                               ; preds = %17
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %67
  %71 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %72 = xor i32 %71, -1
  %73 = load i32, i32* %5, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %76 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* %5, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %5, align 4
  br label %110

82:                                               ; preds = %67
  %83 = load i32, i32* @HC_CONFIG_0_REG_SINGLE_ISR_EN_0, align 4
  %84 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @HC_CONFIG_0_REG_INT_LINE_EN_0, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @HC_CONFIG_0_REG_ATTN_BIT_EN_0, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* %5, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %93 = call i64 @CHIP_IS_E1(%struct.bnx2x* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %109, label %95

95:                                               ; preds = %82
  %96 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 (i32, i8*, i32, i32, i32, ...) @DP(i32 %96, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98, i32 %99)
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @REG_WR(%struct.bnx2x* %101, i32 %102, i32 %103)
  %105 = load i32, i32* @HC_CONFIG_0_REG_MSI_MSIX_INT_EN_0, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %95, %82
  br label %110

110:                                              ; preds = %109, %70
  br label %111

111:                                              ; preds = %110, %66
  %112 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %113 = call i64 @CHIP_IS_E1(%struct.bnx2x* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111
  %116 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %117 = load i32, i32* @HC_REG_INT_MASK, align 4
  %118 = load i32, i32* %3, align 4
  %119 = mul nsw i32 %118, 4
  %120 = add nsw i32 %117, %119
  %121 = call i32 @REG_WR(%struct.bnx2x* %116, i32 %120, i32 131071)
  br label %122

122:                                              ; preds = %115, %111
  %123 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %124 = load i32, i32* %5, align 4
  %125 = load i32, i32* %3, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  br label %135

130:                                              ; preds = %122
  %131 = load i32, i32* %8, align 4
  %132 = icmp ne i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  br label %135

135:                                              ; preds = %130, %129
  %136 = phi i8* [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), %129 ], [ %134, %130 ]
  %137 = call i32 (i32, i8*, i32, i32, i32, ...) @DP(i32 %123, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i8* %136)
  %138 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @REG_WR(%struct.bnx2x* %138, i32 %139, i32 %140)
  %142 = call i32 (...) @barrier()
  %143 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %144 = call i64 @CHIP_IS_E1(%struct.bnx2x* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %181, label %146

146:                                              ; preds = %135
  %147 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %148 = call i64 @IS_MF(%struct.bnx2x* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %165

150:                                              ; preds = %146
  %151 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %152 = call i32 @BP_VN(%struct.bnx2x* %151)
  %153 = add nsw i32 %152, 4
  %154 = shl i32 1, %153
  %155 = or i32 60943, %154
  store i32 %155, i32* %5, align 4
  %156 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %157 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %150
  %162 = load i32, i32* %5, align 4
  %163 = or i32 %162, 4352
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %161, %150
  br label %166

165:                                              ; preds = %146
  store i32 65535, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %164
  %167 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %168 = load i32, i32* @HC_REG_TRAILING_EDGE_0, align 4
  %169 = load i32, i32* %3, align 4
  %170 = mul nsw i32 %169, 8
  %171 = add nsw i32 %168, %170
  %172 = load i32, i32* %5, align 4
  %173 = call i32 @REG_WR(%struct.bnx2x* %167, i32 %171, i32 %172)
  %174 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %175 = load i32, i32* @HC_REG_LEADING_EDGE_0, align 4
  %176 = load i32, i32* %3, align 4
  %177 = mul nsw i32 %176, 8
  %178 = add nsw i32 %175, %177
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @REG_WR(%struct.bnx2x* %174, i32 %178, i32 %179)
  br label %181

181:                                              ; preds = %166, %135
  ret void
}

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @REG_RD(%struct.bnx2x*, i32) #1

declare dso_local i64 @CHIP_IS_E1(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i32, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @IS_MF(%struct.bnx2x*) #1

declare dso_local i32 @BP_VN(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

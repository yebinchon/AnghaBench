; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_halt_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ahb.c_ath10k_ahb_halt_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_ahb = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"rst ctrl(s) is/are not initialized\0A\00", align 1
@ATH10K_AHB_WLAN_CORE_ID_REG = common dso_local global i32 0, align 4
@ATH10K_AHB_TCSR_WIFI0_GLB_CFG = common dso_local global i32 0, align 4
@ATH10K_AHB_TCSR_WCSS0_HALTREQ = common dso_local global i32 0, align 4
@ATH10K_AHB_TCSR_WCSS0_HALTACK = common dso_local global i32 0, align 4
@ATH10K_AHB_TCSR_WIFI1_GLB_CFG = common dso_local global i32 0, align 4
@ATH10K_AHB_TCSR_WCSS1_HALTREQ = common dso_local global i32 0, align 4
@ATH10K_AHB_TCSR_WCSS1_HALTACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"invalid core id %d found, skipping reset sequence\0A\00", align 1
@TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to assert core cold rst: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"failed to assert radio cold rst: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"failed to assert radio warm rst: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"failed to assert radio srif rst: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"failed to assert cpu init rst: %d\0A\00", align 1
@AHB_AXI_BUS_HALT_REQ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [38 x i8] c"failed to deassert core cold rst: %d\0A\00", align 1
@ATH10K_DBG_AHB = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [20 x i8] c"core %d reset done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_ahb_halt_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_ahb_halt_chip(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_ahb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %10 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %11 = call %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k* %10)
  store %struct.ath10k_ahb* %11, %struct.ath10k_ahb** %3, align 8
  %12 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %13 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @IS_ERR_OR_NULL(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %41, label %17

17:                                               ; preds = %1
  %18 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %19 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @IS_ERR_OR_NULL(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %41, label %23

23:                                               ; preds = %17
  %24 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %25 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR_OR_NULL(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %41, label %29

29:                                               ; preds = %23
  %30 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @IS_ERR_OR_NULL(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %29
  %36 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %37 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @IS_ERR_OR_NULL(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %29, %23, %17, %1
  %42 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %43 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %42, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %173

44:                                               ; preds = %35
  %45 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %46 = load i32, i32* @ATH10K_AHB_WLAN_CORE_ID_REG, align 4
  %47 = call i32 @ath10k_ahb_read32(%struct.ath10k* %45, i32 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  switch i32 %48, label %57 [
    i32 0, label %49
    i32 1, label %53
  ]

49:                                               ; preds = %44
  %50 = load i32, i32* @ATH10K_AHB_TCSR_WIFI0_GLB_CFG, align 4
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @ATH10K_AHB_TCSR_WCSS0_HALTREQ, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @ATH10K_AHB_TCSR_WCSS0_HALTACK, align 4
  store i32 %52, i32* %7, align 4
  br label %61

53:                                               ; preds = %44
  %54 = load i32, i32* @ATH10K_AHB_TCSR_WIFI1_GLB_CFG, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @ATH10K_AHB_TCSR_WCSS1_HALTREQ, align 4
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* @ATH10K_AHB_TCSR_WCSS1_HALTACK, align 4
  store i32 %56, i32* %7, align 4
  br label %61

57:                                               ; preds = %44
  %58 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %173

61:                                               ; preds = %53, %49
  %62 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @ath10k_ahb_halt_axi_bus(%struct.ath10k* %62, i32 %63, i32 %64)
  %66 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @ath10k_ahb_tcsr_read32(%struct.ath10k* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @ath10k_ahb_tcsr_write32(%struct.ath10k* %72, i32 %73, i32 %74)
  %76 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %77 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @reset_control_assert(i32 %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %61
  %83 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %84 = load i32, i32* %9, align 4
  %85 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %84)
  br label %86

86:                                               ; preds = %82, %61
  %87 = call i32 @msleep(i32 1)
  %88 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %89 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @reset_control_assert(i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %86
  %95 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %95, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %94, %86
  %99 = call i32 @msleep(i32 1)
  %100 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %101 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @reset_control_assert(i32 %102)
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* %9, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %98
  %107 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %108 = load i32, i32* %9, align 4
  %109 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %107, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %106, %98
  %111 = call i32 @msleep(i32 1)
  %112 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %113 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @reset_control_assert(i32 %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %110
  %119 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %120 = load i32, i32* %9, align 4
  %121 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %118, %110
  %123 = call i32 @msleep(i32 1)
  %124 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %125 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @reset_control_assert(i32 %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %122
  %131 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %132 = load i32, i32* %9, align 4
  %133 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0), i32 %132)
  br label %134

134:                                              ; preds = %130, %122
  %135 = call i32 @msleep(i32 10)
  %136 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ath10k_ahb_tcsr_read32(%struct.ath10k* %136, i32 %137)
  store i32 %138, i32* %8, align 4
  %139 = load i32, i32* @AHB_AXI_BUS_HALT_REQ, align 4
  %140 = xor i32 %139, -1
  %141 = load i32, i32* %8, align 4
  %142 = and i32 %141, %140
  store i32 %142, i32* %8, align 4
  %143 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %8, align 4
  %146 = call i32 @ath10k_ahb_tcsr_write32(%struct.ath10k* %143, i32 %144, i32 %145)
  %147 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %148 = load i32, i32* %5, align 4
  %149 = call i32 @ath10k_ahb_tcsr_read32(%struct.ath10k* %147, i32 %148)
  store i32 %149, i32* %8, align 4
  %150 = load i32, i32* @TCSR_WIFIX_GLB_CFG_DISABLE_CORE_CLK, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %8, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %8, align 4
  %154 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @ath10k_ahb_tcsr_write32(%struct.ath10k* %154, i32 %155, i32 %156)
  %158 = load %struct.ath10k_ahb*, %struct.ath10k_ahb** %3, align 8
  %159 = getelementptr inbounds %struct.ath10k_ahb, %struct.ath10k_ahb* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @reset_control_deassert(i32 %160)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %134
  %165 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %166 = load i32, i32* %9, align 4
  %167 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %165, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %164, %134
  %169 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %170 = load i32, i32* @ATH10K_DBG_AHB, align 4
  %171 = load i32, i32* %4, align 4
  %172 = call i32 @ath10k_dbg(%struct.ath10k* %169, i32 %170, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %168, %57, %41
  ret void
}

declare dso_local %struct.ath10k_ahb* @ath10k_ahb_priv(%struct.ath10k*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @ath10k_ahb_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ahb_halt_axi_bus(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @ath10k_ahb_tcsr_read32(%struct.ath10k*, i32) #1

declare dso_local i32 @ath10k_ahb_tcsr_write32(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

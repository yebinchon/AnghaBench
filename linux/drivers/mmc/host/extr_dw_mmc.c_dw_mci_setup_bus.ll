; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_setup_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_setup_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci_slot = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32, %struct.dw_mci* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.dw_mci = type { i64, i32, i32 }

@SDMMC_CMD_UPD_CLK = common dso_local global i32 0, align 4
@SDMMC_CMD_PRV_DAT_WAIT = common dso_local global i32 0, align 4
@STATE_WAITING_CMD11_DONE = common dso_local global i64 0, align 8
@SDMMC_CMD_VOLT_SWITCH = common dso_local global i32 0, align 4
@CLKENA = common dso_local global i32 0, align 4
@DW_MMC_CARD_NEEDS_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Bus speed (slot %d) = %dHz (slot req %dHz, actual %dHZ div = %d)\0A\00", align 1
@MMC_CAP_NEEDS_POLL = common dso_local global i32 0, align 4
@CLKSRC = common dso_local global i32 0, align 4
@CLKDIV = common dso_local global i32 0, align 4
@SDMMC_CLKEN_ENABLE = common dso_local global i32 0, align 4
@DW_MMC_CARD_NO_LOW_PWR = common dso_local global i32 0, align 4
@SDMMC_CLKEN_LOW_PWR = common dso_local global i32 0, align 4
@CTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci_slot*, i32)* @dw_mci_setup_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_setup_bus(%struct.dw_mci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dw_mci_slot* %0, %struct.dw_mci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %11 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %10, i32 0, i32 6
  %12 = load %struct.dw_mci*, %struct.dw_mci** %11, align 8
  store %struct.dw_mci* %12, %struct.dw_mci** %5, align 8
  %13 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @SDMMC_CMD_UPD_CLK, align 4
  %17 = load i32, i32* @SDMMC_CMD_PRV_DAT_WAIT, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %9, align 4
  %19 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %20 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATE_WAITING_CMD11_DONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load i32, i32* @SDMMC_CMD_VOLT_SWITCH, align 4
  %26 = load i32, i32* %9, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %24, %2
  %29 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %30 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %28
  %36 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %37 = load i32, i32* @CLKENA, align 4
  %38 = call i32 @mci_writel(%struct.dw_mci* %36, i32 %37, i32 0)
  %39 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @mci_send_cmd(%struct.dw_mci_slot* %39, i32 %40, i32 0)
  br label %219

42:                                               ; preds = %28
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %45 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %218

51:                                               ; preds = %48, %42
  %52 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %53 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = udiv i32 %54, %55
  store i32 %56, i32* %7, align 4
  %57 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %58 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = urem i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %51
  %64 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %65 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ugt i32 %66, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %63, %51
  %73 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %74 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %72
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @DIV_ROUND_UP(i32 %79, i32 2)
  br label %82

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %78
  %83 = phi i32 [ %80, %78 ], [ 0, %81 ]
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %86 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %82
  %90 = load i32, i32* @DW_MMC_CARD_NEEDS_POLL, align 4
  %91 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %92 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %91, i32 0, i32 5
  %93 = call i32 @test_bit(i32 %90, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %89, %82
  %96 = load i32, i32* %4, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %153

98:                                               ; preds = %95, %89
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %130, label %101

101:                                              ; preds = %98
  %102 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %103 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %102, i32 0, i32 4
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %107 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %110 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %7, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %101
  %116 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %117 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* %7, align 4
  %120 = udiv i32 %118, %119
  %121 = lshr i32 %120, 1
  br label %126

122:                                              ; preds = %101
  %123 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %124 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  br label %126

126:                                              ; preds = %122, %115
  %127 = phi i32 [ %121, %115 ], [ %125, %122 ]
  %128 = load i32, i32* %7, align 4
  %129 = call i32 @dev_info(i32* %105, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %108, i32 %111, i32 %112, i32 %127, i32 %128)
  br label %130

130:                                              ; preds = %126, %98
  %131 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %132 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %131, i32 0, i32 4
  %133 = load %struct.TYPE_2__*, %struct.TYPE_2__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @MMC_CAP_NEEDS_POLL, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %152

139:                                              ; preds = %130
  %140 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %141 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %140, i32 0, i32 4
  %142 = load %struct.TYPE_2__*, %struct.TYPE_2__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* %6, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %139
  %148 = load i32, i32* @DW_MMC_CARD_NEEDS_POLL, align 4
  %149 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %150 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %149, i32 0, i32 5
  %151 = call i32 @set_bit(i32 %148, i32* %150)
  br label %152

152:                                              ; preds = %147, %139, %130
  br label %153

153:                                              ; preds = %152, %95
  %154 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %155 = load i32, i32* @CLKENA, align 4
  %156 = call i32 @mci_writel(%struct.dw_mci* %154, i32 %155, i32 0)
  %157 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %158 = load i32, i32* @CLKSRC, align 4
  %159 = call i32 @mci_writel(%struct.dw_mci* %157, i32 %158, i32 0)
  %160 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @mci_send_cmd(%struct.dw_mci_slot* %160, i32 %161, i32 0)
  %163 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %164 = load i32, i32* @CLKDIV, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @mci_writel(%struct.dw_mci* %163, i32 %164, i32 %165)
  %167 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %168 = load i32, i32* %9, align 4
  %169 = call i32 @mci_send_cmd(%struct.dw_mci_slot* %167, i32 %168, i32 0)
  %170 = load i32, i32* @SDMMC_CLKEN_ENABLE, align 4
  %171 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %172 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = shl i32 %170, %173
  store i32 %174, i32* %8, align 4
  %175 = load i32, i32* @DW_MMC_CARD_NO_LOW_PWR, align 4
  %176 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %177 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %176, i32 0, i32 5
  %178 = call i32 @test_bit(i32 %175, i32* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %153
  %181 = load i32, i32* @SDMMC_CLKEN_LOW_PWR, align 4
  %182 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %183 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = shl i32 %181, %184
  %186 = load i32, i32* %8, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %8, align 4
  br label %188

188:                                              ; preds = %180, %153
  %189 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %190 = load i32, i32* @CLKENA, align 4
  %191 = load i32, i32* %8, align 4
  %192 = call i32 @mci_writel(%struct.dw_mci* %189, i32 %190, i32 %191)
  %193 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %194 = load i32, i32* %9, align 4
  %195 = call i32 @mci_send_cmd(%struct.dw_mci_slot* %193, i32 %194, i32 0)
  %196 = load i32, i32* %6, align 4
  %197 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %198 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %197, i32 0, i32 1
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* %7, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %208

201:                                              ; preds = %188
  %202 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %203 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* %7, align 4
  %206 = udiv i32 %204, %205
  %207 = lshr i32 %206, 1
  br label %212

208:                                              ; preds = %188
  %209 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %210 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  br label %212

212:                                              ; preds = %208, %201
  %213 = phi i32 [ %207, %201 ], [ %211, %208 ]
  %214 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %215 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %214, i32 0, i32 4
  %216 = load %struct.TYPE_2__*, %struct.TYPE_2__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 0
  store i32 %213, i32* %217, align 4
  br label %218

218:                                              ; preds = %212, %48
  br label %219

219:                                              ; preds = %218, %35
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %222 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %221, i32 0, i32 1
  store i32 %220, i32* %222, align 8
  %223 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %224 = load i32, i32* @CTYPE, align 4
  %225 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %226 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %229 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = shl i32 %227, %230
  %232 = call i32 @mci_writel(%struct.dw_mci* %223, i32 %224, i32 %231)
  ret void
}

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @mci_send_cmd(%struct.dw_mci_slot*, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_xaui_check_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_xaui_check_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i32, i32, i64, %struct.bgx* }
%struct.bgx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BGX_SPUX_INT = common dso_local global i32 0, align 4
@BGX_SPUX_BR_PMD_CRTL = common dso_local global i32 0, align 4
@BGX_SPUX_CONTROL1 = common dso_local global i32 0, align 4
@SPU_CTL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"BGX SPU reset not completed\0A\00", align 1
@BGX_MODE_10G_KR = common dso_local global i32 0, align 4
@BGX_MODE_XFI = common dso_local global i32 0, align 4
@BGX_MODE_40G_KR = common dso_local global i32 0, align 4
@BGX_MODE_XLAUI = common dso_local global i32 0, align 4
@BGX_SPUX_BR_STATUS1 = common dso_local global i32 0, align 4
@SPU_BR_STATUS_BLK_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"SPU_BR_STATUS_BLK_LOCK not completed\0A\00", align 1
@BGX_SPUX_BX_STATUS = common dso_local global i32 0, align 4
@SPU_BX_STATUS_RX_ALIGN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SPU_BX_STATUS_RX_ALIGN not completed\0A\00", align 1
@BGX_SPUX_STATUS2 = common dso_local global i32 0, align 4
@SPU_STATUS2_RCVFLT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Receive fault, retry training\0A\00", align 1
@BGX_SMUX_CTL = common dso_local global i32 0, align 4
@SMU_CTL_RX_IDLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"SMU RX not idle\0A\00", align 1
@SMU_CTL_TX_IDLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"SMU TX not idle\0A\00", align 1
@BGX_SMUX_RX_CTL = common dso_local global i32 0, align 4
@SMU_RX_CTL_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lmac*)* @bgx_xaui_check_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_xaui_check_link(%struct.lmac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lmac*, align 8
  %4 = alloca %struct.bgx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.lmac* %0, %struct.lmac** %3, align 8
  %8 = load %struct.lmac*, %struct.lmac** %3, align 8
  %9 = getelementptr inbounds %struct.lmac, %struct.lmac* %8, i32 0, i32 3
  %10 = load %struct.bgx*, %struct.bgx** %9, align 8
  store %struct.bgx* %10, %struct.bgx** %4, align 8
  %11 = load %struct.lmac*, %struct.lmac** %3, align 8
  %12 = getelementptr inbounds %struct.lmac, %struct.lmac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.lmac*, %struct.lmac** %3, align 8
  %15 = getelementptr inbounds %struct.lmac, %struct.lmac* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.lmac*, %struct.lmac** %3, align 8
  %18 = getelementptr inbounds %struct.lmac, %struct.lmac* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %1
  %22 = load %struct.bgx*, %struct.bgx** %4, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @BGX_SPUX_INT, align 4
  %25 = call i32 @bgx_reg_read(%struct.bgx* %22, i32 %23, i32 %24)
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = and i64 %27, 8192
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %21
  store i64 24576, i64* %7, align 8
  %31 = load %struct.bgx*, %struct.bgx** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @BGX_SPUX_INT, align 4
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @bgx_reg_write(%struct.bgx* %31, i32 %32, i32 %33, i64 %34)
  %36 = load %struct.bgx*, %struct.bgx** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %39 = call i32 @bgx_reg_read(%struct.bgx* %36, i32 %37, i32 %38)
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = or i64 %41, 1
  store i64 %42, i64* %7, align 8
  %43 = load %struct.bgx*, %struct.bgx** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @bgx_reg_write(%struct.bgx* %43, i32 %44, i32 %45, i64 %46)
  store i32 -1, i32* %2, align 4
  br label %209

48:                                               ; preds = %21
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.bgx*, %struct.bgx** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @BGX_SPUX_CONTROL1, align 4
  %53 = load i32, i32* @SPU_CTL_RESET, align 4
  %54 = call i64 @bgx_poll_reg(%struct.bgx* %50, i32 %51, i32 %52, i32 %53, i32 1)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %49
  %57 = load %struct.bgx*, %struct.bgx** %4, align 8
  %58 = getelementptr inbounds %struct.bgx, %struct.bgx* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @dev_err(i32* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %209

62:                                               ; preds = %49
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @BGX_MODE_10G_KR, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %78, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @BGX_MODE_XFI, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %78, label %70

70:                                               ; preds = %66
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* @BGX_MODE_40G_KR, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @BGX_MODE_XLAUI, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %92

78:                                               ; preds = %74, %70, %66, %62
  %79 = load %struct.bgx*, %struct.bgx** %4, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @BGX_SPUX_BR_STATUS1, align 4
  %82 = load i32, i32* @SPU_BR_STATUS_BLK_LOCK, align 4
  %83 = call i64 @bgx_poll_reg(%struct.bgx* %79, i32 %80, i32 %81, i32 %82, i32 0)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.bgx*, %struct.bgx** %4, align 8
  %87 = getelementptr inbounds %struct.bgx, %struct.bgx* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %209

91:                                               ; preds = %78
  br label %106

92:                                               ; preds = %74
  %93 = load %struct.bgx*, %struct.bgx** %4, align 8
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* @BGX_SPUX_BX_STATUS, align 4
  %96 = load i32, i32* @SPU_BX_STATUS_RX_ALIGN, align 4
  %97 = call i64 @bgx_poll_reg(%struct.bgx* %93, i32 %94, i32 %95, i32 %96, i32 0)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %92
  %100 = load %struct.bgx*, %struct.bgx** %4, align 8
  %101 = getelementptr inbounds %struct.bgx, %struct.bgx* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @dev_err(i32* %103, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %209

105:                                              ; preds = %92
  br label %106

106:                                              ; preds = %105, %91
  %107 = load %struct.bgx*, %struct.bgx** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32, i32* @BGX_SPUX_STATUS2, align 4
  %110 = call i32 @bgx_reg_read(%struct.bgx* %107, i32 %108, i32 %109)
  %111 = load i32, i32* @SPU_STATUS2_RCVFLT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %106
  %115 = load %struct.bgx*, %struct.bgx** %4, align 8
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @BGX_SPUX_STATUS2, align 4
  %118 = load i32, i32* @SPU_STATUS2_RCVFLT, align 4
  %119 = call i32 @bgx_reg_modify(%struct.bgx* %115, i32 %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %114, %106
  %121 = load %struct.bgx*, %struct.bgx** %4, align 8
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* @BGX_SPUX_STATUS2, align 4
  %124 = call i32 @bgx_reg_read(%struct.bgx* %121, i32 %122, i32 %123)
  %125 = load i32, i32* @SPU_STATUS2_RCVFLT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %167

128:                                              ; preds = %120
  %129 = load %struct.bgx*, %struct.bgx** %4, align 8
  %130 = getelementptr inbounds %struct.bgx, %struct.bgx* %129, i32 0, i32 0
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = call i32 @dev_err(i32* %132, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %134 = load %struct.lmac*, %struct.lmac** %3, align 8
  %135 = getelementptr inbounds %struct.lmac, %struct.lmac* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %166

138:                                              ; preds = %128
  %139 = load %struct.bgx*, %struct.bgx** %4, align 8
  %140 = load i32, i32* %5, align 4
  %141 = load i32, i32* @BGX_SPUX_INT, align 4
  %142 = call i32 @bgx_reg_read(%struct.bgx* %139, i32 %140, i32 %141)
  %143 = sext i32 %142 to i64
  store i64 %143, i64* %7, align 8
  %144 = load i64, i64* %7, align 8
  %145 = and i64 %144, 8192
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %165, label %147

147:                                              ; preds = %138
  store i64 24576, i64* %7, align 8
  %148 = load %struct.bgx*, %struct.bgx** %4, align 8
  %149 = load i32, i32* %5, align 4
  %150 = load i32, i32* @BGX_SPUX_INT, align 4
  %151 = load i64, i64* %7, align 8
  %152 = call i32 @bgx_reg_write(%struct.bgx* %148, i32 %149, i32 %150, i64 %151)
  %153 = load %struct.bgx*, %struct.bgx** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %156 = call i32 @bgx_reg_read(%struct.bgx* %153, i32 %154, i32 %155)
  %157 = sext i32 %156 to i64
  store i64 %157, i64* %7, align 8
  %158 = load i64, i64* %7, align 8
  %159 = or i64 %158, 1
  store i64 %159, i64* %7, align 8
  %160 = load %struct.bgx*, %struct.bgx** %4, align 8
  %161 = load i32, i32* %5, align 4
  %162 = load i32, i32* @BGX_SPUX_BR_PMD_CRTL, align 4
  %163 = load i64, i64* %7, align 8
  %164 = call i32 @bgx_reg_write(%struct.bgx* %160, i32 %161, i32 %162, i64 %163)
  store i32 -1, i32* %2, align 4
  br label %209

165:                                              ; preds = %138
  br label %166

166:                                              ; preds = %165, %128
  store i32 -1, i32* %2, align 4
  br label %209

167:                                              ; preds = %120
  %168 = load %struct.bgx*, %struct.bgx** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @BGX_SMUX_CTL, align 4
  %171 = load i32, i32* @SMU_CTL_RX_IDLE, align 4
  %172 = call i64 @bgx_poll_reg(%struct.bgx* %168, i32 %169, i32 %170, i32 %171, i32 0)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %167
  %175 = load %struct.bgx*, %struct.bgx** %4, align 8
  %176 = getelementptr inbounds %struct.bgx, %struct.bgx* %175, i32 0, i32 0
  %177 = load %struct.TYPE_2__*, %struct.TYPE_2__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %177, i32 0, i32 0
  %179 = call i32 @dev_err(i32* %178, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %209

180:                                              ; preds = %167
  %181 = load %struct.bgx*, %struct.bgx** %4, align 8
  %182 = load i32, i32* %5, align 4
  %183 = load i32, i32* @BGX_SMUX_CTL, align 4
  %184 = load i32, i32* @SMU_CTL_TX_IDLE, align 4
  %185 = call i64 @bgx_poll_reg(%struct.bgx* %181, i32 %182, i32 %183, i32 %184, i32 0)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %193

187:                                              ; preds = %180
  %188 = load %struct.bgx*, %struct.bgx** %4, align 8
  %189 = getelementptr inbounds %struct.bgx, %struct.bgx* %188, i32 0, i32 0
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = call i32 @dev_err(i32* %191, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %209

193:                                              ; preds = %180
  %194 = load %struct.bgx*, %struct.bgx** %4, align 8
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @BGX_SMUX_RX_CTL, align 4
  %197 = call i32 @bgx_reg_read(%struct.bgx* %194, i32 %195, i32 %196)
  %198 = sext i32 %197 to i64
  store i64 %198, i64* %7, align 8
  %199 = load i64, i64* @SMU_RX_CTL_STATUS, align 8
  %200 = load i64, i64* %7, align 8
  %201 = and i64 %200, %199
  store i64 %201, i64* %7, align 8
  %202 = load i64, i64* %7, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %193
  store i32 0, i32* %2, align 4
  br label %209

205:                                              ; preds = %193
  %206 = load %struct.bgx*, %struct.bgx** %4, align 8
  %207 = load %struct.lmac*, %struct.lmac** %3, align 8
  %208 = call i32 @bgx_lmac_xaui_init(%struct.bgx* %206, %struct.lmac* %207)
  store i32 -1, i32* %2, align 4
  br label %209

209:                                              ; preds = %205, %204, %187, %174, %166, %147, %99, %85, %56, %30
  %210 = load i32, i32* %2, align 4
  ret i32 %210
}

declare dso_local i32 @bgx_reg_read(%struct.bgx*, i32, i32) #1

declare dso_local i32 @bgx_reg_write(%struct.bgx*, i32, i32, i64) #1

declare dso_local i64 @bgx_poll_reg(%struct.bgx*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @bgx_reg_modify(%struct.bgx*, i32, i32, i32) #1

declare dso_local i32 @bgx_lmac_xaui_init(%struct.bgx*, %struct.lmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

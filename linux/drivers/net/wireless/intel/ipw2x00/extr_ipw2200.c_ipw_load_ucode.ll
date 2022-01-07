; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_load_ucode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_load_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@IPW_SHARED_LOWER_BOUND = common dso_local global i32 0, align 4
@IPW_REGISTER_DOMAIN1_END = common dso_local global i32 0, align 4
@IPW_MEM_HALT_AND_RESET = common dso_local global i32 0, align 4
@IPW_BIT_HALT_RESET_ON = common dso_local global i32 0, align 4
@IPW_BIT_HALT_RESET_OFF = common dso_local global i32 0, align 4
@IPW_INTERNAL_CMD_EVENT = common dso_local global i32 0, align 4
@IPW_BASEBAND_POWER_DOWN = common dso_local global i32 0, align 4
@IPW_BASEBAND_CONTROL_STATUS = common dso_local global i32 0, align 4
@DINO_ENABLE_CS = common dso_local global i32 0, align 4
@IPW_BASEBAND_CONTROL_STORE = common dso_local global i32 0, align 4
@DINO_ENABLE_SYSTEM = common dso_local global i32 0, align 4
@DINO_RXFIFO_DATA = common dso_local global i32 0, align 4
@IPW_BASEBAND_RX_FIFO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Microcode OK, rev. %d (0x%x) dev. %d (0x%x) of %02d/%02d/%02d %02d:%02d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Microcode is not alive\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"No alive response from DINO\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*, i32*, i64)* @ipw_load_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_load_ucode(%struct.ipw_priv* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca [6 x i32], align 16
  store %struct.ipw_priv* %0, %struct.ipw_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32*, i32** %6, align 8
  store i32* %14, i32** %12, align 8
  %15 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %17 = call i32 @ipw_stop_master(%struct.ipw_priv* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %211

22:                                               ; preds = %3
  %23 = load i32, i32* @IPW_SHARED_LOWER_BOUND, align 4
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %32, %22
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* @IPW_REGISTER_DOMAIN1_END, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @ipw_write32(%struct.ipw_priv* %29, i32 %30, i32 0)
  br label %32

32:                                               ; preds = %28
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 4
  store i32 %34, i32* %10, align 4
  br label %24

35:                                               ; preds = %24
  %36 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %37 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %36, i32 0, i32 0
  %38 = call i32 @memset(%struct.TYPE_3__* %37, i32 0, i32 24)
  %39 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %40 = load i32, i32* @IPW_MEM_HALT_AND_RESET, align 4
  %41 = load i32, i32* @IPW_BIT_HALT_RESET_ON, align 4
  %42 = call i32 @ipw_write_reg32(%struct.ipw_priv* %39, i32 %40, i32 %41)
  %43 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %44 = call i32 @ipw_arc_release(%struct.ipw_priv* %43)
  %45 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %46 = load i32, i32* @IPW_MEM_HALT_AND_RESET, align 4
  %47 = load i32, i32* @IPW_BIT_HALT_RESET_OFF, align 4
  %48 = call i32 @ipw_write_reg32(%struct.ipw_priv* %45, i32 %46, i32 %47)
  %49 = call i32 @mdelay(i32 1)
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %51 = load i32, i32* @IPW_INTERNAL_CMD_EVENT, align 4
  %52 = load i32, i32* @IPW_BASEBAND_POWER_DOWN, align 4
  %53 = call i32 @ipw_write_reg32(%struct.ipw_priv* %50, i32 %51, i32 %52)
  %54 = call i32 @mdelay(i32 1)
  %55 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %56 = load i32, i32* @IPW_INTERNAL_CMD_EVENT, align 4
  %57 = call i32 @ipw_write_reg32(%struct.ipw_priv* %55, i32 %56, i32 0)
  %58 = call i32 @mdelay(i32 1)
  %59 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %60 = load i32, i32* @IPW_BASEBAND_CONTROL_STATUS, align 4
  %61 = call i32 @ipw_write_reg8(%struct.ipw_priv* %59, i32 %60, i32 0)
  %62 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %63 = load i32, i32* @IPW_BASEBAND_CONTROL_STATUS, align 4
  %64 = load i32, i32* @DINO_ENABLE_CS, align 4
  %65 = call i32 @ipw_write_reg8(%struct.ipw_priv* %62, i32 %63, i32 %64)
  %66 = call i32 @mdelay(i32 1)
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %83, %35
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %7, align 8
  %71 = udiv i64 %70, 2
  %72 = icmp ult i64 %69, %71
  br i1 %72, label %73, label %86

73:                                               ; preds = %67
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %75 = load i32, i32* @IPW_BASEBAND_CONTROL_STORE, align 4
  %76 = load i32*, i32** %12, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @le16_to_cpu(i32 %80)
  %82 = call i32 @ipw_write_reg16(%struct.ipw_priv* %74, i32 %75, i32 %81)
  br label %83

83:                                               ; preds = %73
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %88 = load i32, i32* @IPW_BASEBAND_CONTROL_STATUS, align 4
  %89 = call i32 @ipw_write_reg8(%struct.ipw_priv* %87, i32 %88, i32 0)
  %90 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %91 = load i32, i32* @IPW_BASEBAND_CONTROL_STATUS, align 4
  %92 = load i32, i32* @DINO_ENABLE_SYSTEM, align 4
  %93 = call i32 @ipw_write_reg8(%struct.ipw_priv* %90, i32 %91, i32 %92)
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %108, %86
  %95 = load i32, i32* %9, align 4
  %96 = icmp slt i32 %95, 100
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %99 = load i32, i32* @IPW_BASEBAND_CONTROL_STATUS, align 4
  %100 = call i32 @ipw_read_reg8(%struct.ipw_priv* %98, i32 %99)
  store i32 %100, i32* %11, align 4
  %101 = load i32, i32* %11, align 4
  %102 = load i32, i32* @DINO_RXFIFO_DATA, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %111

106:                                              ; preds = %97
  %107 = call i32 @mdelay(i32 1)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %9, align 4
  br label %94

111:                                              ; preds = %105, %94
  %112 = load i32, i32* %11, align 4
  %113 = load i32, i32* @DINO_RXFIFO_DATA, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %202

116:                                              ; preds = %111
  store i32 0, i32* %9, align 4
  br label %117

117:                                              ; preds = %130, %116
  %118 = load i32, i32* %9, align 4
  %119 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %120 = call i32 @ARRAY_SIZE(i32* %119)
  %121 = icmp slt i32 %118, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %117
  %123 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %124 = load i32, i32* @IPW_BASEBAND_RX_FIFO_READ, align 4
  %125 = call i32 @ipw_read_reg32(%struct.ipw_priv* %123, i32 %124)
  %126 = call i32 @cpu_to_le32(i32 %125)
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 %128
  store i32 %126, i32* %129, align 4
  br label %130

130:                                              ; preds = %122
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  br label %117

133:                                              ; preds = %117
  %134 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %135 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds [6 x i32], [6 x i32]* %13, i64 0, i64 0
  %137 = call i32 @memcpy(%struct.TYPE_3__* %135, i32* %136, i32 24)
  %138 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %139 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %143, label %197

143:                                              ; preds = %133
  %144 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %145 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %149, label %197

149:                                              ; preds = %143
  store i32 0, i32* %8, align 4
  %150 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %151 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %155 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %159 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %163 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %167 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %173 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 2
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %179 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %185 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 2
  %187 = load i32*, i32** %186, align 8
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %191 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %153, i32 %157, i32 %161, i32 %165, i32 %171, i32 %177, i32 %183, i32 %189, i32 %195)
  br label %201

197:                                              ; preds = %143, %133
  %198 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %197, %149
  br label %206

202:                                              ; preds = %111
  %203 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %204 = load i32, i32* @ETIME, align 4
  %205 = sub nsw i32 0, %204
  store i32 %205, i32* %8, align 4
  br label %206

206:                                              ; preds = %202, %201
  %207 = load %struct.ipw_priv*, %struct.ipw_priv** %5, align 8
  %208 = load i32, i32* @IPW_BASEBAND_CONTROL_STATUS, align 4
  %209 = call i32 @ipw_write_reg8(%struct.ipw_priv* %207, i32 %208, i32 0)
  %210 = load i32, i32* %8, align 4
  store i32 %210, i32* %4, align 4
  br label %211

211:                                              ; preds = %206, %20
  %212 = load i32, i32* %4, align 4
  ret i32 %212
}

declare dso_local i32 @IPW_DEBUG_TRACE(i8*) #1

declare dso_local i32 @ipw_stop_master(%struct.ipw_priv*) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @ipw_write_reg32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_arc_release(%struct.ipw_priv*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @ipw_write_reg8(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_write_reg16(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ipw_read_reg8(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ipw_read_reg32(%struct.ipw_priv*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i32*, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.jmb38x_ms_host = type { i32, %struct.TYPE_3__*, i64, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@HOST_CONTROL = common dso_local global i64 0, align 8
@CLOCK_CONTROL_BY_MMIO = common dso_local global i32 0, align 4
@MEMSTICK_POWER_ON = common dso_local global i32 0, align 4
@HOST_CONTROL_POWER_EN = common dso_local global i32 0, align 4
@HOST_CONTROL_CLOCK_EN = common dso_local global i32 0, align 4
@PAD_PU_PD_ON_MS_SOCK1 = common dso_local global i32 0, align 4
@PAD_PU_PD_ON_MS_SOCK0 = common dso_local global i32 0, align 4
@PAD_PU_PD = common dso_local global i64 0, align 8
@PAD_OUTPUT_ENABLE_MS = common dso_local global i32 0, align 4
@PAD_OUTPUT_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"power on\0A\00", align 1
@MEMSTICK_POWER_OFF = common dso_local global i32 0, align 4
@PAD_PU_PD_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"power off\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Set Host Interface Mode to %d\0A\00", align 1
@HOST_CONTROL_FAST_CLK = common dso_local global i32 0, align 4
@HOST_CONTROL_REI = common dso_local global i32 0, align 4
@HOST_CONTROL_REO = common dso_local global i32 0, align 4
@HOST_CONTROL_TDELAY_EN = common dso_local global i32 0, align 4
@HOST_CONTROL_HW_OC_P = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_SHIFT = common dso_local global i32 0, align 4
@MEMSTICK_SERIAL = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_SERIAL = common dso_local global i32 0, align 4
@CLOCK_CONTROL_40MHZ = common dso_local global i32 0, align 4
@MEMSTICK_PAR4 = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_PAR4 = common dso_local global i32 0, align 4
@MEMSTICK_PAR8 = common dso_local global i32 0, align 4
@HOST_CONTROL_IF_PAR8 = common dso_local global i32 0, align 4
@CLOCK_CONTROL_50MHZ = common dso_local global i32 0, align 4
@CLOCK_CONTROL_OFF = common dso_local global i32 0, align 4
@CLOCK_CONTROL = common dso_local global i64 0, align 8
@PCI_CTL_CLOCK_DLY_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.memstick_host*, i32, i32)* @jmb38x_ms_set_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_set_param(%struct.memstick_host* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.memstick_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.jmb38x_ms_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.memstick_host* %0, %struct.memstick_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.memstick_host*, %struct.memstick_host** %5, align 8
  %14 = call %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host* %13)
  store %struct.jmb38x_ms_host* %14, %struct.jmb38x_ms_host** %8, align 8
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOST_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @CLOCK_CONTROL_BY_MMIO, align 4
  store i32 %21, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %237 [
    i32 128, label %23
    i32 129, label %121
  ]

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MEMSTICK_POWER_ON, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %78

27:                                               ; preds = %23
  %28 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %29 = call i32 @jmb38x_ms_reset(%struct.jmb38x_ms_host* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %4, align 4
  br label %238

34:                                               ; preds = %27
  store i32 7, i32* %9, align 4
  %35 = load i32, i32* @HOST_CONTROL_POWER_EN, align 4
  %36 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %42 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @HOST_CONTROL, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 %40, i64 %45)
  %47 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %48 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %34
  %52 = load i32, i32* @PAD_PU_PD_ON_MS_SOCK1, align 4
  br label %55

53:                                               ; preds = %34
  %54 = load i32, i32* @PAD_PU_PD_ON_MS_SOCK0, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %58 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PAD_PU_PD, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load i32, i32* @PAD_OUTPUT_ENABLE_MS, align 4
  %64 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %65 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @PAD_OUTPUT_ENABLE, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel(i32 %63, i64 %68)
  %70 = call i32 @msleep(i32 10)
  %71 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %72 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %71, i32 0, i32 1
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %120

78:                                               ; preds = %23
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MEMSTICK_POWER_OFF, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %116

82:                                               ; preds = %78
  %83 = load i32, i32* @HOST_CONTROL_POWER_EN, align 4
  %84 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %91 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @HOST_CONTROL, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @writel(i32 %89, i64 %94)
  %96 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %97 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @PAD_OUTPUT_ENABLE, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 0, i64 %100)
  %102 = load i32, i32* @PAD_PU_PD_OFF, align 4
  %103 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %104 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @PAD_PU_PD, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %110 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %114, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %119

116:                                              ; preds = %78
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %4, align 4
  br label %238

119:                                              ; preds = %82
  br label %120

120:                                              ; preds = %119, %55
  br label %237

121:                                              ; preds = %3
  %122 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %123 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %122, i32 0, i32 1
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = load i32, i32* %7, align 4
  %129 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %127, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @HOST_CONTROL_FAST_CLK, align 4
  %131 = load i32, i32* @HOST_CONTROL_REI, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @HOST_CONTROL_REO, align 4
  %134 = or i32 %132, %133
  %135 = xor i32 %134, -1
  %136 = load i32, i32* %9, align 4
  %137 = and i32 %136, %135
  store i32 %137, i32* %9, align 4
  %138 = load i32, i32* @HOST_CONTROL_TDELAY_EN, align 4
  %139 = load i32, i32* @HOST_CONTROL_HW_OC_P, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* %9, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %9, align 4
  %143 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %144 = shl i32 3, %143
  %145 = xor i32 %144, -1
  %146 = load i32, i32* %9, align 4
  %147 = and i32 %146, %145
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @MEMSTICK_SERIAL, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %163

151:                                              ; preds = %121
  %152 = load i32, i32* @HOST_CONTROL_IF_SERIAL, align 4
  %153 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %154 = shl i32 %152, %153
  %155 = load i32, i32* %9, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %9, align 4
  %157 = load i32, i32* @HOST_CONTROL_REI, align 4
  %158 = load i32, i32* %9, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %9, align 4
  %160 = load i32, i32* @CLOCK_CONTROL_40MHZ, align 4
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %203

163:                                              ; preds = %121
  %164 = load i32, i32* %7, align 4
  %165 = load i32, i32* @MEMSTICK_PAR4, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %182

167:                                              ; preds = %163
  %168 = load i32, i32* @HOST_CONTROL_FAST_CLK, align 4
  %169 = load i32, i32* %9, align 4
  %170 = or i32 %169, %168
  store i32 %170, i32* %9, align 4
  %171 = load i32, i32* @HOST_CONTROL_IF_PAR4, align 4
  %172 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %173 = shl i32 %171, %172
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %9, align 4
  %176 = load i32, i32* @HOST_CONTROL_REO, align 4
  %177 = load i32, i32* %9, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %9, align 4
  %179 = load i32, i32* @CLOCK_CONTROL_40MHZ, align 4
  %180 = load i32, i32* %10, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %10, align 4
  store i32 4, i32* %11, align 4
  br label %202

182:                                              ; preds = %163
  %183 = load i32, i32* %7, align 4
  %184 = load i32, i32* @MEMSTICK_PAR8, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %198

186:                                              ; preds = %182
  %187 = load i32, i32* @HOST_CONTROL_FAST_CLK, align 4
  %188 = load i32, i32* %9, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %9, align 4
  %190 = load i32, i32* @HOST_CONTROL_IF_PAR8, align 4
  %191 = load i32, i32* @HOST_CONTROL_IF_SHIFT, align 4
  %192 = shl i32 %190, %191
  %193 = load i32, i32* %9, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %9, align 4
  %195 = load i32, i32* @CLOCK_CONTROL_50MHZ, align 4
  %196 = load i32, i32* %10, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %201

198:                                              ; preds = %182
  %199 = load i32, i32* @EINVAL, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %4, align 4
  br label %238

201:                                              ; preds = %186
  br label %202

202:                                              ; preds = %201, %167
  br label %203

203:                                              ; preds = %202, %151
  %204 = load i32, i32* %9, align 4
  %205 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %206 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @HOST_CONTROL, align 8
  %209 = add nsw i64 %207, %208
  %210 = call i32 @writel(i32 %204, i64 %209)
  %211 = load i32, i32* @CLOCK_CONTROL_OFF, align 4
  %212 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %213 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @CLOCK_CONTROL, align 8
  %216 = add nsw i64 %214, %215
  %217 = call i32 @writel(i32 %211, i64 %216)
  %218 = load i32, i32* %10, align 4
  %219 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %220 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %219, i32 0, i32 2
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @CLOCK_CONTROL, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @writel(i32 %218, i64 %223)
  %225 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %226 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %225, i32 0, i32 1
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_4__*, %struct.TYPE_4__** %228, align 8
  %230 = load i32, i32* @PCI_CTL_CLOCK_DLY_ADDR, align 4
  %231 = add nsw i32 %230, 1
  %232 = load i32, i32* %11, align 4
  %233 = call i32 @pci_write_config_byte(%struct.TYPE_4__* %229, i32 %231, i32 %232)
  %234 = load i32, i32* %7, align 4
  %235 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %8, align 8
  %236 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %235, i32 0, i32 0
  store i32 %234, i32* %236, align 8
  br label %237

237:                                              ; preds = %3, %203, %120
  store i32 0, i32* %4, align 4
  br label %238

238:                                              ; preds = %237, %198, %116, %32
  %239 = load i32, i32* %4, align 4
  ret i32 %239
}

declare dso_local %struct.jmb38x_ms_host* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @jmb38x_ms_reset(%struct.jmb38x_ms_host*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_4__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

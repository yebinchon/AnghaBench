; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { i32, i64, i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i64 0, align 8
@SD_EMMC_IRQ_EN = common dso_local global i64 0, align 8
@SD_EMMC_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Unexpected IRQ! irq_en 0x%08x - status 0x%08x\0A\00", align 1
@IRQ_CRC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"CRC Error - status 0x%08x\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i64 0, align 8
@IRQ_TIMEOUTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Timeout - status 0x%08x\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@IRQ_SDIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"IRQ: SDIO TODO.\0A\00", align 1
@IRQ_HANDLED = common dso_local global i64 0, align 8
@IRQ_END_OF_CHAIN = common dso_local global i32 0, align 4
@IRQ_RESP_STATUS = common dso_local global i32 0, align 4
@SD_EMMC_START = common dso_local global i64 0, align 8
@START_DESC_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @meson_mmc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @meson_mmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.meson_host*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.meson_host*
  store %struct.meson_host* %15, %struct.meson_host** %6, align 8
  %16 = load i64, i64* @IRQ_NONE, align 8
  store i64 %16, i64* %12, align 8
  %17 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %18 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SD_EMMC_IRQ_EN, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %24 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SD_EMMC_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %2
  %35 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %36 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %11, align 4
  %40 = call i32 (i32, i8*, ...) @dev_dbg(i32 %37, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i64, i64* @IRQ_NONE, align 8
  store i64 %41, i64* %3, align 8
  br label %199

42:                                               ; preds = %2
  %43 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %44 = icmp ne %struct.meson_host* %43, null
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i64 @WARN_ON(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %51 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %50, i32 0, i32 3
  %52 = load %struct.mmc_command*, %struct.mmc_command** %51, align 8
  %53 = icmp ne %struct.mmc_command* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @WARN_ON(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49, %42
  %59 = load i64, i64* @IRQ_NONE, align 8
  store i64 %59, i64* %3, align 8
  br label %199

60:                                               ; preds = %49
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %63 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @SD_EMMC_STATUS, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %69 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %68, i32 0, i32 3
  %70 = load %struct.mmc_command*, %struct.mmc_command** %69, align 8
  store %struct.mmc_command* %70, %struct.mmc_command** %7, align 8
  %71 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %71, i32 0, i32 2
  %73 = load %struct.mmc_data*, %struct.mmc_data** %72, align 8
  store %struct.mmc_data* %73, %struct.mmc_data** %8, align 8
  %74 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @IRQ_CRC_ERR, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %60
  %81 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %82 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = call i32 (i32, i8*, ...) @dev_dbg(i32 %83, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* @EILSEQ, align 4
  %87 = sub nsw i32 0, %86
  %88 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %89 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %90, i64* %12, align 8
  br label %162

91:                                               ; preds = %60
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @IRQ_TIMEOUTS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %107

96:                                               ; preds = %91
  %97 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %98 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i32, i8*, ...) @dev_dbg(i32 %99, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* @ETIMEDOUT, align 4
  %103 = sub nsw i32 0, %102
  %104 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %105 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %106, i64* %12, align 8
  br label %162

107:                                              ; preds = %91
  %108 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %109 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %112 = call i32 @meson_mmc_read_resp(i32 %110, %struct.mmc_command* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @IRQ_SDIO, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %107
  %118 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %119 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 (i32, i8*, ...) @dev_dbg(i32 %120, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %122 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %122, i64* %12, align 8
  br label %123

123:                                              ; preds = %117, %107
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @IRQ_END_OF_CHAIN, align 4
  %126 = load i32, i32* @IRQ_RESP_STATUS, align 4
  %127 = or i32 %125, %126
  %128 = and i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %161

130:                                              ; preds = %123
  %131 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %132 = icmp ne %struct.mmc_data* %131, null
  br i1 %132, label %133, label %148

133:                                              ; preds = %130
  %134 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %135 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %133
  %139 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %140 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %143 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = mul nsw i32 %141, %144
  %146 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %147 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %138, %133, %130
  %149 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %150 = call i64 @meson_mmc_bounce_buf_read(%struct.mmc_data* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %154 = call i64 @meson_mmc_get_next_command(%struct.mmc_command* %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152, %148
  %157 = load i64, i64* @IRQ_WAKE_THREAD, align 8
  store i64 %157, i64* %12, align 8
  br label %160

158:                                              ; preds = %152
  %159 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %158, %156
  br label %161

161:                                              ; preds = %160, %123
  br label %162

162:                                              ; preds = %161, %96, %80
  %163 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %164 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %162
  %168 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %169 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SD_EMMC_START, align 8
  %172 = add nsw i64 %170, %171
  %173 = call i32 @readl(i64 %172)
  store i32 %173, i32* %13, align 4
  %174 = load i32, i32* @START_DESC_BUSY, align 4
  %175 = xor i32 %174, -1
  %176 = load i32, i32* %13, align 4
  %177 = and i32 %176, %175
  store i32 %177, i32* %13, align 4
  %178 = load i32, i32* %13, align 4
  %179 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %180 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @SD_EMMC_START, align 8
  %183 = add nsw i64 %181, %182
  %184 = call i32 @writel(i32 %178, i64 %183)
  br label %185

185:                                              ; preds = %167, %162
  %186 = load i64, i64* %12, align 8
  %187 = load i64, i64* @IRQ_HANDLED, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %185
  %190 = load %struct.meson_host*, %struct.meson_host** %6, align 8
  %191 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %194 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @meson_mmc_request_done(i32 %192, i32 %195)
  br label %197

197:                                              ; preds = %189, %185
  %198 = load i64, i64* %12, align 8
  store i64 %198, i64* %3, align 8
  br label %199

199:                                              ; preds = %197, %58, %34
  %200 = load i64, i64* %3, align 8
  ret i64 %200
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_mmc_read_resp(i32, %struct.mmc_command*) #1

declare dso_local i64 @meson_mmc_bounce_buf_read(%struct.mmc_data*) #1

declare dso_local i64 @meson_mmc_get_next_command(%struct.mmc_command*) #1

declare dso_local i32 @meson_mmc_request_done(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

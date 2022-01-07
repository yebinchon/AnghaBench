; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_start_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-mx-sdio.c_meson_mx_mmc_start_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.mmc_command = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }
%struct.meson_mx_mmc_host = type { i32, i32, i32, i64, %struct.mmc_command* }

@MESON_MX_SDIO_SEND_CMD_RESP_BITS_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_RESP_CRC7_FROM_8 = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_RESP_WITHOUT_CRC7 = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_CHECK_DAT0_BUSY = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@MESON_MX_SDIO_RESPONSE_CRC16_BITS = common dso_local global i32 0, align 4
@MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_DATA = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_RESP_HAS_DATA = common dso_local global i32 0, align 4
@MESON_MX_SDIO_SEND_COMMAND_INDEX_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_MULT = common dso_local global i64 0, align 8
@MESON_MX_SDIO_MULT_PORT_SEL_MASK = common dso_local global i32 0, align 4
@MESON_MX_SDIO_IRQC = common dso_local global i32 0, align 4
@MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN = common dso_local global i32 0, align 4
@MESON_MX_SDIO_IRQS = common dso_local global i32 0, align 4
@MESON_MX_SDIO_IRQS_CMD_INT = common dso_local global i32 0, align 4
@MESON_MX_SDIO_ARGU = common dso_local global i64 0, align 8
@MESON_MX_SDIO_EXT = common dso_local global i64 0, align 8
@MESON_MX_SDIO_SEND = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_command*)* @meson_mx_mmc_start_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mx_mmc_start_cmd(%struct.mmc_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.meson_mx_mmc_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = call %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host* %12)
  store %struct.meson_mx_mmc_host* %13, %struct.meson_mx_mmc_host** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %15 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %15, i32 0, i32 4
  store %struct.mmc_command* %14, %struct.mmc_command** %16, align 8
  %17 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @msecs_to_jiffies(i32 %24)
  store i64 %25, i64* %8, align 8
  br label %28

26:                                               ; preds = %2
  %27 = call i64 @msecs_to_jiffies(i32 1000)
  store i64 %27, i64* %8, align 8
  br label %28

28:                                               ; preds = %26, %21
  %29 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %30 = call i32 @mmc_resp_type(%struct.mmc_command* %29)
  switch i32 %30, label %44 [
    i32 131, label %31
    i32 130, label %31
    i32 128, label %31
    i32 129, label %36
  ]

31:                                               ; preds = %28, %28, %28
  %32 = load i32, i32* @MESON_MX_SDIO_SEND_CMD_RESP_BITS_MASK, align 4
  %33 = call i32 @FIELD_PREP(i32 %32, i32 45)
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  br label %45

36:                                               ; preds = %28
  %37 = load i32, i32* @MESON_MX_SDIO_SEND_CMD_RESP_BITS_MASK, align 4
  %38 = call i32 @FIELD_PREP(i32 %37, i32 133)
  %39 = load i32, i32* %10, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @MESON_MX_SDIO_SEND_RESP_CRC7_FROM_8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %45

44:                                               ; preds = %28
  br label %45

45:                                               ; preds = %44, %36, %31
  %46 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %47 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MMC_RSP_CRC, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @MESON_MX_SDIO_SEND_RESP_WITHOUT_CRC7, align 4
  %54 = load i32, i32* %10, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MMC_RSP_BUSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @MESON_MX_SDIO_SEND_CHECK_DAT0_BUSY, align 4
  %65 = load i32, i32* %10, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %56
  %68 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 4
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = icmp ne %struct.TYPE_4__* %70, null
  br i1 %71, label %72, label %133

72:                                               ; preds = %67
  %73 = load i32, i32* @MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK, align 4
  %74 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %74, i32 0, i32 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %78, 1
  %80 = call i32 @FIELD_PREP(i32 %73, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BITS_PER_BYTE, align 4
  %89 = mul i32 %87, %88
  store i32 %89, i32* %6, align 4
  %90 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %91 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %72
  %97 = load i32, i32* @MESON_MX_SDIO_RESPONSE_CRC16_BITS, align 4
  %98 = mul nsw i32 %97, 4
  %99 = load i32, i32* %6, align 4
  %100 = add i32 %99, %98
  store i32 %100, i32* %6, align 4
  br label %106

101:                                              ; preds = %72
  %102 = load i32, i32* @MESON_MX_SDIO_RESPONSE_CRC16_BITS, align 4
  %103 = mul nsw i32 %102, 1
  %104 = load i32, i32* %6, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %101, %96
  %107 = load i32, i32* @MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @FIELD_PREP(i32 %107, i32 %108)
  %110 = load i32, i32* %11, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %11, align 4
  %112 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %113 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %112, i32 0, i32 4
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MMC_DATA_WRITE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %106
  %121 = load i32, i32* @MESON_MX_SDIO_SEND_DATA, align 4
  %122 = load i32, i32* %10, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %10, align 4
  br label %128

124:                                              ; preds = %106
  %125 = load i32, i32* @MESON_MX_SDIO_SEND_RESP_HAS_DATA, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %130 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %129, i32 0, i32 4
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %128, %67
  %134 = load i32, i32* @MESON_MX_SDIO_SEND_COMMAND_INDEX_MASK, align 4
  %135 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %136 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = or i32 64, %137
  %139 = call i32 @FIELD_PREP(i32 %134, i32 %138)
  %140 = load i32, i32* %10, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %10, align 4
  %142 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %143 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %142, i32 0, i32 2
  %144 = load i64, i64* %7, align 8
  %145 = call i32 @spin_lock_irqsave(i32* %143, i64 %144)
  %146 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %147 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @MESON_MX_SDIO_MULT, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i32 @readl(i64 %150)
  store i32 %151, i32* %9, align 4
  %152 = load i32, i32* @MESON_MX_SDIO_MULT_PORT_SEL_MASK, align 4
  %153 = xor i32 %152, -1
  %154 = load i32, i32* %9, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* @MESON_MX_SDIO_MULT_PORT_SEL_MASK, align 4
  %157 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %158 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 @FIELD_PREP(i32 %156, i32 %159)
  %161 = load i32, i32* %9, align 4
  %162 = or i32 %161, %160
  store i32 %162, i32* %9, align 4
  %163 = call i32 @BIT(i32 31)
  %164 = load i32, i32* %9, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %9, align 4
  %166 = load i32, i32* %9, align 4
  %167 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %168 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %167, i32 0, i32 3
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @MESON_MX_SDIO_MULT, align 8
  %171 = add nsw i64 %169, %170
  %172 = call i32 @writel(i32 %166, i64 %171)
  %173 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %174 = load i32, i32* @MESON_MX_SDIO_IRQC, align 4
  %175 = load i32, i32* @MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN, align 4
  %176 = load i32, i32* @MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN, align 4
  %177 = call i32 @meson_mx_mmc_mask_bits(%struct.mmc_host* %173, i32 %174, i32 %175, i32 %176)
  %178 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %179 = load i32, i32* @MESON_MX_SDIO_IRQS, align 4
  %180 = load i32, i32* @MESON_MX_SDIO_IRQS_CMD_INT, align 4
  %181 = load i32, i32* @MESON_MX_SDIO_IRQS_CMD_INT, align 4
  %182 = call i32 @meson_mx_mmc_mask_bits(%struct.mmc_host* %178, i32 %179, i32 %180, i32 %181)
  %183 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %184 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %187 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = load i64, i64* @MESON_MX_SDIO_ARGU, align 8
  %190 = add nsw i64 %188, %189
  %191 = call i32 @writel(i32 %185, i64 %190)
  %192 = load i32, i32* %11, align 4
  %193 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %194 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @MESON_MX_SDIO_EXT, align 8
  %197 = add nsw i64 %195, %196
  %198 = call i32 @writel(i32 %192, i64 %197)
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %201 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @MESON_MX_SDIO_SEND, align 8
  %204 = add nsw i64 %202, %203
  %205 = call i32 @writel(i32 %199, i64 %204)
  %206 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %207 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %206, i32 0, i32 2
  %208 = load i64, i64* %7, align 8
  %209 = call i32 @spin_unlock_irqrestore(i32* %207, i64 %208)
  %210 = load %struct.meson_mx_mmc_host*, %struct.meson_mx_mmc_host** %5, align 8
  %211 = getelementptr inbounds %struct.meson_mx_mmc_host, %struct.meson_mx_mmc_host* %210, i32 0, i32 1
  %212 = load i64, i64* @jiffies, align 8
  %213 = load i64, i64* %8, align 8
  %214 = add i64 %212, %213
  %215 = call i32 @mod_timer(i32* %211, i64 %214)
  ret void
}

declare dso_local %struct.meson_mx_mmc_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @mmc_resp_type(%struct.mmc_command*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @meson_mx_mmc_mask_bits(%struct.mmc_host*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_sdio.c_ath10k_sdio_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_sdio = type { %struct.TYPE_2__, %struct.sdio_func* }
%struct.TYPE_2__ = type { i32 }
%struct.sdio_func = type { i32, i32 }

@ATH10K_DBG_BOOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"sdio configuration\0A\00", align 1
@SDIO_CCCR_DRIVE_STRENGTH = common dso_local global i32 0, align 4
@ATH10K_SDIO_DRIVE_DTSX_MASK = common dso_local global i8 0, align 1
@ATH10K_SDIO_DRIVE_DTSX_TYPE_D = common dso_local global i8 0, align 1
@CCCR_SDIO_DRIVER_STRENGTH_ENABLE_ADDR = common dso_local global i32 0, align 4
@CCCR_SDIO_DRIVER_STRENGTH_ENABLE_A = common dso_local global i8 0, align 1
@CCCR_SDIO_DRIVER_STRENGTH_ENABLE_C = common dso_local global i8 0, align 1
@CCCR_SDIO_DRIVER_STRENGTH_ENABLE_D = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"failed to enable driver strength: %d\0A\00", align 1
@CCCR_SDIO_IRQ_MODE_REG_SDIO3 = common dso_local global i32 0, align 4
@SDIO_IRQ_MODE_ASYNC_4BIT_IRQ_SDIO3 = common dso_local global i8 0, align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"failed to enable 4-bit async irq mode: %d\0A\00", align 1
@CCCR_SDIO_ASYNC_INT_DELAY_ADDRESS = common dso_local global i32 0, align 4
@CCCR_SDIO_ASYNC_INT_DELAY_MASK = common dso_local global i8 0, align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to set sdio block size to %d: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_sdio_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_sdio_config(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.ath10k_sdio*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %9 = call %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k* %8)
  store %struct.ath10k_sdio* %9, %struct.ath10k_sdio** %3, align 8
  %10 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %11 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %10, i32 0, i32 1
  %12 = load %struct.sdio_func*, %struct.sdio_func** %11, align 8
  store %struct.sdio_func* %12, %struct.sdio_func** %4, align 8
  store i8 2, i8* %6, align 1
  %13 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %14 = load i32, i32* @ATH10K_DBG_BOOT, align 4
  %15 = call i32 @ath10k_dbg(%struct.ath10k* %13, i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = call i32 @sdio_claim_host(%struct.sdio_func* %16)
  store i8 0, i8* %5, align 1
  %18 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %19 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @SDIO_CCCR_DRIVE_STRENGTH, align 4
  %22 = call i32 @ath10k_sdio_func0_cmd52_rd_byte(i32 %20, i32 %21, i8* %5)
  store i32 %22, i32* %7, align 4
  %23 = load i8, i8* @ATH10K_SDIO_DRIVE_DTSX_MASK, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = load i8, i8* %5, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  %30 = load i8, i8* @ATH10K_SDIO_DRIVE_DTSX_MASK, align 1
  %31 = load i8, i8* @ATH10K_SDIO_DRIVE_DTSX_TYPE_D, align 1
  %32 = call zeroext i8 @FIELD_PREP(i8 zeroext %30, i8 zeroext %31)
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* %5, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %35, %33
  %37 = trunc i32 %36 to i8
  store i8 %37, i8* %5, align 1
  %38 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %39 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SDIO_CCCR_DRIVE_STRENGTH, align 4
  %42 = load i8, i8* %5, align 1
  %43 = call i32 @ath10k_sdio_func0_cmd52_wr_byte(i32 %40, i32 %41, i8 zeroext %42)
  store i32 %43, i32* %7, align 4
  store i8 0, i8* %5, align 1
  %44 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %45 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @CCCR_SDIO_DRIVER_STRENGTH_ENABLE_ADDR, align 4
  %48 = call i32 @ath10k_sdio_func0_cmd52_rd_byte(i32 %46, i32 %47, i8* %5)
  store i32 %48, i32* %7, align 4
  %49 = load i8, i8* @CCCR_SDIO_DRIVER_STRENGTH_ENABLE_A, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @CCCR_SDIO_DRIVER_STRENGTH_ENABLE_C, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = load i8, i8* @CCCR_SDIO_DRIVER_STRENGTH_ENABLE_D, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = load i8, i8* %5, align 1
  %58 = zext i8 %57 to i32
  %59 = or i32 %58, %56
  %60 = trunc i32 %59 to i8
  store i8 %60, i8* %5, align 1
  %61 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %62 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CCCR_SDIO_DRIVER_STRENGTH_ENABLE_ADDR, align 4
  %65 = load i8, i8* %5, align 1
  %66 = call i32 @ath10k_sdio_func0_cmd52_wr_byte(i32 %63, i32 %64, i8 zeroext %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %1
  %70 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  br label %143

73:                                               ; preds = %1
  store i8 0, i8* %5, align 1
  %74 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %75 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CCCR_SDIO_IRQ_MODE_REG_SDIO3, align 4
  %78 = call i32 @ath10k_sdio_func0_cmd52_rd_byte(i32 %76, i32 %77, i8* %5)
  store i32 %78, i32* %7, align 4
  %79 = load i8, i8* @SDIO_IRQ_MODE_ASYNC_4BIT_IRQ_SDIO3, align 1
  %80 = zext i8 %79 to i32
  %81 = load i8, i8* %5, align 1
  %82 = zext i8 %81 to i32
  %83 = or i32 %82, %80
  %84 = trunc i32 %83 to i8
  store i8 %84, i8* %5, align 1
  %85 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %86 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @CCCR_SDIO_IRQ_MODE_REG_SDIO3, align 4
  %89 = load i8, i8* %5, align 1
  %90 = call i32 @ath10k_sdio_func0_cmd52_wr_byte(i32 %87, i32 %88, i8 zeroext %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %73
  %94 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %95)
  br label %143

97:                                               ; preds = %73
  store i8 0, i8* %5, align 1
  %98 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %99 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CCCR_SDIO_ASYNC_INT_DELAY_ADDRESS, align 4
  %102 = call i32 @ath10k_sdio_func0_cmd52_rd_byte(i32 %100, i32 %101, i8* %5)
  store i32 %102, i32* %7, align 4
  %103 = load i8, i8* @CCCR_SDIO_ASYNC_INT_DELAY_MASK, align 1
  %104 = zext i8 %103 to i32
  %105 = xor i32 %104, -1
  %106 = load i8, i8* %5, align 1
  %107 = zext i8 %106 to i32
  %108 = and i32 %107, %105
  %109 = trunc i32 %108 to i8
  store i8 %109, i8* %5, align 1
  %110 = load i8, i8* @CCCR_SDIO_ASYNC_INT_DELAY_MASK, align 1
  %111 = load i8, i8* %6, align 1
  %112 = call zeroext i8 @FIELD_PREP(i8 zeroext %110, i8 zeroext %111)
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %5, align 1
  %115 = zext i8 %114 to i32
  %116 = or i32 %115, %113
  %117 = trunc i32 %116 to i8
  store i8 %117, i8* %5, align 1
  %118 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %119 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @CCCR_SDIO_ASYNC_INT_DELAY_ADDRESS, align 4
  %122 = load i8, i8* %5, align 1
  %123 = call i32 @ath10k_sdio_func0_cmd52_wr_byte(i32 %120, i32 %121, i8 zeroext %122)
  store i32 %123, i32* %7, align 4
  %124 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %125 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %124, i32 0, i32 0
  store i32 100, i32* %125, align 4
  %126 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %127 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %128 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @sdio_set_block_size(%struct.sdio_func* %126, i32 %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %142

134:                                              ; preds = %97
  %135 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %136 = load %struct.ath10k_sdio*, %struct.ath10k_sdio** %3, align 8
  %137 = getelementptr inbounds %struct.ath10k_sdio, %struct.ath10k_sdio* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %135, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %139, i32 %140)
  br label %143

142:                                              ; preds = %97
  br label %143

143:                                              ; preds = %142, %134, %93, %69
  %144 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %145 = call i32 @sdio_release_host(%struct.sdio_func* %144)
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local %struct.ath10k_sdio* @ath10k_sdio_priv(%struct.ath10k*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @ath10k_sdio_func0_cmd52_rd_byte(i32, i32, i8*) #1

declare dso_local zeroext i8 @FIELD_PREP(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ath10k_sdio_func0_cmd52_wr_byte(i32, i32, i8 zeroext) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

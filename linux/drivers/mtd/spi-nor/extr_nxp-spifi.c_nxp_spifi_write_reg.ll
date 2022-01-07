; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.nxp_spifi* }
%struct.nxp_spifi = type { i64 }

@SPIFI_CMD_DOUT = common dso_local global i32 0, align 4
@SPIFI_CMD_FIELDFORM_ALL_SERIAL = common dso_local global i32 0, align 4
@SPIFI_CMD_FRAMEFORM_OPCODE_ONLY = common dso_local global i32 0, align 4
@SPIFI_CMD = common dso_local global i64 0, align 8
@SPIFI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32*, i32)* @nxp_spifi_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_write_reg(%struct.spi_nor* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nxp_spifi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %14 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %13, i32 0, i32 0
  %15 = load %struct.nxp_spifi*, %struct.nxp_spifi** %14, align 8
  store %struct.nxp_spifi* %15, %struct.nxp_spifi** %10, align 8
  %16 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %17 = call i32 @nxp_spifi_set_memory_mode_off(%struct.nxp_spifi* %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %5, align 4
  br label %58

22:                                               ; preds = %4
  %23 = load i32, i32* @SPIFI_CMD_DOUT, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @SPIFI_CMD_DATALEN(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @SPIFI_CMD_OPCODE(i32 %27)
  %29 = or i32 %26, %28
  %30 = load i32, i32* @SPIFI_CMD_FIELDFORM_ALL_SERIAL, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SPIFI_CMD_FRAMEFORM_OPCODE_ONLY, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %36 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @SPIFI_CMD, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel(i32 %34, i64 %39)
  br label %41

41:                                               ; preds = %45, %22
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %9, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %8, align 8
  %48 = load i32, i32* %46, align 4
  %49 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %50 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SPIFI_DATA, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writeb(i32 %48, i64 %53)
  br label %41

55:                                               ; preds = %41
  %56 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %57 = call i32 @nxp_spifi_wait_for_cmd(%struct.nxp_spifi* %56)
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %55, %20
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @nxp_spifi_set_memory_mode_off(%struct.nxp_spifi*) #1

declare dso_local i32 @SPIFI_CMD_DATALEN(i32) #1

declare dso_local i32 @SPIFI_CMD_OPCODE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @nxp_spifi_wait_for_cmd(%struct.nxp_spifi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

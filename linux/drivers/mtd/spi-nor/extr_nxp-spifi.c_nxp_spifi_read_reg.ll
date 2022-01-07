; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_read_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { %struct.nxp_spifi* }
%struct.nxp_spifi = type { i64 }

@SPIFI_CMD_FIELDFORM_ALL_SERIAL = common dso_local global i32 0, align 4
@SPIFI_CMD_FRAMEFORM_OPCODE_ONLY = common dso_local global i32 0, align 4
@SPIFI_CMD = common dso_local global i64 0, align 8
@SPIFI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i32*, i32)* @nxp_spifi_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_read_reg(%struct.spi_nor* %0, i32 %1, i32* %2, i32 %3) #0 {
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
  br label %55

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @SPIFI_CMD_DATALEN(i32 %23)
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @SPIFI_CMD_OPCODE(i32 %25)
  %27 = or i32 %24, %26
  %28 = load i32, i32* @SPIFI_CMD_FIELDFORM_ALL_SERIAL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @SPIFI_CMD_FRAMEFORM_OPCODE_ONLY, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %34 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @SPIFI_CMD, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %43, %22
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  %42 = icmp ne i32 %40, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %39
  %44 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %45 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @SPIFI_DATA, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readb(i64 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 1
  store i32* %51, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  br label %39

52:                                               ; preds = %39
  %53 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %54 = call i32 @nxp_spifi_wait_for_cmd(%struct.nxp_spifi* %53)
  store i32 %54, i32* %5, align 4
  br label %55

55:                                               ; preds = %52, %20
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @nxp_spifi_set_memory_mode_off(%struct.nxp_spifi*) #1

declare dso_local i32 @SPIFI_CMD_DATALEN(i32) #1

declare dso_local i32 @SPIFI_CMD_OPCODE(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @nxp_spifi_wait_for_cmd(%struct.nxp_spifi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

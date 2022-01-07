; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.nxp_spifi* }
%struct.nxp_spifi = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@SPIFI_ADDR = common dso_local global i64 0, align 8
@SPIFI_CMD_DOUT = common dso_local global i32 0, align 4
@SPIFI_CMD_FIELDFORM_ALL_SERIAL = common dso_local global i32 0, align 4
@SPIFI_CMD = common dso_local global i64 0, align 8
@SPIFI_DATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32, i64, i32*)* @nxp_spifi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_write(%struct.spi_nor* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_nor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.nxp_spifi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %15 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %14, i32 0, i32 1
  %16 = load %struct.nxp_spifi*, %struct.nxp_spifi** %15, align 8
  store %struct.nxp_spifi* %16, %struct.nxp_spifi** %10, align 8
  %17 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %18 = call i32 @nxp_spifi_set_memory_mode_off(%struct.nxp_spifi* %17)
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %5, align 4
  br label %84

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %26 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @SPIFI_ADDR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @writel(i32 %24, i64 %29)
  %31 = load i32, i32* @SPIFI_CMD_DOUT, align 4
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @SPIFI_CMD_DATALEN(i64 %32)
  %34 = or i32 %31, %33
  %35 = load i32, i32* @SPIFI_CMD_FIELDFORM_ALL_SERIAL, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.spi_nor*, %struct.spi_nor** %6, align 8
  %38 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @SPIFI_CMD_OPCODE(i32 %39)
  %41 = or i32 %36, %40
  %42 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %43 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @SPIFI_CMD_FRAMEFORM(i64 %46)
  %48 = or i32 %41, %47
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %51 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SPIFI_CMD, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  store i64 0, i64* %13, align 8
  br label %56

56:                                               ; preds = %71, %23
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %74

60:                                               ; preds = %56
  %61 = load i32*, i32** %9, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %66 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SPIFI_DATA, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writeb(i32 %64, i64 %69)
  br label %71

71:                                               ; preds = %60
  %72 = load i64, i64* %13, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %13, align 8
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.nxp_spifi*, %struct.nxp_spifi** %10, align 8
  %76 = call i32 @nxp_spifi_wait_for_cmd(%struct.nxp_spifi* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = load i32, i32* %12, align 4
  store i32 %80, i32* %5, align 4
  br label %84

81:                                               ; preds = %74
  %82 = load i64, i64* %8, align 8
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %81, %79, %21
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @nxp_spifi_set_memory_mode_off(%struct.nxp_spifi*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @SPIFI_CMD_DATALEN(i64) #1

declare dso_local i32 @SPIFI_CMD_OPCODE(i32) #1

declare dso_local i32 @SPIFI_CMD_FRAMEFORM(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i32 @nxp_spifi_wait_for_cmd(%struct.nxp_spifi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

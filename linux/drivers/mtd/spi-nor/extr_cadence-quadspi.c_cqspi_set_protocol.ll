; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_set_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_cadence-quadspi.c_cqspi_set_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32, %struct.cqspi_flash_pdata* }
%struct.cqspi_flash_pdata = type { i8*, i8*, i8* }

@CQSPI_INST_TYPE_SINGLE = common dso_local global i8* null, align 8
@CQSPI_INST_TYPE_DUAL = common dso_local global i8* null, align 8
@CQSPI_INST_TYPE_QUAD = common dso_local global i8* null, align 8
@CQSPI_INST_TYPE_OCTAL = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, i32)* @cqspi_set_protocol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cqspi_set_protocol(%struct.spi_nor* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cqspi_flash_pdata*, align 8
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %8 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %7, i32 0, i32 1
  %9 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %8, align 8
  store %struct.cqspi_flash_pdata* %9, %struct.cqspi_flash_pdata** %6, align 8
  %10 = load i8*, i8** @CQSPI_INST_TYPE_SINGLE, align 8
  %11 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %12 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %11, i32 0, i32 2
  store i8* %10, i8** %12, align 8
  %13 = load i8*, i8** @CQSPI_INST_TYPE_SINGLE, align 8
  %14 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %15 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %14, i32 0, i32 1
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @CQSPI_INST_TYPE_SINGLE, align 8
  %17 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %18 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %17, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %23 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  switch i32 %24, label %41 [
    i32 131, label %25
    i32 130, label %29
    i32 129, label %33
    i32 128, label %37
  ]

25:                                               ; preds = %21
  %26 = load i8*, i8** @CQSPI_INST_TYPE_SINGLE, align 8
  %27 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %28 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %44

29:                                               ; preds = %21
  %30 = load i8*, i8** @CQSPI_INST_TYPE_DUAL, align 8
  %31 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %32 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  br label %44

33:                                               ; preds = %21
  %34 = load i8*, i8** @CQSPI_INST_TYPE_QUAD, align 8
  %35 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %36 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %44

37:                                               ; preds = %21
  %38 = load i8*, i8** @CQSPI_INST_TYPE_OCTAL, align 8
  %39 = load %struct.cqspi_flash_pdata*, %struct.cqspi_flash_pdata** %6, align 8
  %40 = getelementptr inbounds %struct.cqspi_flash_pdata, %struct.cqspi_flash_pdata* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  br label %44

41:                                               ; preds = %21
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %37, %33, %29, %25
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %47 = call i32 @cqspi_configure(%struct.spi_nor* %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @cqspi_configure(%struct.spi_nor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

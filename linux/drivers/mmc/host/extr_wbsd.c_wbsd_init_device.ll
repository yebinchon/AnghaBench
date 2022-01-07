; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i64, i32, i8* }

@WBSD_IDX_SETUP = common dso_local global i32 0, align 4
@WBSD_FIFO_RESET = common dso_local global i32 0, align 4
@WBSD_SOFT_RESET = common dso_local global i32 0, align 4
@WBSD_DAT3_H = common dso_local global i32 0, align 4
@WBSD_FIGNORE_DETECT = common dso_local global i32 0, align 4
@WBSD_IDX_CLK = common dso_local global i32 0, align 4
@WBSD_POWER_N = common dso_local global i32 0, align 4
@WBSD_CSR = common dso_local global i64 0, align 8
@WBSD_IDX_TAAC = common dso_local global i32 0, align 4
@WBSD_CARDPRESENT = common dso_local global i32 0, align 4
@WBSD_FCARD_PRESENT = common dso_local global i32 0, align 4
@WBSD_EINT_CARD = common dso_local global i32 0, align 4
@WBSD_EINT_FIFO_THRE = common dso_local global i32 0, align 4
@WBSD_EINT_CRC = common dso_local global i32 0, align 4
@WBSD_EINT_TIMEOUT = common dso_local global i32 0, align 4
@WBSD_EINT_TC = common dso_local global i32 0, align 4
@WBSD_EIR = common dso_local global i64 0, align 8
@WBSD_ISR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*)* @wbsd_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_init_device(%struct.wbsd_host* %0) #0 {
  %2 = alloca %struct.wbsd_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %2, align 8
  %5 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %6 = load i32, i32* @WBSD_IDX_SETUP, align 4
  %7 = call i8* @wbsd_read_index(%struct.wbsd_host* %5, i32 %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @WBSD_FIFO_RESET, align 4
  %10 = load i32, i32* @WBSD_SOFT_RESET, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* %3, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %15 = load i32, i32* @WBSD_IDX_SETUP, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @wbsd_write_index(%struct.wbsd_host* %14, i32 %15, i32 %16)
  %18 = load i32, i32* @WBSD_DAT3_H, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %23 = load i32, i32* @WBSD_IDX_SETUP, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @wbsd_write_index(%struct.wbsd_host* %22, i32 %23, i32 %24)
  %26 = load i32, i32* @WBSD_FIGNORE_DETECT, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %29 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %33 = load i32, i32* @WBSD_IDX_CLK, align 4
  %34 = call i8* @wbsd_read_index(%struct.wbsd_host* %32, i32 %33)
  %35 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %36 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %35, i32 0, i32 2
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @WBSD_POWER_N, align 4
  %38 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %39 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WBSD_CSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %45 = load i32, i32* @WBSD_IDX_TAAC, align 4
  %46 = call i32 @wbsd_write_index(%struct.wbsd_host* %44, i32 %45, i32 127)
  %47 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %48 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @WBSD_CSR, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @inb(i64 %51)
  %53 = load i32, i32* @WBSD_CARDPRESENT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %1
  %57 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %58 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %59 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %69

62:                                               ; preds = %1
  %63 = load i32, i32* @WBSD_FCARD_PRESENT, align 4
  %64 = xor i32 %63, -1
  %65 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %66 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %62, %56
  store i32 0, i32* %4, align 4
  %70 = load i32, i32* @WBSD_EINT_CARD, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @WBSD_EINT_FIFO_THRE, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @WBSD_EINT_CRC, align 4
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* @WBSD_EINT_TIMEOUT, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* @WBSD_EINT_TC, align 4
  %83 = load i32, i32* %4, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %87 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @WBSD_EIR, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb(i32 %85, i64 %90)
  %92 = load %struct.wbsd_host*, %struct.wbsd_host** %2, align 8
  %93 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @WBSD_ISR, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @inb(i64 %96)
  ret void
}

declare dso_local i8* @wbsd_read_index(%struct.wbsd_host*, i32) #1

declare dso_local i32 @wbsd_write_index(%struct.wbsd_host*, i32, i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

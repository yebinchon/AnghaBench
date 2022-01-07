; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_get_ro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.wbsd_host = type { i32, i64 }

@WBSD_CSR = common dso_local global i64 0, align 8
@WBSD_MSLED = common dso_local global i32 0, align 4
@WBSD_WRPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @wbsd_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wbsd_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %6 = call %struct.wbsd_host* @mmc_priv(%struct.mmc_host* %5)
  store %struct.wbsd_host* %6, %struct.wbsd_host** %3, align 8
  %7 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %8 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %11 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @WBSD_CSR, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @inb(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* @WBSD_MSLED, align 4
  %17 = load i32, i32* %4, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %21 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WBSD_CSR, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outb(i32 %19, i64 %24)
  %26 = call i32 @mdelay(i32 1)
  %27 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %28 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @WBSD_CSR, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @inb(i64 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @WBSD_MSLED, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %39 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @WBSD_CSR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @outb(i32 %37, i64 %42)
  %44 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %45 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %44, i32 0, i32 0
  %46 = call i32 @spin_unlock_bh(i32* %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @WBSD_WRPT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  ret i32 %53
}

declare dso_local %struct.wbsd_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

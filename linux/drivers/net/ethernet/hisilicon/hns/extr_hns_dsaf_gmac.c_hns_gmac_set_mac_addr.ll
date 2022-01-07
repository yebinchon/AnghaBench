; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_dsaf_gmac.c_hns_gmac_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mac_driver = type { i32 }

@GMAC_STATION_ADDR_HIGH_2_REG = common dso_local global i32 0, align 4
@GMAC_ADDR_EN_B = common dso_local global i8 0, align 1
@GMAC_STATION_ADDR_LOW_2_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @hns_gmac_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns_gmac_set_mac_addr(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mac_driver*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.mac_driver*
  store %struct.mac_driver* %11, %struct.mac_driver** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = load i8*, i8** %4, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = shl i32 %19, 8
  %21 = or i32 %15, %20
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %6, align 1
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 5
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = load i8*, i8** %4, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 4
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = shl i32 %30, 8
  %32 = or i32 %26, %31
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 3
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = shl i32 %36, 16
  %38 = or i32 %32, %37
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = shl i32 %42, 24
  %44 = or i32 %38, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %7, align 1
  %46 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %47 = load i32, i32* @GMAC_STATION_ADDR_HIGH_2_REG, align 4
  %48 = call signext i8 @dsaf_read_dev(%struct.mac_driver* %46, i32 %47)
  store i8 %48, i8* %8, align 1
  %49 = load i8, i8* %8, align 1
  %50 = load i8, i8* @GMAC_ADDR_EN_B, align 1
  %51 = call signext i8 @dsaf_get_bit(i8 signext %49, i8 signext %50)
  store i8 %51, i8* %9, align 1
  %52 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %53 = load i32, i32* @GMAC_STATION_ADDR_LOW_2_REG, align 4
  %54 = load i8, i8* %7, align 1
  %55 = call i32 @dsaf_write_dev(%struct.mac_driver* %52, i32 %53, i8 signext %54)
  %56 = load %struct.mac_driver*, %struct.mac_driver** %5, align 8
  %57 = load i32, i32* @GMAC_STATION_ADDR_HIGH_2_REG, align 4
  %58 = load i8, i8* %6, align 1
  %59 = sext i8 %58 to i32
  %60 = load i8, i8* %9, align 1
  %61 = sext i8 %60 to i32
  %62 = load i8, i8* @GMAC_ADDR_EN_B, align 1
  %63 = sext i8 %62 to i32
  %64 = shl i32 %61, %63
  %65 = or i32 %59, %64
  %66 = trunc i32 %65 to i8
  %67 = call i32 @dsaf_write_dev(%struct.mac_driver* %56, i32 %57, i8 signext %66)
  ret void
}

declare dso_local signext i8 @dsaf_read_dev(%struct.mac_driver*, i32) #1

declare dso_local signext i8 @dsaf_get_bit(i8 signext, i8 signext) #1

declare dso_local i32 @dsaf_write_dev(%struct.mac_driver*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

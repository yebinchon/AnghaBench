; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_rx_bmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_init_rx_bmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i64, %struct.niu_parent* }
%struct.niu_parent = type { %struct.niu_rdc_tables* }
%struct.niu_rdc_tables = type { i32 }

@BMAC_ADD_FILT0 = common dso_local global i32 0, align 4
@BMAC_ADD_FILT1 = common dso_local global i32 0, align 4
@BMAC_ADD_FILT2 = common dso_local global i32 0, align 4
@BMAC_ADD_FILT12_MASK = common dso_local global i32 0, align 4
@BMAC_ADD_FILT00_MASK = common dso_local global i32 0, align 4
@MAC_NUM_HASH = common dso_local global i64 0, align 8
@BRXMAC_STATUS_MASK = common dso_local global i32 0, align 4
@BRXMAC_CONFIG = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_ENABLE = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_STRIP_PAD = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_STRIP_FCS = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_PROMISC = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_PROMISC_GRP = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_ADDR_FILT_EN = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_DISCARD_DIS = common dso_local global i32 0, align 4
@BRXMAC_CONFIG_HASH_FILT_EN = common dso_local global i32 0, align 4
@BMAC_ADDR_CMPEN = common dso_local global i32 0, align 4
@BMAC_ADDR_CMPEN_EN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_init_rx_bmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_init_rx_bmac(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_parent*, align 8
  %4 = alloca %struct.niu_rdc_tables*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %8 = load %struct.niu*, %struct.niu** %2, align 8
  %9 = getelementptr inbounds %struct.niu, %struct.niu* %8, i32 0, i32 1
  %10 = load %struct.niu_parent*, %struct.niu_parent** %9, align 8
  store %struct.niu_parent* %10, %struct.niu_parent** %3, align 8
  %11 = load %struct.niu_parent*, %struct.niu_parent** %3, align 8
  %12 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %11, i32 0, i32 0
  %13 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %12, align 8
  %14 = load %struct.niu*, %struct.niu** %2, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %13, i64 %16
  store %struct.niu_rdc_tables* %17, %struct.niu_rdc_tables** %4, align 8
  %18 = load %struct.niu_rdc_tables*, %struct.niu_rdc_tables** %4, align 8
  %19 = getelementptr inbounds %struct.niu_rdc_tables, %struct.niu_rdc_tables* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @BMAC_ADD_FILT0, align 4
  %22 = call i32 @nw64_mac(i32 %21, i32 0)
  %23 = load i32, i32* @BMAC_ADD_FILT1, align 4
  %24 = call i32 @nw64_mac(i32 %23, i32 0)
  %25 = load i32, i32* @BMAC_ADD_FILT2, align 4
  %26 = call i32 @nw64_mac(i32 %25, i32 0)
  %27 = load i32, i32* @BMAC_ADD_FILT12_MASK, align 4
  %28 = call i32 @nw64_mac(i32 %27, i32 0)
  %29 = load i32, i32* @BMAC_ADD_FILT00_MASK, align 4
  %30 = call i32 @nw64_mac(i32 %29, i32 0)
  store i64 0, i64* %6, align 8
  br label %31

31:                                               ; preds = %39, %1
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @MAC_NUM_HASH, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @BMAC_HASH_TBL(i64 %36)
  %38 = call i32 @nw64_mac(i32 %37, i32 0)
  br label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %6, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load %struct.niu*, %struct.niu** %2, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @niu_set_primary_mac_rdc_table(%struct.niu* %43, i32 %44, i32 1)
  %46 = load %struct.niu*, %struct.niu** %2, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @niu_set_multicast_mac_rdc_table(%struct.niu* %46, i32 %47, i32 1)
  %49 = load i32, i32* @BRXMAC_STATUS_MASK, align 4
  %50 = call i32 @nw64_mac(i32 %49, i32 -1)
  %51 = load i32, i32* @BRXMAC_CONFIG, align 4
  %52 = call i32 @nr64_mac(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @BRXMAC_CONFIG_ENABLE, align 4
  %54 = load i32, i32* @BRXMAC_CONFIG_STRIP_PAD, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @BRXMAC_CONFIG_STRIP_FCS, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @BRXMAC_CONFIG_PROMISC, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @BRXMAC_CONFIG_PROMISC_GRP, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @BRXMAC_CONFIG_ADDR_FILT_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @BRXMAC_CONFIG_DISCARD_DIS, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* @BRXMAC_CONFIG_HASH_FILT_EN, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* @BRXMAC_CONFIG, align 4
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @nw64_mac(i32 %72, i32 %73)
  %75 = load i32, i32* @BMAC_ADDR_CMPEN, align 4
  %76 = call i32 @nr64_mac(i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* @BMAC_ADDR_CMPEN_EN0, align 4
  %78 = load i32, i32* %7, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* @BMAC_ADDR_CMPEN, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @nw64_mac(i32 %80, i32 %81)
  ret void
}

declare dso_local i32 @nw64_mac(i32, i32) #1

declare dso_local i32 @BMAC_HASH_TBL(i64) #1

declare dso_local i32 @niu_set_primary_mac_rdc_table(%struct.niu*, i32, i32) #1

declare dso_local i32 @niu_set_multicast_mac_rdc_table(%struct.niu*, i32, i32) #1

declare dso_local i32 @nr64_mac(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_eth_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_prep_eth_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethhdr = type { i32, i32, i64 }

@NET_PROT_ETH = common dso_local global i32 0, align 4
@NH_FLD_ETH_TYPE = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ETHTYPE = common dso_local global i32 0, align 4
@NH_FLD_ETH_SA = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ETHSRC = common dso_local global i32 0, align 4
@NH_FLD_ETH_DA = common dso_local global i32 0, align 4
@DPAA2_ETH_DIST_ETHDST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ethhdr*, %struct.ethhdr*, i8*, i8*, i32*)* @prep_eth_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prep_eth_rule(%struct.ethhdr* %0, %struct.ethhdr* %1, i8* %2, i8* %3, i32* %4) #0 {
  %6 = alloca %struct.ethhdr*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.ethhdr* %0, %struct.ethhdr** %6, align 8
  store %struct.ethhdr* %1, %struct.ethhdr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %13 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %5
  %17 = load i32, i32* @NET_PROT_ETH, align 4
  %18 = load i32, i32* @NH_FLD_ETH_TYPE, align 4
  %19 = call i32 @dpaa2_eth_cls_fld_off(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %21 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  %27 = bitcast i8* %26 to i64*
  store i64 %22, i64* %27, align 8
  %28 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %29 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to i64*
  store i64 %30, i64* %35, align 8
  %36 = load i32, i32* @DPAA2_ETH_DIST_ETHTYPE, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %16, %5
  %41 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %42 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @is_zero_ether_addr(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %70, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @NET_PROT_ETH, align 4
  %48 = load i32, i32* @NH_FLD_ETH_SA, align 4
  %49 = call i32 @dpaa2_eth_cls_fld_off(i32 %47, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr i8, i8* %50, i64 %52
  %54 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %55 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ether_addr_copy(i8* %53, i32 %56)
  %58 = load i8*, i8** %9, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr i8, i8* %58, i64 %60
  %62 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %63 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ether_addr_copy(i8* %61, i32 %64)
  %66 = load i32, i32* @DPAA2_ETH_DIST_ETHSRC, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %66
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %46, %40
  %71 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %72 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @is_zero_ether_addr(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %100, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* @NET_PROT_ETH, align 4
  %78 = load i32, i32* @NH_FLD_ETH_DA, align 4
  %79 = call i32 @dpaa2_eth_cls_fld_off(i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %11, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr i8, i8* %80, i64 %82
  %84 = load %struct.ethhdr*, %struct.ethhdr** %6, align 8
  %85 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @ether_addr_copy(i8* %83, i32 %86)
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr i8, i8* %88, i64 %90
  %92 = load %struct.ethhdr*, %struct.ethhdr** %7, align 8
  %93 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ether_addr_copy(i8* %91, i32 %94)
  %96 = load i32, i32* @DPAA2_ETH_DIST_ETHDST, align 4
  %97 = load i32*, i32** %10, align 8
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %96
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %76, %70
  ret i32 0
}

declare dso_local i32 @dpaa2_eth_cls_fld_off(i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

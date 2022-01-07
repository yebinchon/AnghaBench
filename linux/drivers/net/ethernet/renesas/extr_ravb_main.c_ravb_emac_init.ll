; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_emac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_emac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32* }

@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@RFLR = common dso_local global i32 0, align 4
@ECMR_ZPF = common dso_local global i32 0, align 4
@ECMR_DM = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ECMR_RCSC = common dso_local global i32 0, align 4
@ECMR_TE = common dso_local global i32 0, align 4
@ECMR_RE = common dso_local global i32 0, align 4
@ECMR = common dso_local global i32 0, align 4
@MAHR = common dso_local global i32 0, align 4
@MALR = common dso_local global i32 0, align 4
@ECSR_ICD = common dso_local global i32 0, align 4
@ECSR_MPD = common dso_local global i32 0, align 4
@ECSR = common dso_local global i32 0, align 4
@ECSIPR_ICDIP = common dso_local global i32 0, align 4
@ECSIPR_MPDIP = common dso_local global i32 0, align 4
@ECSIPR_LCHNGIP = common dso_local global i32 0, align 4
@ECSIPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ravb_emac_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_emac_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = getelementptr inbounds %struct.net_device, %struct.net_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ETH_HLEN, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @VLAN_HLEN, align 4
  %10 = add nsw i32 %8, %9
  %11 = load i32, i32* @ETH_FCS_LEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @RFLR, align 4
  %14 = call i32 @ravb_write(%struct.net_device* %3, i32 %12, i32 %13)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = load i32, i32* @ECMR_ZPF, align 4
  %17 = load i32, i32* @ECMR_DM, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @ECMR_RCSC, align 4
  br label %28

27:                                               ; preds = %1
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = or i32 %18, %29
  %31 = load i32, i32* @ECMR_TE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ECMR_RE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ECMR, align 4
  %36 = call i32 @ravb_write(%struct.net_device* %15, i32 %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @ravb_set_rate(%struct.net_device* %37)
  %39 = load %struct.net_device*, %struct.net_device** %2, align 8
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = shl i32 %44, 24
  %46 = load %struct.net_device*, %struct.net_device** %2, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = shl i32 %50, 16
  %52 = or i32 %45, %51
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = getelementptr inbounds %struct.net_device, %struct.net_device* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 8
  %59 = or i32 %52, %58
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %59, %64
  %66 = load i32, i32* @MAHR, align 4
  %67 = call i32 @ravb_write(%struct.net_device* %39, i32 %65, i32 %66)
  %68 = load %struct.net_device*, %struct.net_device** %2, align 8
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = getelementptr inbounds %struct.net_device, %struct.net_device* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 5
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %74, %79
  %81 = load i32, i32* @MALR, align 4
  %82 = call i32 @ravb_write(%struct.net_device* %68, i32 %80, i32 %81)
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = load i32, i32* @ECSR_ICD, align 4
  %85 = load i32, i32* @ECSR_MPD, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ECSR, align 4
  %88 = call i32 @ravb_write(%struct.net_device* %83, i32 %86, i32 %87)
  %89 = load %struct.net_device*, %struct.net_device** %2, align 8
  %90 = load i32, i32* @ECSIPR_ICDIP, align 4
  %91 = load i32, i32* @ECSIPR_MPDIP, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @ECSIPR_LCHNGIP, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @ECSIPR, align 4
  %96 = call i32 @ravb_write(%struct.net_device* %89, i32 %94, i32 %95)
  ret void
}

declare dso_local i32 @ravb_write(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ravb_set_rate(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

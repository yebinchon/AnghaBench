; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_link_usertable_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_cgx.c_cgx_link_usertable_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cgx_speed_mbps = common dso_local global i32* null, align 8
@CGX_LINK_NONE = common dso_local global i64 0, align 8
@CGX_LINK_10M = common dso_local global i64 0, align 8
@CGX_LINK_100M = common dso_local global i64 0, align 8
@CGX_LINK_1G = common dso_local global i64 0, align 8
@CGX_LINK_2HG = common dso_local global i64 0, align 8
@CGX_LINK_5G = common dso_local global i64 0, align 8
@CGX_LINK_10G = common dso_local global i64 0, align 8
@CGX_LINK_20G = common dso_local global i64 0, align 8
@CGX_LINK_25G = common dso_local global i64 0, align 8
@CGX_LINK_40G = common dso_local global i64 0, align 8
@CGX_LINK_50G = common dso_local global i64 0, align 8
@CGX_LINK_100G = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"SGMII\00", align 1
@cgx_lmactype_string = common dso_local global i8** null, align 8
@LMAC_MODE_SGMII = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"XAUI\00", align 1
@LMAC_MODE_XAUI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"RXAUI\00", align 1
@LMAC_MODE_RXAUI = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"10G_R\00", align 1
@LMAC_MODE_10G_R = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"40G_R\00", align 1
@LMAC_MODE_40G_R = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [7 x i8] c"QSGMII\00", align 1
@LMAC_MODE_QSGMII = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [6 x i8] c"25G_R\00", align 1
@LMAC_MODE_25G_R = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [6 x i8] c"50G_R\00", align 1
@LMAC_MODE_50G_R = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c"100G_R\00", align 1
@LMAC_MODE_100G_R = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [8 x i8] c"USXGMII\00", align 1
@LMAC_MODE_USXGMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cgx_link_usertable_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgx_link_usertable_init() #0 {
  %1 = load i32*, i32** @cgx_speed_mbps, align 8
  %2 = load i64, i64* @CGX_LINK_NONE, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  store i32 0, i32* %3, align 4
  %4 = load i32*, i32** @cgx_speed_mbps, align 8
  %5 = load i64, i64* @CGX_LINK_10M, align 8
  %6 = getelementptr inbounds i32, i32* %4, i64 %5
  store i32 10, i32* %6, align 4
  %7 = load i32*, i32** @cgx_speed_mbps, align 8
  %8 = load i64, i64* @CGX_LINK_100M, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 100, i32* %9, align 4
  %10 = load i32*, i32** @cgx_speed_mbps, align 8
  %11 = load i64, i64* @CGX_LINK_1G, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 1000, i32* %12, align 4
  %13 = load i32*, i32** @cgx_speed_mbps, align 8
  %14 = load i64, i64* @CGX_LINK_2HG, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 2500, i32* %15, align 4
  %16 = load i32*, i32** @cgx_speed_mbps, align 8
  %17 = load i64, i64* @CGX_LINK_5G, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  store i32 5000, i32* %18, align 4
  %19 = load i32*, i32** @cgx_speed_mbps, align 8
  %20 = load i64, i64* @CGX_LINK_10G, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 10000, i32* %21, align 4
  %22 = load i32*, i32** @cgx_speed_mbps, align 8
  %23 = load i64, i64* @CGX_LINK_20G, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 20000, i32* %24, align 4
  %25 = load i32*, i32** @cgx_speed_mbps, align 8
  %26 = load i64, i64* @CGX_LINK_25G, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 25000, i32* %27, align 4
  %28 = load i32*, i32** @cgx_speed_mbps, align 8
  %29 = load i64, i64* @CGX_LINK_40G, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 40000, i32* %30, align 4
  %31 = load i32*, i32** @cgx_speed_mbps, align 8
  %32 = load i64, i64* @CGX_LINK_50G, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 50000, i32* %33, align 4
  %34 = load i32*, i32** @cgx_speed_mbps, align 8
  %35 = load i64, i64* @CGX_LINK_100G, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 100000, i32* %36, align 4
  %37 = load i8**, i8*** @cgx_lmactype_string, align 8
  %38 = load i64, i64* @LMAC_MODE_SGMII, align 8
  %39 = getelementptr inbounds i8*, i8** %37, i64 %38
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %39, align 8
  %40 = load i8**, i8*** @cgx_lmactype_string, align 8
  %41 = load i64, i64* @LMAC_MODE_XAUI, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %42, align 8
  %43 = load i8**, i8*** @cgx_lmactype_string, align 8
  %44 = load i64, i64* @LMAC_MODE_RXAUI, align 8
  %45 = getelementptr inbounds i8*, i8** %43, i64 %44
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %45, align 8
  %46 = load i8**, i8*** @cgx_lmactype_string, align 8
  %47 = load i64, i64* @LMAC_MODE_10G_R, align 8
  %48 = getelementptr inbounds i8*, i8** %46, i64 %47
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %48, align 8
  %49 = load i8**, i8*** @cgx_lmactype_string, align 8
  %50 = load i64, i64* @LMAC_MODE_40G_R, align 8
  %51 = getelementptr inbounds i8*, i8** %49, i64 %50
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8** %51, align 8
  %52 = load i8**, i8*** @cgx_lmactype_string, align 8
  %53 = load i64, i64* @LMAC_MODE_QSGMII, align 8
  %54 = getelementptr inbounds i8*, i8** %52, i64 %53
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %54, align 8
  %55 = load i8**, i8*** @cgx_lmactype_string, align 8
  %56 = load i64, i64* @LMAC_MODE_25G_R, align 8
  %57 = getelementptr inbounds i8*, i8** %55, i64 %56
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %57, align 8
  %58 = load i8**, i8*** @cgx_lmactype_string, align 8
  %59 = load i64, i64* @LMAC_MODE_50G_R, align 8
  %60 = getelementptr inbounds i8*, i8** %58, i64 %59
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %60, align 8
  %61 = load i8**, i8*** @cgx_lmactype_string, align 8
  %62 = load i64, i64* @LMAC_MODE_100G_R, align 8
  %63 = getelementptr inbounds i8*, i8** %61, i64 %62
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %63, align 8
  %64 = load i8**, i8*** @cgx_lmactype_string, align 8
  %65 = load i64, i64* @LMAC_MODE_USXGMII, align 8
  %66 = getelementptr inbounds i8*, i8** %64, i64 %65
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i8** %66, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

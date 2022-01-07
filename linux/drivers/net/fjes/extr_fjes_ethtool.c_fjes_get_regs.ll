; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fjes/extr_fjes_ethtool.c_fjes_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.fjes_adapter = type { %struct.fjes_hw }
%struct.fjes_hw = type { i32 }

@FJES_REGS_LEN = common dso_local global i32 0, align 4
@XSCT_OWNER_EPID = common dso_local global i32 0, align 4
@XSCT_MAX_EP = common dso_local global i32 0, align 4
@XSCT_DCTL = common dso_local global i32 0, align 4
@XSCT_CR = common dso_local global i32 0, align 4
@XSCT_CS = common dso_local global i32 0, align 4
@XSCT_SHSTSAL = common dso_local global i32 0, align 4
@XSCT_SHSTSAH = common dso_local global i32 0, align 4
@XSCT_REQBL = common dso_local global i32 0, align 4
@XSCT_REQBAL = common dso_local global i32 0, align 4
@XSCT_REQBAH = common dso_local global i32 0, align 4
@XSCT_RESPBL = common dso_local global i32 0, align 4
@XSCT_RESPBAL = common dso_local global i32 0, align 4
@XSCT_RESPBAH = common dso_local global i32 0, align 4
@XSCT_IS = common dso_local global i32 0, align 4
@XSCT_IMS = common dso_local global i32 0, align 4
@XSCT_IMC = common dso_local global i32 0, align 4
@XSCT_IG = common dso_local global i32 0, align 4
@XSCT_ICTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @fjes_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fjes_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.fjes_adapter*, align 8
  %8 = alloca %struct.fjes_hw*, align 8
  %9 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.fjes_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.fjes_adapter* %11, %struct.fjes_adapter** %7, align 8
  %12 = load %struct.fjes_adapter*, %struct.fjes_adapter** %7, align 8
  %13 = getelementptr inbounds %struct.fjes_adapter, %struct.fjes_adapter* %12, i32 0, i32 0
  store %struct.fjes_hw* %13, %struct.fjes_hw** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i32*
  store i32* %15, i32** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i32, i32* @FJES_REGS_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = trunc i64 %19 to i32
  %21 = call i32 @memset(i8* %16, i32 0, i32 %20)
  %22 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %22, i32 0, i32 0
  store i32 1, i32* %23, align 4
  %24 = load i32, i32* @XSCT_OWNER_EPID, align 4
  %25 = call i32 @rd32(i32 %24)
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @XSCT_MAX_EP, align 4
  %29 = call i32 @rd32(i32 %28)
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @XSCT_DCTL, align 4
  %33 = call i32 @rd32(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @XSCT_CR, align 4
  %37 = call i32 @rd32(i32 %36)
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 8
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @XSCT_CS, align 4
  %41 = call i32 @rd32(i32 %40)
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 9
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @XSCT_SHSTSAL, align 4
  %45 = call i32 @rd32(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 10
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @XSCT_SHSTSAH, align 4
  %49 = call i32 @rd32(i32 %48)
  %50 = load i32*, i32** %9, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 11
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @XSCT_REQBL, align 4
  %53 = call i32 @rd32(i32 %52)
  %54 = load i32*, i32** %9, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 13
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @XSCT_REQBAL, align 4
  %57 = call i32 @rd32(i32 %56)
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 14
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @XSCT_REQBAH, align 4
  %61 = call i32 @rd32(i32 %60)
  %62 = load i32*, i32** %9, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 15
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @XSCT_RESPBL, align 4
  %65 = call i32 @rd32(i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 17
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @XSCT_RESPBAL, align 4
  %69 = call i32 @rd32(i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 18
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @XSCT_RESPBAH, align 4
  %73 = call i32 @rd32(i32 %72)
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 19
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @XSCT_IS, align 4
  %77 = call i32 @rd32(i32 %76)
  %78 = load i32*, i32** %9, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 32
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @XSCT_IMS, align 4
  %81 = call i32 @rd32(i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 33
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @XSCT_IMC, align 4
  %85 = call i32 @rd32(i32 %84)
  %86 = load i32*, i32** %9, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 34
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @XSCT_IG, align 4
  %89 = call i32 @rd32(i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 35
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @XSCT_ICTL, align 4
  %93 = call i32 @rd32(i32 %92)
  %94 = load i32*, i32** %9, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 36
  store i32 %93, i32* %95, align 4
  ret void
}

declare dso_local %struct.fjes_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rd32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

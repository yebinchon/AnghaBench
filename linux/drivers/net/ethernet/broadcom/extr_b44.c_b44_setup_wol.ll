; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_setup_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_setup_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@B44_RXCONFIG = common dso_local global i32 0, align 4
@RXCONFIG_ALLMULTI = common dso_local global i32 0, align 4
@B44_FLAG_B0_ANDLATER = common dso_local global i32 0, align 4
@B44_WKUP_LEN = common dso_local global i32 0, align 4
@WKUP_LEN_DISABLE = common dso_local global i32 0, align 4
@B44_ADDR_LO = common dso_local global i32 0, align 4
@B44_ADDR_HI = common dso_local global i32 0, align 4
@B44_DEVCTRL = common dso_local global i32 0, align 4
@DEVCTRL_MPM = common dso_local global i32 0, align 4
@DEVCTRL_PFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_setup_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_setup_wol(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %2, align 8
  %4 = load %struct.b44*, %struct.b44** %2, align 8
  %5 = load i32, i32* @B44_RXCONFIG, align 4
  %6 = load i32, i32* @RXCONFIG_ALLMULTI, align 4
  %7 = call i32 @bw32(%struct.b44* %4, i32 %5, i32 %6)
  %8 = load %struct.b44*, %struct.b44** %2, align 8
  %9 = getelementptr inbounds %struct.b44, %struct.b44* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @B44_FLAG_B0_ANDLATER, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %88

14:                                               ; preds = %1
  %15 = load %struct.b44*, %struct.b44** %2, align 8
  %16 = load i32, i32* @B44_WKUP_LEN, align 4
  %17 = load i32, i32* @WKUP_LEN_DISABLE, align 4
  %18 = call i32 @bw32(%struct.b44* %15, i32 %16, i32 %17)
  %19 = load %struct.b44*, %struct.b44** %2, align 8
  %20 = getelementptr inbounds %struct.b44, %struct.b44* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 24
  %27 = load %struct.b44*, %struct.b44** %2, align 8
  %28 = getelementptr inbounds %struct.b44, %struct.b44* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 3
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 16
  %35 = or i32 %26, %34
  %36 = load %struct.b44*, %struct.b44** %2, align 8
  %37 = getelementptr inbounds %struct.b44, %struct.b44* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 4
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %35, %43
  %45 = load %struct.b44*, %struct.b44** %2, align 8
  %46 = getelementptr inbounds %struct.b44, %struct.b44* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %44, %51
  store i32 %52, i32* %3, align 4
  %53 = load %struct.b44*, %struct.b44** %2, align 8
  %54 = load i32, i32* @B44_ADDR_LO, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @bw32(%struct.b44* %53, i32 %54, i32 %55)
  %57 = load %struct.b44*, %struct.b44** %2, align 8
  %58 = getelementptr inbounds %struct.b44, %struct.b44* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = load %struct.b44*, %struct.b44** %2, align 8
  %66 = getelementptr inbounds %struct.b44, %struct.b44* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %64, %71
  store i32 %72, i32* %3, align 4
  %73 = load %struct.b44*, %struct.b44** %2, align 8
  %74 = load i32, i32* @B44_ADDR_HI, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @bw32(%struct.b44* %73, i32 %74, i32 %75)
  %77 = load %struct.b44*, %struct.b44** %2, align 8
  %78 = load i32, i32* @B44_DEVCTRL, align 4
  %79 = call i32 @br32(%struct.b44* %77, i32 %78)
  store i32 %79, i32* %3, align 4
  %80 = load %struct.b44*, %struct.b44** %2, align 8
  %81 = load i32, i32* @B44_DEVCTRL, align 4
  %82 = load i32, i32* %3, align 4
  %83 = load i32, i32* @DEVCTRL_MPM, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @DEVCTRL_PFE, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @bw32(%struct.b44* %80, i32 %81, i32 %86)
  br label %91

88:                                               ; preds = %1
  %89 = load %struct.b44*, %struct.b44** %2, align 8
  %90 = call i32 @b44_setup_pseudo_magicp(%struct.b44* %89)
  br label %91

91:                                               ; preds = %88, %14
  %92 = load %struct.b44*, %struct.b44** %2, align 8
  %93 = call i32 @b44_setup_wol_pci(%struct.b44* %92)
  ret void
}

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @b44_setup_pseudo_magicp(%struct.b44*) #1

declare dso_local i32 @b44_setup_wol_pci(%struct.b44*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

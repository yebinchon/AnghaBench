; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_fiber_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_fiber_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }
%struct.tg3_fiber_aneginfo = type { i32, i32, i64, i32 }

@ANEG_FAILED = common dso_local global i32 0, align 4
@MAC_TX_AUTO_NEG = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_MASK = common dso_local global i32 0, align 4
@MAC_MODE = common dso_local global i32 0, align 4
@MAC_MODE_PORT_MODE_GMII = common dso_local global i32 0, align 4
@MAC_MODE_SEND_CONFIGS = common dso_local global i32 0, align 4
@MR_AN_ENABLE = common dso_local global i32 0, align 4
@ANEG_STATE_UNKNOWN = common dso_local global i32 0, align 4
@ANEG_DONE = common dso_local global i32 0, align 4
@MR_AN_COMPLETE = common dso_local global i32 0, align 4
@MR_LINK_OK = common dso_local global i32 0, align 4
@MR_LP_ADV_FULL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i32*, i32*)* @fiber_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fiber_autoneg(%struct.tg3* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tg3_fiber_aneginfo, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* @ANEG_FAILED, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @MAC_TX_AUTO_NEG, align 4
  %14 = call i32 @tw32_f(i32 %13, i32 0)
  %15 = load %struct.tg3*, %struct.tg3** %4, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MAC_MODE_PORT_MODE_MASK, align 4
  %19 = xor i32 %18, -1
  %20 = and i32 %17, %19
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* @MAC_MODE, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @MAC_MODE_PORT_MODE_GMII, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @tw32_f(i32 %21, i32 %24)
  %26 = call i32 @udelay(i32 40)
  %27 = load i32, i32* @MAC_MODE, align 4
  %28 = load %struct.tg3*, %struct.tg3** %4, align 8
  %29 = getelementptr inbounds %struct.tg3, %struct.tg3* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @tw32_f(i32 %27, i32 %32)
  %34 = call i32 @udelay(i32 40)
  %35 = call i32 @memset(%struct.tg3_fiber_aneginfo* %8, i32 0, i32 24)
  %36 = load i32, i32* @MR_AN_ENABLE, align 4
  %37 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %8, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @ANEG_STATE_UNKNOWN, align 4
  %41 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %8, i32 0, i32 3
  store i32 %40, i32* %41, align 8
  %42 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %8, i32 0, i32 2
  store i64 0, i64* %42, align 8
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %58, %3
  %44 = load i32, i32* %10, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %10, align 4
  %46 = icmp ult i32 %45, 195000
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = load %struct.tg3*, %struct.tg3** %4, align 8
  %49 = call i32 @tg3_fiber_aneg_smachine(%struct.tg3* %48, %struct.tg3_fiber_aneginfo* %8)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ANEG_DONE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @ANEG_FAILED, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %47
  br label %60

58:                                               ; preds = %53
  %59 = call i32 @udelay(i32 1)
  br label %43

60:                                               ; preds = %57, %43
  %61 = load i32, i32* @MAC_MODE_SEND_CONFIGS, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.tg3*, %struct.tg3** %4, align 8
  %64 = getelementptr inbounds %struct.tg3, %struct.tg3* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load i32, i32* @MAC_MODE, align 4
  %68 = load %struct.tg3*, %struct.tg3** %4, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @tw32_f(i32 %67, i32 %70)
  %72 = call i32 @udelay(i32 40)
  %73 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %8, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %5, align 8
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %8, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32*, i32** %6, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @ANEG_DONE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %60
  %83 = getelementptr inbounds %struct.tg3_fiber_aneginfo, %struct.tg3_fiber_aneginfo* %8, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @MR_AN_COMPLETE, align 4
  %86 = load i32, i32* @MR_LINK_OK, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @MR_LP_ADV_FULL_DUPLEX, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %84, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %93

93:                                               ; preds = %92, %82, %60
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @tw32_f(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @memset(%struct.tg3_fiber_aneginfo*, i32, i32) #1

declare dso_local i32 @tg3_fiber_aneg_smachine(%struct.tg3*, %struct.tg3_fiber_aneginfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c___nfp_eth_set_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_nsp_eth.c___nfp_eth_set_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_nsp = type { i32 }

@RATE_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"could not find matching lane rate for speed %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NSP_ETH_RAW_STATE = common dso_local global i32 0, align 4
@NSP_ETH_STATE_RATE = common dso_local global i32 0, align 4
@NSP_ETH_CTRL_SET_RATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__nfp_eth_set_speed(%struct.nfp_nsp* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_nsp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nfp_nsp* %0, %struct.nfp_nsp** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @nfp_eth_speed2rate(i32 %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* @RATE_INVALID, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %14 = call i32 @nfp_nsp_cpp(%struct.nfp_nsp* %13)
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @nfp_warn(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %26

19:                                               ; preds = %2
  %20 = load %struct.nfp_nsp*, %struct.nfp_nsp** %4, align 8
  %21 = load i32, i32* @NSP_ETH_RAW_STATE, align 4
  %22 = load i32, i32* @NSP_ETH_STATE_RATE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NSP_ETH_CTRL_SET_RATE, align 4
  %25 = call i32 @NFP_ETH_SET_BIT_CONFIG(%struct.nfp_nsp* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %19, %12
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @nfp_eth_speed2rate(i32) #1

declare dso_local i32 @nfp_warn(i32, i8*, i32) #1

declare dso_local i32 @nfp_nsp_cpp(%struct.nfp_nsp*) #1

declare dso_local i32 @NFP_ETH_SET_BIT_CONFIG(%struct.nfp_nsp*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_pf_rxq_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_pf_rxq_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32 }

@ICE_Q_WAIT_MAX_RETRY = common dso_local global i32 0, align 4
@QRX_CTRL_QENA_STAT_M = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*, i32, i32)* @ice_pf_rxq_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_pf_rxq_wait(%struct.ice_pf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_pf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %30, %3
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @ICE_Q_WAIT_MAX_RETRY, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %9
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ice_pf*, %struct.ice_pf** %5, align 8
  %16 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %15, i32 0, i32 0
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @QRX_CTRL(i32 %17)
  %19 = call i32 @rd32(i32* %16, i32 %18)
  %20 = load i32, i32* @QRX_CTRL_QENA_STAT_M, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = icmp eq i32 %14, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %36

28:                                               ; preds = %13
  %29 = call i32 @usleep_range(i32 20, i32 40)
  br label %30

30:                                               ; preds = %28
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %9

33:                                               ; preds = %9
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %27
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @rd32(i32*, i32) #1

declare dso_local i32 @QRX_CTRL(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

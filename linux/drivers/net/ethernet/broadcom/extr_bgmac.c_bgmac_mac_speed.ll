; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_mac_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_mac_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i64, i32 }

@BGMAC_CMDCFG_ES_MASK = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_HD = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_ES_10 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_ES_100 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_ES_1000 = common dso_local global i32 0, align 4
@BGMAC_CMDCFG_ES_2500 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsupported speed: %d\0A\00", align 1
@DUPLEX_HALF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_mac_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_mac_speed(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %5 = load i32, i32* @BGMAC_CMDCFG_ES_MASK, align 4
  %6 = load i32, i32* @BGMAC_CMDCFG_HD, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  store i32 %8, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %9 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %10 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %28 [
    i32 131, label %12
    i32 130, label %16
    i32 129, label %20
    i32 128, label %24
  ]

12:                                               ; preds = %1
  %13 = load i32, i32* @BGMAC_CMDCFG_ES_10, align 4
  %14 = load i32, i32* %4, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %4, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load i32, i32* @BGMAC_CMDCFG_ES_100, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load i32, i32* @BGMAC_CMDCFG_ES_1000, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load i32, i32* @BGMAC_CMDCFG_ES_2500, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %1
  %29 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %30 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %28, %24, %20, %16, %12
  %37 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %38 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @DUPLEX_HALF, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load i32, i32* @BGMAC_CMDCFG_HD, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %36
  %47 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @bgmac_cmdcfg_maskset(%struct.bgmac* %47, i32 %48, i32 %49, i32 1)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @bgmac_cmdcfg_maskset(%struct.bgmac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

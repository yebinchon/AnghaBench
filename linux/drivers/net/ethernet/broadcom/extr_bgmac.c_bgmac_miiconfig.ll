; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_miiconfig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac.c_bgmac_miiconfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgmac = type { i32, i8*, i32 }

@BGMAC_FEAT_FORCE_SPEED_2500 = common dso_local global i32 0, align 4
@BGMAC_FEAT_IDM_MASK = common dso_local global i32 0, align 4
@BCMA_IOCTL = common dso_local global i32 0, align 4
@BGMAC_BCMA_IOCTL_SW_CLKEN = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@BGMAC_DEV_STATUS = common dso_local global i32 0, align 4
@BGMAC_DS_MM_MASK = common dso_local global i32 0, align 4
@BGMAC_DS_MM_SHIFT = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bgmac*)* @bgmac_miiconfig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_miiconfig(%struct.bgmac* %0) #0 {
  %2 = alloca %struct.bgmac*, align 8
  %3 = alloca i32, align 4
  store %struct.bgmac* %0, %struct.bgmac** %2, align 8
  %4 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %5 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BGMAC_FEAT_FORCE_SPEED_2500, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %1
  %11 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %12 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BGMAC_FEAT_IDM_MASK, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %10
  %18 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %19 = load i32, i32* @BCMA_IOCTL, align 4
  %20 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %21 = load i32, i32* @BCMA_IOCTL, align 4
  %22 = call i32 @bgmac_idm_read(%struct.bgmac* %20, i32 %21)
  %23 = or i32 %22, 64
  %24 = load i32, i32* @BGMAC_BCMA_IOCTL_SW_CLKEN, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @bgmac_idm_write(%struct.bgmac* %18, i32 %19, i32 %25)
  br label %27

27:                                               ; preds = %17, %10
  %28 = load i32, i32* @SPEED_2500, align 4
  %29 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %30 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load i8*, i8** @DUPLEX_FULL, align 8
  %32 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %33 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %35 = call i32 @bgmac_mac_speed(%struct.bgmac* %34)
  br label %59

36:                                               ; preds = %1
  %37 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %38 = load i32, i32* @BGMAC_DEV_STATUS, align 4
  %39 = call i32 @bgmac_read(%struct.bgmac* %37, i32 %38)
  %40 = load i32, i32* @BGMAC_DS_MM_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @BGMAC_DS_MM_SHIFT, align 4
  %43 = ashr i32 %41, %42
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %58

49:                                               ; preds = %46, %36
  %50 = load i32, i32* @SPEED_100, align 4
  %51 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %52 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @DUPLEX_FULL, align 8
  %54 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %55 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %54, i32 0, i32 1
  store i8* %53, i8** %55, align 8
  %56 = load %struct.bgmac*, %struct.bgmac** %2, align 8
  %57 = call i32 @bgmac_mac_speed(%struct.bgmac* %56)
  br label %58

58:                                               ; preds = %49, %46
  br label %59

59:                                               ; preds = %58, %27
  ret void
}

declare dso_local i32 @bgmac_idm_write(%struct.bgmac*, i32, i32) #1

declare dso_local i32 @bgmac_idm_read(%struct.bgmac*, i32) #1

declare dso_local i32 @bgmac_mac_speed(%struct.bgmac*) #1

declare dso_local i32 @bgmac_read(%struct.bgmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

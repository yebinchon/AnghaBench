; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_update_phcon1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_encx24j600.c_encx24j600_update_phcon1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.encx24j600_priv = type { i64, i64, i64 }

@PHCON1 = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ANEN = common dso_local global i32 0, align 4
@RENEG = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPD100 = common dso_local global i32 0, align 4
@PFULDPX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.encx24j600_priv*)* @encx24j600_update_phcon1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encx24j600_update_phcon1(%struct.encx24j600_priv* %0) #0 {
  %2 = alloca %struct.encx24j600_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.encx24j600_priv* %0, %struct.encx24j600_priv** %2, align 8
  %4 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %5 = load i32, i32* @PHCON1, align 4
  %6 = call i32 @encx24j600_read_phy(%struct.encx24j600_priv* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %8 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @AUTONEG_ENABLE, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* @ANEN, align 4
  %14 = load i32, i32* @RENEG, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  br label %52

18:                                               ; preds = %1
  %19 = load i32, i32* @ANEN, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  %23 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %24 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SPEED_100, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  %29 = load i32, i32* @SPD100, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %18
  %33 = load i32, i32* @SPD100, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %39 = getelementptr inbounds %struct.encx24j600_priv, %struct.encx24j600_priv* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @PFULDPX, align 4
  %44 = load i32, i32* %3, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %3, align 4
  br label %51

46:                                               ; preds = %37
  %47 = load i32, i32* @PFULDPX, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %42
  br label %52

52:                                               ; preds = %51, %12
  %53 = load %struct.encx24j600_priv*, %struct.encx24j600_priv** %2, align 8
  %54 = load i32, i32* @PHCON1, align 4
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @encx24j600_write_phy(%struct.encx24j600_priv* %53, i32 %54, i32 %55)
  ret void
}

declare dso_local i32 @encx24j600_read_phy(%struct.encx24j600_priv*, i32) #1

declare dso_local i32 @encx24j600_write_phy(%struct.encx24j600_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

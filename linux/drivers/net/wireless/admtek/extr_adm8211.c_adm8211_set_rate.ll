; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ADM8211_REV_BA = common dso_local global i64 0, align 8
@adm8211_rates = common dso_local global %struct.TYPE_5__* null, align 8
@ADM8211_SRAM_SUPP_RATE = common dso_local global i32 0, align 4
@PLCPHD = common dso_local global i32 0, align 4
@TXLMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @adm8211_set_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_set_rate(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [12 x i32], align 16
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.adm8211_priv*, %struct.adm8211_priv** %8, align 8
  store %struct.adm8211_priv* %9, %struct.adm8211_priv** %3, align 8
  store i32 0, i32* %5, align 4
  %10 = bitcast [12 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 48, i1 false)
  %11 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %12 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ADM8211_REV_BA, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %1
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm8211_rates, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %19)
  %21 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  store i32 %20, i32* %21, align 16
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %40, %18
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm8211_rates, align 8
  %25 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %43

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm8211_rates, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 5
  %35 = or i32 %34, 128
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 %38
  store i32 %35, i32* %39, align 4
  br label %40

40:                                               ; preds = %27
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %22

43:                                               ; preds = %22
  br label %50

44:                                               ; preds = %1
  %45 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  store i32 4, i32* %45, align 16
  %46 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 1
  store i32 130, i32* %46, align 4
  %47 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 2
  store i32 4, i32* %47, align 8
  %48 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 3
  store i32 11, i32* %48, align 4
  %49 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 4
  store i32 22, i32* %49, align 16
  br label %50

50:                                               ; preds = %44, %43
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = load i32, i32* @ADM8211_SRAM_SUPP_RATE, align 4
  %53 = getelementptr inbounds [12 x i32], [12 x i32]* %6, i64 0, i64 0
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** @adm8211_rates, align 8
  %55 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %54)
  %56 = add nsw i32 %55, 1
  %57 = call i32 @adm8211_write_sram_bytes(%struct.ieee80211_hw* %51, i32 %52, i32* %53, i32 %56)
  %58 = load i32, i32* @PLCPHD, align 4
  %59 = call i32 @ADM8211_CSR_READ(i32 %58)
  %60 = and i32 %59, 16777215
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, 32768
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, 1845493760
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* @PLCPHD, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ADM8211_CSR_WRITE(i32 %65, i32 %66)
  %68 = load i32, i32* @TXLMT, align 4
  %69 = call i32 @ADM8211_CSR_WRITE(i32 %68, i32 33582816)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #2

declare dso_local i32 @adm8211_write_sram_bytes(%struct.ieee80211_hw*, i32, i32*, i32) #2

declare dso_local i32 @ADM8211_CSR_READ(i32) #2

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

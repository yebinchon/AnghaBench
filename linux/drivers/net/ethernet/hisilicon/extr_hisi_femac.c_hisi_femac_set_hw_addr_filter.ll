; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_set_hw_addr_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hisi_femac.c_hisi_femac_set_hw_addr_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_femac_priv = type { i64 }

@MACFLT_HI16_MASK = common dso_local global i8 0, align 1
@BIT_MACFLT_ENA = common dso_local global i8 0, align 1
@BIT_MACFLT_FW2CPU = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_femac_priv*, i8*, i32)* @hisi_femac_set_hw_addr_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hisi_femac_set_hw_addr_filter(%struct.hisi_femac_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.hisi_femac_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store %struct.hisi_femac_priv* %0, %struct.hisi_femac_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @GLB_MAC_H16(i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @GLB_MAC_L32(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 2
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = shl i32 %17, 24
  %19 = load i8*, i8** %5, align 8
  %20 = getelementptr inbounds i8, i8* %19, i64 3
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = shl i32 %22, 16
  %24 = or i32 %18, %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 4
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = or i32 %24, %29
  %31 = load i8*, i8** %5, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 5
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = or i32 %30, %34
  %36 = trunc i32 %35 to i8
  store i8 %36, i8* %9, align 1
  %37 = load i8, i8* %9, align 1
  %38 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %39 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = zext i32 %41 to i64
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writel(i8 zeroext %37, i64 %43)
  %45 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %46 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call zeroext i8 @readl(i64 %50)
  store i8 %51, i8* %9, align 1
  %52 = load i8, i8* @MACFLT_HI16_MASK, align 1
  %53 = zext i8 %52 to i32
  %54 = xor i32 %53, -1
  %55 = load i8, i8* %9, align 1
  %56 = zext i8 %55 to i32
  %57 = and i32 %56, %54
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %9, align 1
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 8
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %63, %67
  %69 = load i8, i8* %9, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %70, %68
  %72 = trunc i32 %71 to i8
  store i8 %72, i8* %9, align 1
  %73 = load i8, i8* @BIT_MACFLT_ENA, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* @BIT_MACFLT_FW2CPU, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %74, %76
  %78 = load i8, i8* %9, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %77
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %9, align 1
  %82 = load i8, i8* %9, align 1
  %83 = load %struct.hisi_femac_priv*, %struct.hisi_femac_priv** %4, align 8
  %84 = getelementptr inbounds %struct.hisi_femac_priv, %struct.hisi_femac_priv* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = call i32 @writel(i8 zeroext %82, i64 %88)
  ret void
}

declare dso_local i32 @GLB_MAC_H16(i32) #1

declare dso_local i32 @GLB_MAC_L32(i32) #1

declare dso_local i32 @writel(i8 zeroext, i64) #1

declare dso_local zeroext i8 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

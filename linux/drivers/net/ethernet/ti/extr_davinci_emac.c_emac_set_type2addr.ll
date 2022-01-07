; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_set_type2addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_set_type2addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i32 }

@EMAC_MACINDEX = common dso_local global i32 0, align 4
@EMAC_MACADDRHI = common dso_local global i32 0, align 4
@EMAC_MACADDRLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*, i32, i8*, i32, i32)* @emac_set_type2addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_set_type2addr(%struct.emac_priv* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.emac_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.emac_priv* %0, %struct.emac_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* @EMAC_MACINDEX, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @emac_write(i32 %12, i32 %13)
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 3
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = shl i32 %18, 24
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = shl i32 %23, 16
  %25 = or i32 %19, %24
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 1
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = shl i32 %29, 8
  %31 = or i32 %25, %30
  %32 = load i8*, i8** %8, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  %36 = or i32 %31, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* @EMAC_MACADDRHI, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @emac_write(i32 %37, i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 5
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = shl i32 %43, 8
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 4
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = or i32 %44, %48
  %50 = load i32, i32* %7, align 4
  %51 = and i32 %50, 7
  %52 = shl i32 %51, 16
  %53 = or i32 %49, %52
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 %54, 19
  %56 = or i32 %53, %55
  %57 = call signext i8 @BIT(i32 20)
  %58 = sext i8 %57 to i32
  %59 = or i32 %56, %58
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* @EMAC_MACADDRLO, align 4
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @emac_write(i32 %60, i32 %61)
  %63 = load %struct.emac_priv*, %struct.emac_priv** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i8*, i8** %8, align 8
  %66 = call i32 @emac_set_type0addr(%struct.emac_priv* %63, i32 %64, i8* %65)
  ret void
}

declare dso_local i32 @emac_write(i32, i32) #1

declare dso_local signext i8 @BIT(i32) #1

declare dso_local i32 @emac_set_type0addr(%struct.emac_priv*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

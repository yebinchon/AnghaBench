; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_set_type1addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_set_type1addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i32 }

@EMAC_MACINDEX = common dso_local global i32 0, align 4
@EMAC_MACADDRLO = common dso_local global i32 0, align 4
@EMAC_MACADDRHI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*, i8, i8*)* @emac_set_type1addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_set_type1addr(%struct.emac_priv* %0, i8 signext %1, i8* %2) #0 {
  %4 = alloca %struct.emac_priv*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  store %struct.emac_priv* %0, %struct.emac_priv** %4, align 8
  store i8 %1, i8* %5, align 1
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @EMAC_MACINDEX, align 4
  %9 = load i8, i8* %5, align 1
  %10 = call i32 @emac_write(i32 %8, i8 signext %9)
  %11 = load i8*, i8** %6, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 5
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = shl i32 %14, 8
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 4
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = or i32 %15, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %7, align 1
  %22 = load i32, i32* @EMAC_MACADDRLO, align 4
  %23 = load i8, i8* %7, align 1
  %24 = call i32 @emac_write(i32 %22, i8 signext %23)
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = shl i32 %28, 24
  %30 = load i8*, i8** %6, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 2
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = shl i32 %33, 16
  %35 = or i32 %29, %34
  %36 = load i8*, i8** %6, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 1
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = shl i32 %39, 8
  %41 = or i32 %35, %40
  %42 = load i8*, i8** %6, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = or i32 %41, %45
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %7, align 1
  %48 = load i32, i32* @EMAC_MACADDRHI, align 4
  %49 = load i8, i8* %7, align 1
  %50 = call i32 @emac_write(i32 %48, i8 signext %49)
  %51 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %52 = load i8, i8* %5, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = call i32 @emac_set_type0addr(%struct.emac_priv* %51, i8 signext %52, i8* %53)
  ret void
}

declare dso_local i32 @emac_write(i32, i8 signext) #1

declare dso_local i32 @emac_set_type0addr(%struct.emac_priv*, i8 signext, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

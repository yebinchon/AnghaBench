; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_umac_set_hw_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bcmsysport.c_umac_set_hw_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sysport_priv = type { i32 }

@UMAC_MAC0 = common dso_local global i32 0, align 4
@UMAC_MAC1 = common dso_local global i32 0, align 4
@GIB_MAC0 = common dso_local global i32 0, align 4
@GIB_MAC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm_sysport_priv*, i8*)* @umac_set_hw_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umac_set_hw_addr(%struct.bcm_sysport_priv* %0, i8* %1) #0 {
  %3 = alloca %struct.bcm_sysport_priv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.bcm_sysport_priv* %0, %struct.bcm_sysport_priv** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = getelementptr inbounds i8, i8* %7, i64 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = shl i32 %10, 24
  %12 = load i8*, i8** %4, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = shl i32 %15, 16
  %17 = or i32 %11, %16
  %18 = load i8*, i8** %4, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 2
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = shl i32 %21, 8
  %23 = or i32 %17, %22
  %24 = load i8*, i8** %4, align 8
  %25 = getelementptr inbounds i8, i8* %24, i64 3
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %23, %27
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %5, align 1
  %30 = load i8*, i8** %4, align 8
  %31 = getelementptr inbounds i8, i8* %30, i64 4
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = shl i32 %33, 8
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 5
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = or i32 %34, %38
  %40 = trunc i32 %39 to i8
  store i8 %40, i8* %6, align 1
  %41 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %42 = getelementptr inbounds %struct.bcm_sysport_priv, %struct.bcm_sysport_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %2
  %46 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %47 = load i8, i8* %5, align 1
  %48 = load i32, i32* @UMAC_MAC0, align 4
  %49 = call i32 @umac_writel(%struct.bcm_sysport_priv* %46, i8 zeroext %47, i32 %48)
  %50 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %51 = load i8, i8* %6, align 1
  %52 = load i32, i32* @UMAC_MAC1, align 4
  %53 = call i32 @umac_writel(%struct.bcm_sysport_priv* %50, i8 zeroext %51, i32 %52)
  br label %63

54:                                               ; preds = %2
  %55 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %56 = load i8, i8* %5, align 1
  %57 = load i32, i32* @GIB_MAC0, align 4
  %58 = call i32 @gib_writel(%struct.bcm_sysport_priv* %55, i8 zeroext %56, i32 %57)
  %59 = load %struct.bcm_sysport_priv*, %struct.bcm_sysport_priv** %3, align 8
  %60 = load i8, i8* %6, align 1
  %61 = load i32, i32* @GIB_MAC1, align 4
  %62 = call i32 @gib_writel(%struct.bcm_sysport_priv* %59, i8 zeroext %60, i32 %61)
  br label %63

63:                                               ; preds = %54, %45
  ret void
}

declare dso_local i32 @umac_writel(%struct.bcm_sysport_priv*, i8 zeroext, i32) #1

declare dso_local i32 @gib_writel(%struct.bcm_sysport_priv*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

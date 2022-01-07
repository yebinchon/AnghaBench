; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_add_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_chip.c_brcmf_chip_add_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_core = type { i8*, i32 }
%struct.brcmf_chip_priv = type { i32 }
%struct.brcmf_core_priv = type { %struct.brcmf_core, i32, i8*, %struct.brcmf_chip_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.brcmf_core* (%struct.brcmf_chip_priv*, i32, i8*, i8*)* @brcmf_chip_add_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.brcmf_core* @brcmf_chip_add_core(%struct.brcmf_chip_priv* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.brcmf_core*, align 8
  %6 = alloca %struct.brcmf_chip_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.brcmf_core_priv*, align 8
  store %struct.brcmf_chip_priv* %0, %struct.brcmf_chip_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.brcmf_core_priv* @kzalloc(i32 40, i32 %11)
  store %struct.brcmf_core_priv* %12, %struct.brcmf_core_priv** %10, align 8
  %13 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %14 = icmp ne %struct.brcmf_core_priv* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.brcmf_core* @ERR_PTR(i32 %17)
  store %struct.brcmf_core* %18, %struct.brcmf_core** %5, align 8
  br label %41

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %22 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %26 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.brcmf_core, %struct.brcmf_core* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %29 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %30 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %29, i32 0, i32 3
  store %struct.brcmf_chip_priv* %28, %struct.brcmf_chip_priv** %30, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %33 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %35 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %34, i32 0, i32 1
  %36 = load %struct.brcmf_chip_priv*, %struct.brcmf_chip_priv** %6, align 8
  %37 = getelementptr inbounds %struct.brcmf_chip_priv, %struct.brcmf_chip_priv* %36, i32 0, i32 0
  %38 = call i32 @list_add_tail(i32* %35, i32* %37)
  %39 = load %struct.brcmf_core_priv*, %struct.brcmf_core_priv** %10, align 8
  %40 = getelementptr inbounds %struct.brcmf_core_priv, %struct.brcmf_core_priv* %39, i32 0, i32 0
  store %struct.brcmf_core* %40, %struct.brcmf_core** %5, align 8
  br label %41

41:                                               ; preds = %19, %15
  %42 = load %struct.brcmf_core*, %struct.brcmf_core** %5, align 8
  ret %struct.brcmf_core* %42
}

declare dso_local %struct.brcmf_core_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.brcmf_core* @ERR_PTR(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

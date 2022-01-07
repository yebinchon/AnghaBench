; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_init_new_priv_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_init_new_priv_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i8*, i64, i32, %struct.TYPE_2__, %struct.mwifiex_adapter* }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_adapter = type { i32, i32, i32, i32 }
%struct.net_device = type { i32 }

@MWIFIEX_BSS_ROLE_STA = common dso_local global i8* null, align 8
@MWIFIEX_BSS_ROLE_UAP = common dso_local global i8* null, align 8
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%s: changing to %d not supported\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.net_device*, i32)* @mwifiex_init_new_priv_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_init_new_priv_params(%struct.mwifiex_private* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_adapter*, align 8
  %9 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 5
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %11, align 8
  store %struct.mwifiex_adapter* %12, %struct.mwifiex_adapter** %8, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %14 = call i32 @mwifiex_init_priv(%struct.mwifiex_private* %13)
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %20 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @mwifiex_init_priv_params(%struct.mwifiex_private* %22, i32 %25)
  %27 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %28 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  switch i32 %29, label %46 [
    i32 128, label %30
    i32 132, label %30
    i32 130, label %34
    i32 129, label %38
    i32 131, label %42
  ]

30:                                               ; preds = %3, %3
  %31 = load i8*, i8** @MWIFIEX_BSS_ROLE_STA, align 8
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  br label %56

34:                                               ; preds = %3
  %35 = load i8*, i8** @MWIFIEX_BSS_ROLE_STA, align 8
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  br label %56

38:                                               ; preds = %3
  %39 = load i8*, i8** @MWIFIEX_BSS_ROLE_UAP, align 8
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 1
  store i8* %39, i8** %41, align 8
  br label %56

42:                                               ; preds = %3
  %43 = load i8*, i8** @MWIFIEX_BSS_ROLE_UAP, align 8
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  br label %56

46:                                               ; preds = %3
  %47 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %48 = load i32, i32* @ERROR, align 4
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %47, i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* @EOPNOTSUPP, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %78

56:                                               ; preds = %42, %38, %34, %30
  %57 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %58 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %57, i32 0, i32 3
  %59 = load i64, i64* %9, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %62 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %61, i32 0, i32 0
  store i32 0, i32* %62, align 4
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 3
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %68 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %67, i32 0, i32 2
  %69 = call i32 @spin_lock_bh(i32* %68)
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %8, align 8
  %73 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %72, i32 0, i32 2
  %74 = call i32 @spin_unlock_bh(i32* %73)
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %76 = load %struct.net_device*, %struct.net_device** %6, align 8
  %77 = call i32 @mwifiex_set_mac_address(%struct.mwifiex_private* %75, %struct.net_device* %76, i32 0, i32* null)
  store i32 0, i32* %4, align 4
  br label %78

78:                                               ; preds = %56, %46
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @mwifiex_init_priv(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_init_priv_params(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_set_mac_address(%struct.mwifiex_private*, %struct.net_device*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

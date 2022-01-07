; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_add_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_add_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i8*, i8*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EMAC_ALL_MULTI_REG_VALUE = common dso_local global i8* null, align 8
@EMAC_NUM_MULTICAST_BITS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"DaVinci EMAC: add_mcast: bad operation %d\00", align 1
@EMAC_MACHASH1 = common dso_local global i32 0, align 4
@EMAC_MACHASH2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*, i32, i32*)* @emac_add_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_add_mcast(%struct.emac_priv* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.emac_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  store %struct.emac_priv* %0, %struct.emac_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %10 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %9, i32 0, i32 3
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %43 [
    i32 129, label %14
    i32 128, label %18
    i32 130, label %22
    i32 131, label %29
  ]

14:                                               ; preds = %3
  %15 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @emac_hash_add(%struct.emac_priv* %15, i32* %16)
  store i32 %17, i32* %8, align 4
  br label %52

18:                                               ; preds = %3
  %19 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @emac_hash_del(%struct.emac_priv* %19, i32* %20)
  store i32 %21, i32* %8, align 4
  br label %52

22:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %23 = load i8*, i8** @EMAC_ALL_MULTI_REG_VALUE, align 8
  %24 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %25 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %24, i32 0, i32 1
  store i8* %23, i8** %25, align 8
  %26 = load i8*, i8** @EMAC_ALL_MULTI_REG_VALUE, align 8
  %27 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %28 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %27, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  br label %52

29:                                               ; preds = %3
  store i32 1, i32* %8, align 4
  %30 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %31 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %30, i32 0, i32 1
  store i8* null, i8** %31, align 8
  %32 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %33 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %32, i32 0, i32 0
  store i8* null, i8** %33, align 8
  %34 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %35 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* @EMAC_NUM_MULTICAST_BITS, align 4
  %39 = sext i32 %38 to i64
  %40 = mul i64 4, %39
  %41 = trunc i64 %40 to i32
  %42 = call i32 @memset(i32* %37, i32 0, i32 %41)
  br label %52

43:                                               ; preds = %3
  %44 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %45 = call i32 @netif_msg_drv(%struct.emac_priv* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load %struct.device*, %struct.device** %7, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %29, %22, %18, %14
  %53 = load i32, i32* %8, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %52
  %56 = load i32, i32* @EMAC_MACHASH1, align 4
  %57 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %58 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @emac_write(i32 %56, i8* %59)
  %61 = load i32, i32* @EMAC_MACHASH2, align 4
  %62 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %63 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %62, i32 0, i32 0
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @emac_write(i32 %61, i8* %64)
  br label %66

66:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @emac_hash_add(%struct.emac_priv*, i32*) #1

declare dso_local i32 @emac_hash_del(%struct.emac_priv*, i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @emac_write(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_setmac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_davinci_emac.c_emac_setmac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EMAC_MAX_TXRX_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"DaVinci EMAC: Wrong addressing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*, i64, i8*)* @emac_setmac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_setmac(%struct.emac_priv* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.emac_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %10 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %14 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = call i32 @emac_set_type0addr(%struct.emac_priv* %18, i64 %19, i8* %20)
  br label %66

22:                                               ; preds = %3
  %23 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %24 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  store i64 0, i64* %8, align 8
  br label %28

28:                                               ; preds = %37, %27
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @EMAC_MAX_TXRX_CHANNELS, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %34 = load i64, i64* %5, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @emac_set_type1addr(%struct.emac_priv* %33, i64 %34, i8* %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %8, align 8
  br label %28

40:                                               ; preds = %28
  br label %65

41:                                               ; preds = %22
  %42 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %43 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %56

46:                                               ; preds = %41
  %47 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i32 @emac_set_type2addr(%struct.emac_priv* %47, i64 %48, i8* %49, i64 %50, i32 1)
  %52 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %53 = load i64, i64* %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @emac_set_type0addr(%struct.emac_priv* %52, i64 %53, i8* %54)
  br label %64

56:                                               ; preds = %41
  %57 = load %struct.emac_priv*, %struct.emac_priv** %4, align 8
  %58 = call i64 @netif_msg_drv(%struct.emac_priv* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.device*, %struct.device** %7, align 8
  %62 = call i32 @dev_err(%struct.device* %61, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %46
  br label %65

65:                                               ; preds = %64, %40
  br label %66

66:                                               ; preds = %65, %17
  ret void
}

declare dso_local i32 @emac_set_type0addr(%struct.emac_priv*, i64, i8*) #1

declare dso_local i32 @emac_set_type1addr(%struct.emac_priv*, i64, i8*) #1

declare dso_local i32 @emac_set_type2addr(%struct.emac_priv*, i64, i8*, i64, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.emac_priv*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

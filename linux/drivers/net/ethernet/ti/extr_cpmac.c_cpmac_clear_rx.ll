; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_clear_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpmac.c_cpmac_clear_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cpmac_priv = type { i32, %struct.cpmac_desc* }
%struct.cpmac_desc = type { i32, %struct.TYPE_4__*, %struct.cpmac_desc*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@CPMAC_OWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"packet dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_clear_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_clear_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cpmac_priv*, align 8
  %4 = alloca %struct.cpmac_desc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %3, align 8
  %8 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %9 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %8, i32 0, i32 1
  %10 = load %struct.cpmac_desc*, %struct.cpmac_desc** %9, align 8
  %11 = icmp ne %struct.cpmac_desc* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %83

17:                                               ; preds = %1
  %18 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %19 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %18, i32 0, i32 1
  %20 = load %struct.cpmac_desc*, %struct.cpmac_desc** %19, align 8
  store %struct.cpmac_desc* %20, %struct.cpmac_desc** %4, align 8
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %73, %17
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %24 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %76

27:                                               ; preds = %21
  %28 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %29 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CPMAC_OWN, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %27
  %35 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %36 = call i64 @netif_msg_rx_err(%struct.cpmac_priv* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = call i64 (...) @net_ratelimit()
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @netdev_warn(%struct.net_device* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %38, %34
  %45 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %46 = call i32 @netif_msg_hw(%struct.cpmac_priv* %45)
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %52 = call i32 @cpmac_dump_desc(%struct.net_device* %50, %struct.cpmac_desc* %51)
  br label %53

53:                                               ; preds = %49, %44
  %54 = load i32, i32* @CPMAC_OWN, align 4
  %55 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %56 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %53, %27
  %63 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %64 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %63, i32 0, i32 2
  %65 = load %struct.cpmac_desc*, %struct.cpmac_desc** %64, align 8
  %66 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %69 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = load %struct.cpmac_desc*, %struct.cpmac_desc** %4, align 8
  %71 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %70, i32 0, i32 2
  %72 = load %struct.cpmac_desc*, %struct.cpmac_desc** %71, align 8
  store %struct.cpmac_desc* %72, %struct.cpmac_desc** %4, align 8
  br label %73

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %21

76:                                               ; preds = %21
  %77 = load %struct.cpmac_priv*, %struct.cpmac_priv** %3, align 8
  %78 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %77, i32 0, i32 1
  %79 = load %struct.cpmac_desc*, %struct.cpmac_desc** %78, align 8
  %80 = getelementptr inbounds %struct.cpmac_desc, %struct.cpmac_desc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  br label %83

83:                                               ; preds = %76, %16
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.cpmac_priv*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_msg_hw(%struct.cpmac_priv*) #1

declare dso_local i32 @cpmac_dump_desc(%struct.net_device*, %struct.cpmac_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

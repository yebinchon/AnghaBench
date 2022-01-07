; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_setup_mss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_setup_mss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.xgene_enet_pdata = type { i32, i32*, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*, i32, i32)* }

@EBUSY = common dso_local global i32 0, align 4
@NUM_MSS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xgene_enet_setup_mss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_setup_mss(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgene_enet_pdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %8)
  store %struct.xgene_enet_pdata* %9, %struct.xgene_enet_pdata** %5, align 8
  %10 = load i32, i32* @EBUSY, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %6, align 4
  %12 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %13 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %15
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @NUM_MSS_REG, align 4
  %21 = icmp slt i32 %19, %20
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %48

24:                                               ; preds = %22
  %25 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %26 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %24
  %35 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %36 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %35, i32 0, i32 3
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %34, %24
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %15

48:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %49

49:                                               ; preds = %94, %48
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @NUM_MSS_REG, align 4
  %55 = icmp slt i32 %53, %54
  br label %56

56:                                               ; preds = %52, %49
  %57 = phi i1 [ false, %49 ], [ %55, %52 ]
  br i1 %57, label %58, label %97

58:                                               ; preds = %56
  %59 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %60 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %93, label %67

67:                                               ; preds = %58
  %68 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %69 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %77 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %76, i32 0, i32 2
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32 (%struct.xgene_enet_pdata*, i32, i32)*, i32 (%struct.xgene_enet_pdata*, i32, i32)** %79, align 8
  %81 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 %80(%struct.xgene_enet_pdata* %81, i32 %82, i32 %83)
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %87 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  %92 = load i32, i32* %7, align 4
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %67, %58
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %49

97:                                               ; preds = %56
  %98 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %5, align 8
  %99 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

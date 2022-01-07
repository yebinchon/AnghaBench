; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_uns.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defza.c_fza_uns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fza_private = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@FZA_RING_OWN_MASK = common dso_local global i32 0, align 4
@FZA_RING_OWN_FZA = common dso_local global i32 0, align 4
@FZA_RING_UNS_RX_OVER = common dso_local global i64 0, align 8
@FZA_RING_UNS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fza_uns to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fza_uns(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fza_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fza_private* @netdev_priv(%struct.net_device* %6)
  store %struct.fza_private* %7, %struct.fza_private** %3, align 8
  br label %8

8:                                                ; preds = %1, %48
  %9 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %10 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %13 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @readl_o(i32* %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @FZA_RING_OWN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @FZA_RING_OWN_FZA, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %8
  br label %66

26:                                               ; preds = %8
  %27 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %28 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i64 @readl_u(i32* %33)
  %35 = load i64, i64* @FZA_RING_UNS_RX_OVER, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %26
  %38 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %39 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %44 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %37, %26
  %49 = load i32, i32* @FZA_RING_OWN_FZA, align 4
  %50 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %51 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %50, i32 0, i32 1
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i32 @writel_o(i32 %49, i32* %56)
  %58 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %59 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  %62 = load i32, i32* @FZA_RING_UNS_SIZE, align 4
  %63 = srem i32 %61, %62
  %64 = load %struct.fza_private*, %struct.fza_private** %3, align 8
  %65 = getelementptr inbounds %struct.fza_private, %struct.fza_private* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %8

66:                                               ; preds = %25
  ret void
}

declare dso_local %struct.fza_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl_o(i32*) #1

declare dso_local i64 @readl_u(i32*) #1

declare dso_local i32 @writel_o(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

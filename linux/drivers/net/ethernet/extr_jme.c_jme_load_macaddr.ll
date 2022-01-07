; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_load_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_load_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.jme_adapter = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@JME_RXUMA_LO = common dso_local global i32 0, align 4
@JME_RXUMA_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @jme_load_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_load_macaddr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.jme_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.jme_adapter* %8, %struct.jme_adapter** %3, align 8
  %9 = load i32, i32* @ETH_ALEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_bh(i32* %14)
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %17 = load i32, i32* @JME_RXUMA_LO, align 4
  %18 = call i32 @jread32(%struct.jme_adapter* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds i8, i8* %12, i64 0
  store i8 %22, i8* %23, align 16
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = and i32 %25, 255
  %27 = trunc i32 %26 to i8
  %28 = getelementptr inbounds i8, i8* %12, i64 1
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds i8, i8* %12, i64 2
  store i8 %32, i8* %33, align 2
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 255
  %37 = trunc i32 %36 to i8
  %38 = getelementptr inbounds i8, i8* %12, i64 3
  store i8 %37, i8* %38, align 1
  %39 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %40 = load i32, i32* @JME_RXUMA_HI, align 4
  %41 = call i32 @jread32(%struct.jme_adapter* %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = ashr i32 %42, 0
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = getelementptr inbounds i8, i8* %12, i64 4
  store i8 %45, i8* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = getelementptr inbounds i8, i8* %12, i64 5
  store i8 %50, i8* %51, align 1
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcpy(i32 %54, i8* %12, i32 %55)
  %57 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %60)
  ret void
}

declare dso_local %struct.jme_adapter* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

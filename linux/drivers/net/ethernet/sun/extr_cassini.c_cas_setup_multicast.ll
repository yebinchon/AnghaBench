; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_setup_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_setup_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@MAC_RX_CFG_PROMISC_EN = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MAC_RX_CFG_HASH_FILTER_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*)* @cas_setup_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_setup_multicast(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cas*, %struct.cas** %2, align 8
  %6 = getelementptr inbounds %struct.cas, %struct.cas* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @MAC_RX_CFG_PROMISC_EN, align 4
  %15 = load i32, i32* %3, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %3, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load %struct.cas*, %struct.cas** %2, align 8
  %19 = getelementptr inbounds %struct.cas, %struct.cas* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @IFF_ALLMULTI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %17
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 16
  br i1 %29, label %30, label %41

30:                                               ; preds = %27
  %31 = load %struct.cas*, %struct.cas** %2, align 8
  %32 = getelementptr inbounds %struct.cas, %struct.cas* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @REG_MAC_HASH_TABLEN(i32 %34)
  %36 = add nsw i64 %33, %35
  %37 = call i32 @writel(i32 65535, i64 %36)
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %27

41:                                               ; preds = %27
  %42 = load i32, i32* @MAC_RX_CFG_HASH_FILTER_EN, align 4
  %43 = load i32, i32* %3, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %51

45:                                               ; preds = %17
  %46 = load %struct.cas*, %struct.cas** %2, align 8
  %47 = call i32 @cas_process_mc_list(%struct.cas* %46)
  %48 = load i32, i32* @MAC_RX_CFG_HASH_FILTER_EN, align 4
  %49 = load i32, i32* %3, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %41
  br label %52

52:                                               ; preds = %51, %13
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @REG_MAC_HASH_TABLEN(i32) #1

declare dso_local i32 @cas_process_mc_list(%struct.cas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

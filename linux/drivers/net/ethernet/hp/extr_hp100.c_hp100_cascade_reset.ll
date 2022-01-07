; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_cascade_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_cascade_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.hp100_private = type { i64 }

@HP100_HW_RST = common dso_local global i32 0, align 4
@HP100_RESET_LB = common dso_local global i32 0, align 4
@OPTION_LSW = common dso_local global i32 0, align 4
@HP100_CHIPID_LASSEN = common dso_local global i64 0, align 8
@HW_MAP = common dso_local global i32 0, align 4
@HP100_PCI_RESET = common dso_local global i32 0, align 4
@PCICTRL2 = common dso_local global i32 0, align 4
@PERFORMANCE = common dso_local global i32 0, align 4
@HP100_SET_LB = common dso_local global i32 0, align 4
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i64)* @hp100_cascade_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_cascade_reset(%struct.net_device* %0, i64 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hp100_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %10)
  store %struct.hp100_private* %11, %struct.hp100_private** %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load i32, i32* @HP100_HW_RST, align 4
  %16 = load i32, i32* @HP100_RESET_LB, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @OPTION_LSW, align 4
  %19 = call i32 @hp100_outw(i32 %17, i32 %18)
  %20 = load %struct.hp100_private*, %struct.hp100_private** %6, align 8
  %21 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @HP100_CHIPID_LASSEN, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %42

25:                                               ; preds = %14
  %26 = load i32, i32* @HW_MAP, align 4
  %27 = call i32 @hp100_page(i32 %26)
  %28 = load i32, i32* @HP100_PCI_RESET, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* @PCICTRL2, align 4
  %31 = call i32 @hp100_andb(i32 %29, i32 %30)
  %32 = load i32, i32* @HP100_PCI_RESET, align 4
  %33 = load i32, i32* @PCICTRL2, align 4
  %34 = call i32 @hp100_orb(i32 %32, i32 %33)
  %35 = call i32 @udelay(i32 400)
  %36 = load i32, i32* @HP100_PCI_RESET, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* @PCICTRL2, align 4
  %39 = call i32 @hp100_andb(i32 %37, i32 %38)
  %40 = load i32, i32* @PERFORMANCE, align 4
  %41 = call i32 @hp100_page(i32 %40)
  br label %42

42:                                               ; preds = %25, %14
  br label %52

43:                                               ; preds = %2
  %44 = load i32, i32* @HP100_HW_RST, align 4
  %45 = load i32, i32* @HP100_SET_LB, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @OPTION_LSW, align 4
  %48 = call i32 @hp100_outw(i32 %46, i32 %47)
  %49 = call i32 @udelay(i32 400)
  %50 = load i32, i32* @PERFORMANCE, align 4
  %51 = call i32 @hp100_page(i32 %50)
  br label %52

52:                                               ; preds = %43, %42
  ret void
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hp100_outw(i32, i32) #1

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i32 @hp100_andb(i32, i32) #1

declare dso_local i32 @hp100_orb(i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

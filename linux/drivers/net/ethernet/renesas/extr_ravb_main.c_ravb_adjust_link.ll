; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_ravb_main.c_ravb_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64 }
%struct.ravb_private = type { i64, i32, i64, i64 }

@ECMR = common dso_local global i32 0, align 4
@ECMR_TXF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ravb_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ravb_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ravb_private*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ravb_private* @netdev_priv(%struct.net_device* %7)
  store %struct.ravb_private* %8, %struct.ravb_private** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %13 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %17 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @ravb_rcv_snd_disable(%struct.net_device* %21)
  br label %23

23:                                               ; preds = %20, %1
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %33 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %41 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.net_device*, %struct.net_device** %2, align 8
  %43 = call i32 @ravb_set_rate(%struct.net_device* %42)
  br label %44

44:                                               ; preds = %36, %28
  %45 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %46 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = load i32, i32* @ECMR, align 4
  %52 = load i32, i32* @ECMR_TXF, align 4
  %53 = call i32 @ravb_modify(%struct.net_device* %50, i32 %51, i32 %52, i32 0)
  store i32 1, i32* %5, align 4
  %54 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %58 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %49, %44
  br label %71

60:                                               ; preds = %23
  %61 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %62 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  store i32 1, i32* %5, align 4
  %66 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %67 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %69 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %68, i32 0, i32 0
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %59
  %72 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %73 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %78 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = call i32 @ravb_rcv_snd_enable(%struct.net_device* %82)
  br label %84

84:                                               ; preds = %81, %76, %71
  %85 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %86 = getelementptr inbounds %struct.ravb_private, %struct.ravb_private* %85, i32 0, i32 1
  %87 = load i64, i64* %6, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load %struct.ravb_private*, %struct.ravb_private** %3, align 8
  %93 = call i64 @netif_msg_link(%struct.ravb_private* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %91
  %96 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %97 = call i32 @phy_print_status(%struct.phy_device* %96)
  br label %98

98:                                               ; preds = %95, %91, %84
  ret void
}

declare dso_local %struct.ravb_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ravb_rcv_snd_disable(%struct.net_device*) #1

declare dso_local i32 @ravb_set_rate(%struct.net_device*) #1

declare dso_local i32 @ravb_modify(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @ravb_rcv_snd_enable(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @netif_msg_link(%struct.ravb_private*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

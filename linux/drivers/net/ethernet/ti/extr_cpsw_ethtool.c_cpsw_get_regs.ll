; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.cpsw_common = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpsw_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cpsw_common*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device* %11)
  store %struct.cpsw_common* %12, %struct.cpsw_common** %8, align 8
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %14 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.cpsw_common*, %struct.cpsw_common** %8, align 8
  %19 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @cpsw_ale_dump(i32 %20, i32* %21)
  ret void
}

declare dso_local %struct.cpsw_common* @ndev_to_cpsw(%struct.net_device*) #1

declare dso_local i32 @cpsw_ale_dump(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

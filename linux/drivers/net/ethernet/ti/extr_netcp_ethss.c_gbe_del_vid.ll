; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_del_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_del_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_intf = type { i32, %struct.gbe_priv* }
%struct.gbe_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gbe_del_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_del_vid(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbe_intf*, align 8
  %6 = alloca %struct.gbe_priv*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.gbe_intf*
  store %struct.gbe_intf* %8, %struct.gbe_intf** %5, align 8
  %9 = load %struct.gbe_intf*, %struct.gbe_intf** %5, align 8
  %10 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %9, i32 0, i32 1
  %11 = load %struct.gbe_priv*, %struct.gbe_priv** %10, align 8
  store %struct.gbe_priv* %11, %struct.gbe_priv** %6, align 8
  %12 = load %struct.gbe_priv*, %struct.gbe_priv** %6, align 8
  %13 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @cpsw_ale_del_vlan(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.gbe_intf*, %struct.gbe_intf** %5, align 8
  %19 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clear_bit(i32 %17, i32 %20)
  ret i32 0
}

declare dso_local i32 @cpsw_ale_del_vlan(i32, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

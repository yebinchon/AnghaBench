; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { i64*, i32 }
%struct.usb_interface = type { i32 }
%struct.lan78xx_priv = type { i32, i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"free pdata\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan78xx_net*, %struct.usb_interface*)* @lan78xx_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan78xx_unbind(%struct.lan78xx_net* %0, %struct.usb_interface* %1) #0 {
  %3 = alloca %struct.lan78xx_net*, align 8
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.lan78xx_priv*, align 8
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %3, align 8
  store %struct.usb_interface* %1, %struct.usb_interface** %4, align 8
  %6 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %7 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %6, i32 0, i32 0
  %8 = load i64*, i64** %7, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.lan78xx_priv*
  store %struct.lan78xx_priv* %11, %struct.lan78xx_priv** %5, align 8
  %12 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %13 = call i32 @lan78xx_remove_irq_domain(%struct.lan78xx_net* %12)
  %14 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %15 = call i32 @lan78xx_remove_mdio(%struct.lan78xx_net* %14)
  %16 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %5, align 8
  %17 = icmp ne %struct.lan78xx_priv* %16, null
  br i1 %17, label %18, label %37

18:                                               ; preds = %2
  %19 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %5, align 8
  %20 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %19, i32 0, i32 1
  %21 = call i32 @cancel_work_sync(i32* %20)
  %22 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %5, align 8
  %23 = getelementptr inbounds %struct.lan78xx_priv, %struct.lan78xx_priv* %22, i32 0, i32 0
  %24 = call i32 @cancel_work_sync(i32* %23)
  %25 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %26 = load i32, i32* @ifdown, align 4
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %28 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @netif_dbg(%struct.lan78xx_net* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %31 = load %struct.lan78xx_priv*, %struct.lan78xx_priv** %5, align 8
  %32 = call i32 @kfree(%struct.lan78xx_priv* %31)
  store %struct.lan78xx_priv* null, %struct.lan78xx_priv** %5, align 8
  %33 = load %struct.lan78xx_net*, %struct.lan78xx_net** %3, align 8
  %34 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %33, i32 0, i32 0
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @lan78xx_remove_irq_domain(%struct.lan78xx_net*) #1

declare dso_local i32 @lan78xx_remove_mdio(%struct.lan78xx_net*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @netif_dbg(%struct.lan78xx_net*, i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.lan78xx_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

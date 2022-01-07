; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_setup_irq_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_setup_irq_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan78xx_net = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.irq_domain*, i32, i32*, i32, i32 }
%struct.irq_domain = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@INT_EP_CTL = common dso_local global i32 0, align 4
@lan78xx_irqchip = common dso_local global i32 0, align 4
@handle_simple_irq = common dso_local global i32 0, align 4
@MAX_INT_EP = common dso_local global i32 0, align 4
@chip_domain_ops = common dso_local global i32 0, align 4
@INT_EP_PHY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan78xx_net*)* @lan78xx_setup_irq_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_setup_irq_domain(%struct.lan78xx_net* %0) #0 {
  %2 = alloca %struct.lan78xx_net*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca %struct.irq_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.lan78xx_net* %0, %struct.lan78xx_net** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %9 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %8, i32 0, i32 1
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %3, align 8
  %16 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %17 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 5
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %21 = load i32, i32* @INT_EP_CTL, align 4
  %22 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %20, i32 %21, i32* %6)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %25 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %28 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 3
  store i32* @lan78xx_irqchip, i32** %29, align 8
  %30 = load i32, i32* @handle_simple_irq, align 4
  %31 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %32 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  store i32 %30, i32* %33, align 8
  %34 = load %struct.device_node*, %struct.device_node** %3, align 8
  %35 = load i32, i32* @MAX_INT_EP, align 4
  %36 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %37 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %36, i32 0, i32 0
  %38 = call %struct.irq_domain* @irq_domain_add_simple(%struct.device_node* %34, i32 %35, i32 0, i32* @chip_domain_ops, %struct.TYPE_8__* %37)
  store %struct.irq_domain* %38, %struct.irq_domain** %4, align 8
  %39 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %40 = icmp ne %struct.irq_domain* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %1
  %42 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %43 = load i32, i32* @INT_EP_PHY, align 4
  %44 = call i32 @irq_create_mapping(%struct.irq_domain* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %41
  %48 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %49 = call i32 @irq_domain_remove(%struct.irq_domain* %48)
  store %struct.irq_domain* null, %struct.irq_domain** %4, align 8
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %47, %41
  br label %56

53:                                               ; preds = %1
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %53, %52
  %57 = load %struct.irq_domain*, %struct.irq_domain** %4, align 8
  %58 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %59 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 1
  store %struct.irq_domain* %57, %struct.irq_domain** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.lan78xx_net*, %struct.lan78xx_net** %2, align 8
  %63 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local %struct.irq_domain* @irq_domain_add_simple(%struct.device_node*, i32, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i32 @irq_create_mapping(%struct.irq_domain*, i32) #1

declare dso_local i32 @irq_domain_remove(%struct.irq_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

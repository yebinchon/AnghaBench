; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_prepare_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_srab.c_b53_srab_prepare_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.b53_device = type { %struct.b53_srab_priv* }
%struct.b53_srab_priv = type { %struct.b53_srab_port_priv*, i64 }
%struct.b53_srab_port_priv = type { i32, i32, %struct.b53_device* }

@B53_SRAB_INTR = common dso_local global i64 0, align 8
@B53_N_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"link_state_p%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @b53_srab_prepare_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b53_srab_prepare_irq(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.b53_device*, align 8
  %4 = alloca %struct.b53_srab_priv*, align 8
  %5 = alloca %struct.b53_srab_port_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %9 = call %struct.b53_device* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.b53_device* %9, %struct.b53_device** %3, align 8
  %10 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %11 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %10, i32 0, i32 0
  %12 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %11, align 8
  store %struct.b53_srab_priv* %12, %struct.b53_srab_priv** %4, align 8
  %13 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %14 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @B53_SRAB_INTR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 -1, i64 %17)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %54, %1
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @B53_N_PORTS, align 4
  %22 = icmp ult i32 %20, %21
  br i1 %22, label %23, label %57

23:                                               ; preds = %19
  %24 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %25 = getelementptr inbounds %struct.b53_srab_priv, %struct.b53_srab_priv* %24, i32 0, i32 0
  %26 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %26, i64 %28
  store %struct.b53_srab_port_priv* %29, %struct.b53_srab_port_priv** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 6
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  br label %54

33:                                               ; preds = %23
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i8* @kasprintf(i32 %34, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i8* %36, i8** %7, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %60

40:                                               ; preds = %33
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %43 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.b53_device*, %struct.b53_device** %3, align 8
  %45 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %46 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %45, i32 0, i32 2
  store %struct.b53_device* %44, %struct.b53_device** %46, align 8
  %47 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @platform_get_irq_byname(%struct.platform_device* %47, i8* %48)
  %50 = load %struct.b53_srab_port_priv*, %struct.b53_srab_port_priv** %5, align 8
  %51 = getelementptr inbounds %struct.b53_srab_port_priv, %struct.b53_srab_port_priv* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @kfree(i8* %52)
  br label %54

54:                                               ; preds = %40, %32
  %55 = load i32, i32* %6, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %19

57:                                               ; preds = %19
  %58 = load %struct.b53_srab_priv*, %struct.b53_srab_priv** %4, align 8
  %59 = call i32 @b53_srab_intr_set(%struct.b53_srab_priv* %58, i32 1)
  br label %60

60:                                               ; preds = %57, %39
  ret void
}

declare dso_local %struct.b53_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @b53_srab_intr_set(%struct.b53_srab_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

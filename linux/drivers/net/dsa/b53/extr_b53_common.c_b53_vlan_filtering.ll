; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@B53_VLAN_PAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_vlan_filtering(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b53_device*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.b53_device*, %struct.b53_device** %11, align 8
  store %struct.b53_device* %12, %struct.b53_device** %7, align 8
  %13 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %14 = load i32, i32* @B53_VLAN_PAGE, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @B53_VLAN_PORT_DEF_TAG(i32 %15)
  %17 = call i32 @b53_read16(%struct.b53_device* %13, i32 %14, i32 %16, i64* %8)
  %18 = load i64, i64* %8, align 8
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %3
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %24 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %22, i64* %29, align 8
  %30 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %31 = call i64 @b53_default_pvid(%struct.b53_device* %30)
  store i64 %31, i64* %9, align 8
  br label %41

32:                                               ; preds = %3
  %33 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %34 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %32, %21
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %47 = load i32, i32* @B53_VLAN_PAGE, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @B53_VLAN_PORT_DEF_TAG(i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @b53_write16(%struct.b53_device* %46, i32 %47, i32 %49, i64 %50)
  br label %52

52:                                               ; preds = %45, %41
  %53 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %54 = load %struct.b53_device*, %struct.b53_device** %7, align 8
  %55 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @b53_enable_vlan(%struct.b53_device* %53, i32 %56, i32 %57)
  ret i32 0
}

declare dso_local i32 @b53_read16(%struct.b53_device*, i32, i32, i64*) #1

declare dso_local i32 @B53_VLAN_PORT_DEF_TAG(i32) #1

declare dso_local i64 @b53_default_pvid(%struct.b53_device*) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i64) #1

declare dso_local i32 @b53_enable_vlan(%struct.b53_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

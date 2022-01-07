; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_tag_protocol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_get_tag_protocol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { i64 }

@DSA_TAG_PROTO_NONE = common dso_local global i32 0, align 4
@BCM58XX_DEVICE_ID = common dso_local global i64 0, align 8
@B53_CPU_PORT = common dso_local global i32 0, align 4
@DSA_TAG_PROTO_BRCM_PREPEND = common dso_local global i32 0, align 4
@DSA_TAG_PROTO_BRCM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_get_tag_protocol(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 0
  %9 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  store %struct.b53_device* %9, %struct.b53_device** %6, align 8
  %10 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %11 = call i64 @is5325(%struct.b53_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %2
  %14 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %15 = call i64 @is5365(%struct.b53_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %13
  %18 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %19 = call i64 @is539x(%struct.b53_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %17
  %22 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %23 = call i64 @is531x5(%struct.b53_device* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @b53_can_enable_brcm_tags(%struct.dsa_switch* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %21, %17, %13, %2
  %31 = load i32, i32* @DSA_TAG_PROTO_NONE, align 4
  store i32 %31, i32* %3, align 4
  br label %46

32:                                               ; preds = %25
  %33 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %34 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BCM58XX_DEVICE_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @B53_CPU_PORT, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @DSA_TAG_PROTO_BRCM_PREPEND, align 4
  store i32 %43, i32* %3, align 4
  br label %46

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @DSA_TAG_PROTO_BRCM, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %42, %30
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i64 @is5325(%struct.b53_device*) #1

declare dso_local i64 @is5365(%struct.b53_device*) #1

declare dso_local i64 @is539x(%struct.b53_device*) #1

declare dso_local i64 @is531x5(%struct.b53_device*) #1

declare dso_local i32 @b53_can_enable_brcm_tags(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_mirror_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_mirror_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.b53_device* }
%struct.b53_device = type { i32 }
%struct.dsa_mall_mirror_tc_entry = type { i32 }

@B53_IG_MIR_CTL = common dso_local global i32 0, align 4
@B53_EG_MIR_CTL = common dso_local global i32 0, align 4
@B53_MGMT_PAGE = common dso_local global i32 0, align 4
@B53_MIR_CAP_CTL = common dso_local global i32 0, align 4
@CAP_PORT_MASK = common dso_local global i32 0, align 4
@MIRROR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b53_mirror_add(%struct.dsa_switch* %0, i32 %1, %struct.dsa_mall_mirror_tc_entry* %2, i32 %3) #0 {
  %5 = alloca %struct.dsa_switch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dsa_mall_mirror_tc_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b53_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.dsa_mall_mirror_tc_entry* %2, %struct.dsa_mall_mirror_tc_entry** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dsa_switch*, %struct.dsa_switch** %5, align 8
  %13 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %12, i32 0, i32 0
  %14 = load %struct.b53_device*, %struct.b53_device** %13, align 8
  store %struct.b53_device* %14, %struct.b53_device** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @B53_IG_MIR_CTL, align 4
  store i32 %18, i32* %11, align 4
  br label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @B53_EG_MIR_CTL, align 4
  store i32 %20, i32* %11, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %23 = load i32, i32* @B53_MGMT_PAGE, align 4
  %24 = load i32, i32* %11, align 4
  %25 = call i32 @b53_read16(%struct.b53_device* %22, i32 %23, i32 %24, i32* %10)
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %31 = load i32, i32* @B53_MGMT_PAGE, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @b53_write16(%struct.b53_device* %30, i32 %31, i32 %32, i32 %33)
  %35 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %36 = load i32, i32* @B53_MGMT_PAGE, align 4
  %37 = load i32, i32* @B53_MIR_CAP_CTL, align 4
  %38 = call i32 @b53_read16(%struct.b53_device* %35, i32 %36, i32 %37, i32* %10)
  %39 = load i32, i32* @CAP_PORT_MASK, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %10, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load %struct.dsa_mall_mirror_tc_entry*, %struct.dsa_mall_mirror_tc_entry** %7, align 8
  %44 = getelementptr inbounds %struct.dsa_mall_mirror_tc_entry, %struct.dsa_mall_mirror_tc_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @MIRROR_EN, align 4
  %49 = load i32, i32* %10, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %52 = load i32, i32* @B53_MGMT_PAGE, align 4
  %53 = load i32, i32* @B53_MIR_CAP_CTL, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @b53_write16(%struct.b53_device* %51, i32 %52, i32 %53, i32 %54)
  ret i32 0
}

declare dso_local i32 @b53_read16(%struct.b53_device*, i32, i32, i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @b53_write16(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_probe_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_probe_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.niu_parent* }
%struct.niu_parent = type { i64 }

@PORT_PHY_UNKNOWN = common dso_local global i64 0, align 8
@LDN_MAX = common dso_local global i32 0, align 4
@PORT_PHY_INVALID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @niu_probe_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_probe_ports(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_parent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = getelementptr inbounds %struct.niu, %struct.niu* %7, i32 0, i32 0
  %9 = load %struct.niu_parent*, %struct.niu_parent** %8, align 8
  store %struct.niu_parent* %9, %struct.niu_parent** %4, align 8
  %10 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %11 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PORT_PHY_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %1
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %18 = call i32 @walk_phys(%struct.niu* %16, %struct.niu_parent* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %2, align 4
  br label %48

23:                                               ; preds = %15
  %24 = load %struct.niu*, %struct.niu** %3, align 8
  %25 = call i32 @niu_set_ldg_timer_res(%struct.niu* %24, i32 2)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %34, %23
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @LDN_MAX, align 4
  %29 = icmp sle i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load %struct.niu*, %struct.niu** %3, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @niu_ldn_irq_enable(%struct.niu* %31, i32 %32, i32 0)
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %26

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.niu_parent*, %struct.niu_parent** %4, align 8
  %40 = getelementptr inbounds %struct.niu_parent, %struct.niu_parent* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PORT_PHY_INVALID, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %48

47:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %48

48:                                               ; preds = %47, %44, %21
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @walk_phys(%struct.niu*, %struct.niu_parent*) #1

declare dso_local i32 @niu_set_ldg_timer_res(%struct.niu*, i32) #1

declare dso_local i32 @niu_ldn_irq_enable(%struct.niu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

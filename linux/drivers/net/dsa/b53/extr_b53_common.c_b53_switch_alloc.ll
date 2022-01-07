; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_switch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { i32, i32, %struct.b53_io_ops*, i8*, %struct.dsa_switch*, %struct.device* }
%struct.dsa_switch = type { i32*, %struct.b53_device* }
%struct.device = type { i32 }
%struct.b53_io_ops = type { i32 }

@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@b53_switch_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.b53_device* @b53_switch_alloc(%struct.device* %0, %struct.b53_io_ops* %1, i8* %2) #0 {
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.b53_io_ops*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.dsa_switch*, align 8
  %9 = alloca %struct.b53_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.b53_io_ops* %1, %struct.b53_io_ops** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @DSA_MAX_PORTS, align 4
  %12 = call %struct.dsa_switch* @dsa_switch_alloc(%struct.device* %10, i32 %11)
  store %struct.dsa_switch* %12, %struct.dsa_switch** %8, align 8
  %13 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %14 = icmp ne %struct.dsa_switch* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.b53_device* null, %struct.b53_device** %4, align 8
  br label %48

16:                                               ; preds = %3
  %17 = load %struct.device*, %struct.device** %5, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.b53_device* @devm_kzalloc(%struct.device* %17, i32 40, i32 %18)
  store %struct.b53_device* %19, %struct.b53_device** %9, align 8
  %20 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %21 = icmp ne %struct.b53_device* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  store %struct.b53_device* null, %struct.b53_device** %4, align 8
  br label %48

23:                                               ; preds = %16
  %24 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %25 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %26 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %25, i32 0, i32 1
  store %struct.b53_device* %24, %struct.b53_device** %26, align 8
  %27 = load %struct.device*, %struct.device** %5, align 8
  %28 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %29 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %28, i32 0, i32 5
  store %struct.device* %27, %struct.device** %29, align 8
  %30 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %31 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %32 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %31, i32 0, i32 4
  store %struct.dsa_switch* %30, %struct.dsa_switch** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %35 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load %struct.b53_io_ops*, %struct.b53_io_ops** %6, align 8
  %37 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %38 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %37, i32 0, i32 2
  store %struct.b53_io_ops* %36, %struct.b53_io_ops** %38, align 8
  %39 = load %struct.dsa_switch*, %struct.dsa_switch** %8, align 8
  %40 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %39, i32 0, i32 0
  store i32* @b53_switch_ops, i32** %40, align 8
  %41 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %42 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %41, i32 0, i32 1
  %43 = call i32 @mutex_init(i32* %42)
  %44 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  %45 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %44, i32 0, i32 0
  %46 = call i32 @mutex_init(i32* %45)
  %47 = load %struct.b53_device*, %struct.b53_device** %9, align 8
  store %struct.b53_device* %47, %struct.b53_device** %4, align 8
  br label %48

48:                                               ; preds = %23, %22, %15
  %49 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  ret %struct.b53_device* %49
}

declare dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local %struct.b53_device* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

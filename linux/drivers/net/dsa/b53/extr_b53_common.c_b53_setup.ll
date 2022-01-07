; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/b53/extr_b53_common.c_b53_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, i32, %struct.b53_device* }
%struct.b53_device = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to reset switch\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to apply configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @b53_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.b53_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 2
  %9 = load %struct.b53_device*, %struct.b53_device** %8, align 8
  store %struct.b53_device* %9, %struct.b53_device** %4, align 8
  %10 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %11 = call i32 @b53_reset_switch(%struct.b53_device* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %16 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %22 = call i32 @b53_reset_mib(%struct.b53_device* %21)
  %23 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %24 = call i32 @b53_apply_config(%struct.b53_device* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %29 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32 %30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %20
  store i32 0, i32* %5, align 4
  br label %33

33:                                               ; preds = %53, %32
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %36 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %33
  %40 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load %struct.b53_device*, %struct.b53_device** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @b53_enable_cpu_port(%struct.b53_device* %45, i32 %46)
  br label %52

48:                                               ; preds = %39
  %49 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @b53_disable_port(%struct.dsa_switch* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %33

56:                                               ; preds = %33
  %57 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %58 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %56, %14
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @b53_reset_switch(%struct.b53_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @b53_reset_mib(%struct.b53_device*) #1

declare dso_local i32 @b53_apply_config(%struct.b53_device*) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @b53_enable_cpu_port(%struct.b53_device*, i32) #1

declare dso_local i32 @b53_disable_port(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

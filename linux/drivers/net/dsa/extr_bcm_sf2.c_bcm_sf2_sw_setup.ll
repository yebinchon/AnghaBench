; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @bcm_sf2_sw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_sw_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %5 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %6 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %5)
  store %struct.bcm_sf2_priv* %6, %struct.bcm_sf2_priv** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %10 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %7
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i64 @dsa_is_user_port(%struct.dsa_switch* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @bcm_sf2_port_setup(%struct.dsa_switch* %20, i32 %21, i32* null)
  br label %37

23:                                               ; preds = %14
  %24 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @bcm_sf2_imp_setup(%struct.dsa_switch* %29, i32 %30)
  br label %36

32:                                               ; preds = %23
  %33 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bcm_sf2_port_disable(%struct.dsa_switch* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  br label %37

37:                                               ; preds = %36, %19
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %7

41:                                               ; preds = %7
  %42 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %43 = call i32 @b53_configure_vlan(%struct.dsa_switch* %42)
  %44 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %45 = call i32 @bcm_sf2_enable_acb(%struct.dsa_switch* %44)
  ret i32 0
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i64 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @bcm_sf2_port_setup(%struct.dsa_switch*, i32, i32*) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @bcm_sf2_imp_setup(%struct.dsa_switch*, i32) #1

declare dso_local i32 @bcm_sf2_port_disable(%struct.dsa_switch*, i32) #1

declare dso_local i32 @b53_configure_vlan(%struct.dsa_switch*) #1

declare dso_local i32 @bcm_sf2_enable_acb(%struct.dsa_switch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

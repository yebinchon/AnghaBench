; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @bcm_sf2_sw_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_sw_suspend(%struct.dsa_switch* %0) #0 {
  %2 = alloca %struct.dsa_switch*, align 8
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %2, align 8
  %5 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %6 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %5)
  store %struct.bcm_sf2_priv* %6, %struct.bcm_sf2_priv** %3, align 8
  %7 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %8 = call i32 @bcm_sf2_intr_disable(%struct.bcm_sf2_priv* %7)
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %33

15:                                               ; preds = %9
  %16 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @dsa_is_user_port(%struct.dsa_switch* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20, %15
  %26 = load %struct.dsa_switch*, %struct.dsa_switch** %2, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @bcm_sf2_port_disable(%struct.dsa_switch* %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %9

33:                                               ; preds = %9
  ret i32 0
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @bcm_sf2_intr_disable(%struct.bcm_sf2_priv*) #1

declare dso_local i64 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @bcm_sf2_port_disable(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

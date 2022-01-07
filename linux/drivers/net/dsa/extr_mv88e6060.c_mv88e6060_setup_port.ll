; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6060_priv = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PORT_CONTROL = common dso_local global i32 0, align 4
@PORT_CONTROL_TRAILER = common dso_local global i32 0, align 4
@PORT_CONTROL_INGRESS_MODE = common dso_local global i32 0, align 4
@PORT_CONTROL_STATE_FORWARDING = common dso_local global i32 0, align 4
@PORT_VLAN_MAP = common dso_local global i32 0, align 4
@PORT_VLAN_MAP_DBNUM_SHIFT = common dso_local global i32 0, align 4
@PORT_ASSOC_VECTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6060_priv*, i32)* @mv88e6060_setup_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6060_setup_port(%struct.mv88e6060_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6060_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv88e6060_priv* %0, %struct.mv88e6060_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @REG_PORT(i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @PORT_CONTROL, align 4
  %13 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %14 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @dsa_is_cpu_port(i32 %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @PORT_CONTROL_TRAILER, align 4
  %21 = load i32, i32* @PORT_CONTROL_INGRESS_MODE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PORT_CONTROL_STATE_FORWARDING, align 4
  %24 = or i32 %22, %23
  br label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @PORT_CONTROL_STATE_FORWARDING, align 4
  br label %27

27:                                               ; preds = %25, %19
  %28 = phi i32 [ %24, %19 ], [ %26, %25 ]
  %29 = call i32 @reg_write(%struct.mv88e6060_priv* %10, i32 %11, i32 %12, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %79

34:                                               ; preds = %27
  %35 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PORT_VLAN_MAP, align 4
  %38 = load i32, i32* %5, align 4
  %39 = and i32 %38, 15
  %40 = load i32, i32* @PORT_VLAN_MAP_DBNUM_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %43 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @dsa_is_cpu_port(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dsa_user_ports(i32 %51)
  br label %64

53:                                               ; preds = %34
  %54 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call %struct.TYPE_4__* @dsa_to_port(i32 %56, i32 %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @BIT(i32 %62)
  br label %64

64:                                               ; preds = %53, %48
  %65 = phi i32 [ %52, %48 ], [ %63, %53 ]
  %66 = or i32 %41, %65
  %67 = call i32 @reg_write(%struct.mv88e6060_priv* %35, i32 %36, i32 %37, i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %3, align 4
  br label %79

72:                                               ; preds = %64
  %73 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @PORT_ASSOC_VECTOR, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @BIT(i32 %76)
  %78 = call i32 @reg_write(%struct.mv88e6060_priv* %73, i32 %74, i32 %75, i32 %77)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %70, %32
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @REG_PORT(i32) #1

declare dso_local i32 @reg_write(%struct.mv88e6060_priv*, i32, i32, i32) #1

declare dso_local i64 @dsa_is_cpu_port(i32, i32) #1

declare dso_local i32 @dsa_user_ports(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.TYPE_4__* @dsa_to_port(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

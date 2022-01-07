; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_bridge_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_port_bridge_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mt7530_priv* }
%struct.mt7530_priv = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.net_device = type { i32 }
%struct.TYPE_4__ = type { %struct.net_device* }

@MT7530_CPU_PORT = common dso_local global i32 0, align 4
@MT7530_NUM_PORTS = common dso_local global i32 0, align 4
@PCR_MATRIX_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, %struct.net_device*)* @mt7530_port_bridge_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_port_bridge_join(%struct.dsa_switch* %0, i32 %1, %struct.net_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.mt7530_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.net_device* %2, %struct.net_device** %6, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.mt7530_priv*, %struct.mt7530_priv** %11, align 8
  store %struct.mt7530_priv* %12, %struct.mt7530_priv** %7, align 8
  %13 = load i32, i32* @MT7530_CPU_PORT, align 4
  %14 = call i32 @BIT(i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %16 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %76, %3
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @MT7530_NUM_PORTS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %79

22:                                               ; preds = %18
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i64 @dsa_is_user_port(%struct.dsa_switch* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %75

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %75

31:                                               ; preds = %27
  %32 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch* %32, i32 %33)
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.net_device*, %struct.net_device** %35, align 8
  %37 = load %struct.net_device*, %struct.net_device** %6, align 8
  %38 = icmp ne %struct.net_device* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %76

40:                                               ; preds = %31
  %41 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %42 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @MT7530_PCR_P(i32 %52)
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @BIT(i32 %54)
  %56 = call i32 @PCR_MATRIX(i32 %55)
  %57 = call i32 @mt7530_set(%struct.mt7530_priv* %51, i32 %53, i32 %56)
  br label %58

58:                                               ; preds = %50, %40
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = call i32 @PCR_MATRIX(i32 %60)
  %62 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %63 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, %61
  store i32 %70, i32* %68, align 8
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @BIT(i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %58, %27, %22
  br label %76

76:                                               ; preds = %75, %39
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %18

79:                                               ; preds = %18
  %80 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %81 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %79
  %90 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @MT7530_PCR_P(i32 %91)
  %93 = load i32, i32* @PCR_MATRIX_MASK, align 4
  %94 = load i32, i32* %8, align 4
  %95 = call i32 @PCR_MATRIX(i32 %94)
  %96 = call i32 @mt7530_rmw(%struct.mt7530_priv* %90, i32 %92, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %89, %79
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @PCR_MATRIX(i32 %98)
  %100 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %101 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = or i32 %107, %99
  store i32 %108, i32* %106, align 8
  %109 = load %struct.mt7530_priv*, %struct.mt7530_priv** %7, align 8
  %110 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  ret i32 0
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

declare dso_local %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mt7530_set(%struct.mt7530_priv*, i32, i32) #1

declare dso_local i32 @MT7530_PCR_P(i32) #1

declare dso_local i32 @PCR_MATRIX(i32) #1

declare dso_local i32 @mt7530_rmw(%struct.mt7530_priv*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_register_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_register_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i32, i32, %struct.sfp_upstream_ops*, i32, %struct.TYPE_2__*, i64, i64 }
%struct.sfp_upstream_ops = type { i32 (i32, i64)*, i32 (i32, %struct.sfp_bus.0*)*, i32 (i32)* }
%struct.sfp_bus.0 = type opaque
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp_bus*)* @sfp_register_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_register_bus(%struct.sfp_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sfp_bus*, align 8
  %4 = alloca %struct.sfp_upstream_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.sfp_bus* %0, %struct.sfp_bus** %3, align 8
  %6 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %7 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %6, i32 0, i32 2
  %8 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %7, align 8
  store %struct.sfp_upstream_ops* %8, %struct.sfp_upstream_ops** %4, align 8
  %9 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %4, align 8
  %10 = icmp ne %struct.sfp_upstream_ops* %9, null
  br i1 %10, label %11, label %51

11:                                               ; preds = %1
  %12 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %4, align 8
  %13 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %12, i32 0, i32 2
  %14 = load i32 (i32)*, i32 (i32)** %13, align 8
  %15 = icmp ne i32 (i32)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %4, align 8
  %18 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %17, i32 0, i32 2
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %21 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 %19(i32 %22)
  br label %24

24:                                               ; preds = %16, %11
  %25 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %4, align 8
  %26 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %25, i32 0, i32 0
  %27 = load i32 (i32, i64)*, i32 (i32, i64)** %26, align 8
  %28 = icmp ne i32 (i32, i64)* %27, null
  br i1 %28, label %29, label %50

29:                                               ; preds = %24
  %30 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %31 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %30, i32 0, i32 6
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %50

34:                                               ; preds = %29
  %35 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %4, align 8
  %36 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %35, i32 0, i32 0
  %37 = load i32 (i32, i64)*, i32 (i32, i64)** %36, align 8
  %38 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %39 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %42 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %41, i32 0, i32 6
  %43 = load i64, i64* %42, align 8
  %44 = call i32 %37(i32 %40, i64 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %89

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %29, %24
  br label %51

51:                                               ; preds = %50, %1
  %52 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %53 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %52, i32 0, i32 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  %56 = load i32 (i32)*, i32 (i32)** %55, align 8
  %57 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %58 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 %56(i32 %59)
  %61 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %62 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %51
  %66 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %67 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %66, i32 0, i32 4
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32 (i32)*, i32 (i32)** %69, align 8
  %71 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %72 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %70(i32 %73)
  br label %75

75:                                               ; preds = %65, %51
  %76 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %77 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %76, i32 0, i32 2
  %78 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %77, align 8
  %79 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %78, i32 0, i32 1
  %80 = load i32 (i32, %struct.sfp_bus.0*)*, i32 (i32, %struct.sfp_bus.0*)** %79, align 8
  %81 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %82 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %85 = bitcast %struct.sfp_bus* %84 to %struct.sfp_bus.0*
  %86 = call i32 %80(i32 %83, %struct.sfp_bus.0* %85)
  %87 = load %struct.sfp_bus*, %struct.sfp_bus** %3, align 8
  %88 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  store i32 0, i32* %2, align 4
  br label %89

89:                                               ; preds = %75, %47
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

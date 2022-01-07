; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_unregister_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp-bus.c_sfp_unregister_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp_bus = type { i32, i32, i64, i32, %struct.TYPE_2__*, i64, %struct.sfp_upstream_ops* }
%struct.TYPE_2__ = type { i32 (i32)*, i32 (i32)* }
%struct.sfp_upstream_ops = type { i32 (i32)*, i32 (i32, %struct.sfp_bus.0*)* }
%struct.sfp_bus.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp_bus*)* @sfp_unregister_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_unregister_bus(%struct.sfp_bus* %0) #0 {
  %2 = alloca %struct.sfp_bus*, align 8
  %3 = alloca %struct.sfp_upstream_ops*, align 8
  store %struct.sfp_bus* %0, %struct.sfp_bus** %2, align 8
  %4 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %5 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %4, i32 0, i32 6
  %6 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %5, align 8
  store %struct.sfp_upstream_ops* %6, %struct.sfp_upstream_ops** %3, align 8
  %7 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %8 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %1
  %12 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %13 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %12, i32 0, i32 6
  %14 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %13, align 8
  %15 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %14, i32 0, i32 1
  %16 = load i32 (i32, %struct.sfp_bus.0*)*, i32 (i32, %struct.sfp_bus.0*)** %15, align 8
  %17 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %18 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %21 = bitcast %struct.sfp_bus* %20 to %struct.sfp_bus.0*
  %22 = call i32 %16(i32 %19, %struct.sfp_bus.0* %21)
  %23 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %24 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %23, i32 0, i32 5
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %11
  %28 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %29 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (i32)*, i32 (i32)** %31, align 8
  %33 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %34 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i32 %32(i32 %35)
  br label %37

37:                                               ; preds = %27, %11
  %38 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %39 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %38, i32 0, i32 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32 (i32)*, i32 (i32)** %41, align 8
  %43 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %44 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 %42(i32 %45)
  %47 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %48 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %67

51:                                               ; preds = %37
  %52 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %3, align 8
  %53 = icmp ne %struct.sfp_upstream_ops* %52, null
  br i1 %53, label %54, label %67

54:                                               ; preds = %51
  %55 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %3, align 8
  %56 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %55, i32 0, i32 0
  %57 = load i32 (i32)*, i32 (i32)** %56, align 8
  %58 = icmp ne i32 (i32)* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %54
  %60 = load %struct.sfp_upstream_ops*, %struct.sfp_upstream_ops** %3, align 8
  %61 = getelementptr inbounds %struct.sfp_upstream_ops, %struct.sfp_upstream_ops* %60, i32 0, i32 0
  %62 = load i32 (i32)*, i32 (i32)** %61, align 8
  %63 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %64 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 %62(i32 %65)
  br label %67

67:                                               ; preds = %59, %54, %51, %37
  br label %68

68:                                               ; preds = %67, %1
  %69 = load %struct.sfp_bus*, %struct.sfp_bus** %2, align 8
  %70 = getelementptr inbounds %struct.sfp_bus, %struct.sfp_bus* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

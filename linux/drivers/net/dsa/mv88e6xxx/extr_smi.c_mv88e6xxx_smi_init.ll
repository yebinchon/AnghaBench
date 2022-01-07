; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_smi.c_mv88e6xxx_smi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_smi.c_mv88e6xxx_smi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, %struct.mii_bus*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.mii_bus = type { i32 }

@mv88e6xxx_smi_dual_direct_ops = common dso_local global i32 0, align 4
@mv88e6xxx_smi_direct_ops = common dso_local global i32 0, align 4
@mv88e6xxx_smi_indirect_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_smi_init(%struct.mv88e6xxx_chip* %0, %struct.mii_bus* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store %struct.mii_bus* %1, %struct.mii_bus** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %9 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %15, i32 0, i32 2
  store i32* @mv88e6xxx_smi_dual_direct_ops, i32** %16, align 8
  br label %38

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %22 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %21, i32 0, i32 2
  store i32* @mv88e6xxx_smi_direct_ops, i32** %22, align 8
  br label %37

23:                                               ; preds = %17
  %24 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %25 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %32 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %31, i32 0, i32 2
  store i32* @mv88e6xxx_smi_indirect_ops, i32** %32, align 8
  br label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %45

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %20
  br label %38

38:                                               ; preds = %37, %14
  %39 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %41 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %40, i32 0, i32 1
  store %struct.mii_bus* %39, %struct.mii_bus** %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %44 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %38, %33
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

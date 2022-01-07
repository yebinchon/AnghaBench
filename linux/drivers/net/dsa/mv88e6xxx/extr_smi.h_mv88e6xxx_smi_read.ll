; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_smi.h_mv88e6xxx_smi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_smi.h_mv88e6xxx_smi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)* @mv88e6xxx_smi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_smi_read(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %11 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %4
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)**
  %20 = load i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)*, i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %14
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)**
  %28 = load i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)*, i32 (%struct.mv88e6xxx_chip*, i32, i32, i32*)** %27, align 8
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 %28(%struct.mv88e6xxx_chip* %29, i32 %30, i32 %31, i32* %32)
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %14, %4
  %35 = load i32, i32* @EOPNOTSUPP, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

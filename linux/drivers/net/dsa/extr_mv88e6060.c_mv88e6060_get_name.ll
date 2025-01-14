; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_get_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_get_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@PORT_SWITCH_ID = common dso_local global i32 0, align 4
@PORT_SWITCH_ID_6060 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Marvell 88E6060 (A0)\00", align 1
@PORT_SWITCH_ID_6060_R1 = common dso_local global i32 0, align 4
@PORT_SWITCH_ID_6060_R2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Marvell 88E6060 (B0)\00", align 1
@PORT_SWITCH_ID_6060_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Marvell 88E6060\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mii_bus*, i32)* @mv88e6060_get_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mv88e6060_get_name(%struct.mii_bus* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mii_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mii_bus*, %struct.mii_bus** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = sext i32 %8 to i64
  %10 = call i64 @REG_PORT(i32 0)
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* @PORT_SWITCH_ID, align 4
  %13 = call i32 @mdiobus_read(%struct.mii_bus* %7, i64 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sge i32 %14, 0
  br i1 %15, label %16, label %38

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @PORT_SWITCH_ID_6060, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  br label %39

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @PORT_SWITCH_ID_6060_R1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PORT_SWITCH_ID_6060_R2, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25, %21
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %3, align 8
  br label %39

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @PORT_SWITCH_ID_6060_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @PORT_SWITCH_ID_6060, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %3, align 8
  br label %39

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %2
  store i8* null, i8** %3, align 8
  br label %39

39:                                               ; preds = %38, %36, %29, %20
  %40 = load i8*, i8** %3, align 8
  ret i8* %40
}

declare dso_local i32 @mdiobus_read(%struct.mii_bus*, i64, i32) #1

declare dso_local i64 @REG_PORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

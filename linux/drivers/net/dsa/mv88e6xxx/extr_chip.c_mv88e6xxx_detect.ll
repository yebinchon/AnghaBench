; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.mv88e6xxx_info*, i32 }
%struct.mv88e6xxx_info = type { i32, i32 }

@MV88E6XXX_PORT_SWITCH_ID = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_SWITCH_ID_PROD_MASK = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_SWITCH_ID_REV_MASK = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"switch 0x%x detected: %s, revision %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*)* @mv88e6xxx_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_detect(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca %struct.mv88e6xxx_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %10 = call i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip* %9)
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %12 = load i32, i32* @MV88E6XXX_PORT_SWITCH_ID, align 4
  %13 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %11, i32 0, i32 %12, i32* %7)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %15 = call i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip* %14)
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %60

20:                                               ; preds = %1
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MV88E6XXX_PORT_SWITCH_ID_PROD_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MV88E6XXX_PORT_SWITCH_ID_REV_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.mv88e6xxx_info* @mv88e6xxx_lookup_info(i32 %27)
  store %struct.mv88e6xxx_info* %28, %struct.mv88e6xxx_info** %4, align 8
  %29 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %4, align 8
  %30 = icmp ne %struct.mv88e6xxx_info* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %60

34:                                               ; preds = %20
  %35 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %4, align 8
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %37 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %36, i32 0, i32 0
  store %struct.mv88e6xxx_info* %35, %struct.mv88e6xxx_info** %37, align 8
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %39 = call i32 @mv88e6xxx_g2_require(%struct.mv88e6xxx_chip* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %2, align 4
  br label %60

44:                                               ; preds = %34
  %45 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %46 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %49 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %48, i32 0, i32 0
  %50 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %49, align 8
  %51 = getelementptr inbounds %struct.mv88e6xxx_info, %struct.mv88e6xxx_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %54 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %53, i32 0, i32 0
  %55 = load %struct.mv88e6xxx_info*, %struct.mv88e6xxx_info** %54, align 8
  %56 = getelementptr inbounds %struct.mv88e6xxx_info, %struct.mv88e6xxx_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @dev_info(i32 %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %57, i32 %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %44, %42, %31, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @mv88e6xxx_reg_lock(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_reg_unlock(%struct.mv88e6xxx_chip*) #1

declare dso_local %struct.mv88e6xxx_info* @mv88e6xxx_lookup_info(i32) #1

declare dso_local i32 @mv88e6xxx_g2_require(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

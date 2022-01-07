; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_fid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_port.c_mv88e6xxx_port_set_fid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_BASE_VLAN = common dso_local global i32 0, align 4
@MV88E6XXX_PORT_CTL1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"p%d: FID set to %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_port_set_fid(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %12 = call i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %11)
  %13 = sub nsw i32 %12, 1
  %14 = ashr i32 %13, 4
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %17 = call i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %16)
  %18 = icmp sge i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %88

22:                                               ; preds = %3
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MV88E6XXX_PORT_BASE_VLAN, align 4
  %26 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %23, i32 %24, i32 %25, i32* %9)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %22
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %32, 4095
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 15
  %36 = shl i32 %35, 12
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @MV88E6XXX_PORT_BASE_VLAN, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %39, i32 %40, i32 %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %31
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %88

48:                                               ; preds = %31
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %81

51:                                               ; preds = %48
  %52 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MV88E6XXX_PORT_CTL1, align 4
  %55 = call i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip* %52, i32 %53, i32 %54, i32* %9)
  store i32 %55, i32* %10, align 4
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %88

60:                                               ; preds = %51
  %61 = load i32, i32* %8, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %9, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 4
  %67 = load i32, i32* %8, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* %9, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %9, align 4
  %71 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* @MV88E6XXX_PORT_CTL1, align 4
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip* %71, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %60
  %79 = load i32, i32* %10, align 4
  store i32 %79, i32* %4, align 4
  br label %88

80:                                               ; preds = %60
  br label %81

81:                                               ; preds = %80, %48
  %82 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %83 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_dbg(i32 %84, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %85, i32 %86)
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %81, %78, %58, %46, %29, %19
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_read(%struct.mv88e6xxx_chip*, i32, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_write(%struct.mv88e6xxx_chip*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

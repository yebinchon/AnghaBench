; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6085_g1_ip_pri_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6085_g1_ip_pri_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G1_IP_PRI_0 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_1 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_2 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_3 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_4 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_5 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_6 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_IP_PRI_7 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6085_g1_ip_pri_map(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %5 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %6 = load i32, i32* @MV88E6XXX_G1_IP_PRI_0, align 4
  %7 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %5, i32 %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %14 = load i32, i32* @MV88E6XXX_G1_IP_PRI_1, align 4
  %15 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %13, i32 %14, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %69

20:                                               ; preds = %12
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %22 = load i32, i32* @MV88E6XXX_G1_IP_PRI_2, align 4
  %23 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %21, i32 %22, i32 21845)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %4, align 4
  store i32 %27, i32* %2, align 4
  br label %69

28:                                               ; preds = %20
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %30 = load i32, i32* @MV88E6XXX_G1_IP_PRI_3, align 4
  %31 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %29, i32 %30, i32 21845)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %28
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %38 = load i32, i32* @MV88E6XXX_G1_IP_PRI_4, align 4
  %39 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %37, i32 %38, i32 43690)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %69

44:                                               ; preds = %36
  %45 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %46 = load i32, i32* @MV88E6XXX_G1_IP_PRI_5, align 4
  %47 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %45, i32 %46, i32 43690)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %69

52:                                               ; preds = %44
  %53 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %54 = load i32, i32* @MV88E6XXX_G1_IP_PRI_6, align 4
  %55 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %53, i32 %54, i32 65535)
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  store i32 %59, i32* %2, align 4
  br label %69

60:                                               ; preds = %52
  %61 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %62 = load i32, i32* @MV88E6XXX_G1_IP_PRI_7, align 4
  %63 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %61, i32 %62, i32 65535)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %66, %58, %50, %42, %34, %26, %18, %10
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

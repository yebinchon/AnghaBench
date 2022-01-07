; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G1_ATU_CTL = common dso_local global i32 0, align 4
@MV88E6XXX_G1_ATU_OP = common dso_local global i32 0, align 4
@MV88E6XXX_G1_ATU_OP_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6xxx_g1_atu_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_atu_op(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %11 = call i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %10)
  %12 = icmp sgt i32 %11, 256
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @mv88e6xxx_g1_atu_fid_write(%struct.mv88e6xxx_chip* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %80

21:                                               ; preds = %13
  br label %66

22:                                               ; preds = %3
  %23 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %24 = call i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %23)
  %25 = icmp sgt i32 %24, 64
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %28 = load i32, i32* @MV88E6XXX_G1_ATU_CTL, align 4
  %29 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %27, i32 %28, i32* %8)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = and i32 %35, 4095
  %37 = load i32, i32* %6, align 4
  %38 = shl i32 %37, 8
  %39 = and i32 %38, 61440
  %40 = or i32 %36, %39
  store i32 %40, i32* %8, align 4
  %41 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %42 = load i32, i32* @MV88E6XXX_G1_ATU_CTL, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %41, i32 %42, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %80

49:                                               ; preds = %34
  br label %61

50:                                               ; preds = %22
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %52 = call i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %51)
  %53 = icmp sgt i32 %52, 16
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = and i32 %55, 48
  %57 = shl i32 %56, 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %54, %50
  br label %61

61:                                               ; preds = %60, %49
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 15
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %21
  %67 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %68 = load i32, i32* @MV88E6XXX_G1_ATU_OP, align 4
  %69 = load i32, i32* @MV88E6XXX_G1_ATU_OP_BUSY, align 4
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %67, i32 %68, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  %76 = load i32, i32* %9, align 4
  store i32 %76, i32* %4, align 4
  br label %80

77:                                               ; preds = %66
  %78 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %79 = call i32 @mv88e6xxx_g1_atu_op_wait(%struct.mv88e6xxx_chip* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %77, %75, %47, %32, %19
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_fid_write(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g1_atu_op_wait(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

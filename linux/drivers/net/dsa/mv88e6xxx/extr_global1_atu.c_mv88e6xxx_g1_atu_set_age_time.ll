; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_set_age_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_set_age_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@MV88E6XXX_G1_ATU_CTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"AgeTime set to 0x%02x (%d ms)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g1_atu_set_age_time(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %13 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = mul i32 1, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul i32 255, %19
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ult i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24, %2
  %29 = load i32, i32* @ERANGE, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %24
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = udiv i32 %33, 2
  %35 = add i32 %32, %34
  %36 = load i32, i32* %6, align 4
  %37 = udiv i32 %35, %36
  store i32 %37, i32* %9, align 4
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %39 = load i32, i32* @MV88E6XXX_G1_ATU_CTL, align 4
  %40 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %38, i32 %39, i32* %10)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %31
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %3, align 4
  br label %69

45:                                               ; preds = %31
  %46 = load i32, i32* %10, align 4
  %47 = and i32 %46, -4081
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %53 = load i32, i32* @MV88E6XXX_G1_ATU_CTL, align 4
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %52, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %3, align 4
  br label %69

60:                                               ; preds = %45
  %61 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %62 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %6, align 4
  %67 = mul i32 %65, %66
  %68 = call i32 @dev_dbg(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %60, %58, %43, %28
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

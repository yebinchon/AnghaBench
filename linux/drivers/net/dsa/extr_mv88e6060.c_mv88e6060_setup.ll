; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mv88e6060.c_mv88e6060_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.mv88e6060_priv* }
%struct.mv88e6060_priv = type { %struct.dsa_switch* }

@MV88E6060_PORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*)* @mv88e6060_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6060_setup(%struct.dsa_switch* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca %struct.mv88e6060_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  %7 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %8 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %7, i32 0, i32 0
  %9 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %8, align 8
  store %struct.mv88e6060_priv* %9, %struct.mv88e6060_priv** %4, align 8
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %11 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mv88e6060_priv, %struct.mv88e6060_priv* %11, i32 0, i32 0
  store %struct.dsa_switch* %10, %struct.dsa_switch** %12, align 8
  %13 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %14 = call i32 @mv88e6060_switch_reset(%struct.mv88e6060_priv* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %51

19:                                               ; preds = %1
  %20 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %21 = call i32 @mv88e6060_setup_global(%struct.mv88e6060_priv* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %2, align 4
  br label %51

26:                                               ; preds = %19
  %27 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %28 = call i32 @mv88e6060_setup_addr(%struct.mv88e6060_priv* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %51

33:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %34

34:                                               ; preds = %47, %33
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @MV88E6060_PORTS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %34
  %39 = load %struct.mv88e6060_priv*, %struct.mv88e6060_priv** %4, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @mv88e6060_setup_port(%struct.mv88e6060_priv* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %38
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %34

50:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %44, %31, %24, %17
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mv88e6060_switch_reset(%struct.mv88e6060_priv*) #1

declare dso_local i32 @mv88e6060_setup_global(%struct.mv88e6060_priv*) #1

declare dso_local i32 @mv88e6060_setup_addr(%struct.mv88e6060_priv*) #1

declare dso_local i32 @mv88e6060_setup_port(%struct.mv88e6060_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

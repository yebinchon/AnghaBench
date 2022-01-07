; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_mac_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_mac_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_atu_entry = type { i32* }

@MV88E6XXX_G1_ATU_MAC01 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_atu_entry*)* @mv88e6xxx_g1_atu_mac_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_atu_mac_read(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_atu_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_atu_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_atu_entry* %1, %struct.mv88e6xxx_atu_entry** %5, align 8
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %46

12:                                               ; preds = %9
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %14 = load i64, i64* @MV88E6XXX_G1_ATU_MAC01, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %13, i64 %17, i32* %6)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %12
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, 8
  %26 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %5, align 8
  %27 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 255
  %35 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %5, align 8
  %36 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = mul nsw i32 %38, 2
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %34, i32* %42, align 4
  br label %43

43:                                               ; preds = %23
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

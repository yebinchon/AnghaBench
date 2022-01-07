; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_set_phy_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_set_phy_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }
%struct.reg_val = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, %struct.reg_val*)* @set_phy_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phy_regs(%struct.cphy* %0, %struct.reg_val* %1) #0 {
  %3 = alloca %struct.cphy*, align 8
  %4 = alloca %struct.reg_val*, align 8
  %5 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %3, align 8
  store %struct.reg_val* %1, %struct.reg_val** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %50, %2
  %7 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %8 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  br label %15

15:                                               ; preds = %11, %6
  %16 = phi i1 [ false, %6 ], [ %14, %11 ]
  br i1 %16, label %17, label %53

17:                                               ; preds = %15
  %18 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %19 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 65535
  br i1 %21, label %22, label %34

22:                                               ; preds = %17
  %23 = load %struct.cphy*, %struct.cphy** %3, align 8
  %24 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %25 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %28 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %31 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @t3_mdio_write(%struct.cphy* %23, i64 %26, i32 %29, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %49

34:                                               ; preds = %17
  %35 = load %struct.cphy*, %struct.cphy** %3, align 8
  %36 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %37 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %40 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %43 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %46 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @t3_mdio_change_bits(%struct.cphy* %35, i64 %38, i32 %41, i32 %44, i32 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %34, %22
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.reg_val*, %struct.reg_val** %4, align 8
  %52 = getelementptr inbounds %struct.reg_val, %struct.reg_val* %51, i32 1
  store %struct.reg_val* %52, %struct.reg_val** %4, align 8
  br label %6

53:                                               ; preds = %15
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i64, i32, i32) #1

declare dso_local i32 @t3_mdio_change_bits(%struct.cphy*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

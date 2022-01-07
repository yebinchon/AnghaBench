; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2005_setup_twinax_edc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2005_setup_twinax_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i64, i32* }

@ael2005_setup_twinax_edc.regs = internal constant [2 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49226, i32 65535, i32 23040 }, %struct.reg_val zeroinitializer], align 16
@ael2005_setup_twinax_edc.preemphasis = internal constant [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 49172, i32 65535, i32 65046 }, %struct.reg_val { i32 128, i32 49173, i32 65535, i32 40960 }, %struct.reg_val zeroinitializer], align 16
@phy_modtype_twinax_long = common dso_local global i32 0, align 4
@edc_twinax = common dso_local global i64 0, align 8
@EDC_TWX_AEL2005 = common dso_local global i32 0, align 4
@EDC_TWX_AEL2005_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2005_setup_twinax_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2005_setup_twinax_edc(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = call i32 @set_phy_regs(%struct.cphy* %8, %struct.reg_val* getelementptr inbounds ([2 x %struct.reg_val], [2 x %struct.reg_val]* @ael2005_setup_twinax_edc.regs, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @phy_modtype_twinax_long, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.cphy*, %struct.cphy** %4, align 8
  %18 = call i32 @set_phy_regs(%struct.cphy* %17, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2005_setup_twinax_edc.preemphasis, i64 0, i64 0))
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %16, %12, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %85

24:                                               ; preds = %19
  %25 = call i32 @msleep(i32 50)
  %26 = load %struct.cphy*, %struct.cphy** %4, align 8
  %27 = getelementptr inbounds %struct.cphy, %struct.cphy* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @edc_twinax, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %24
  %32 = load %struct.cphy*, %struct.cphy** %4, align 8
  %33 = load i32, i32* @EDC_TWX_AEL2005, align 4
  %34 = load i32, i32* @EDC_TWX_AEL2005_SIZE, align 4
  %35 = call i32 @t3_get_edc_fw(%struct.cphy* %32, i32 %33, i32 %34)
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %31, %24
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %85

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %73, %41
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = load i32, i32* @EDC_TWX_AEL2005_SIZE, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %46, 4
  %48 = icmp ult i64 %44, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  br label %53

53:                                               ; preds = %49, %42
  %54 = phi i1 [ false, %42 ], [ %52, %49 ]
  br i1 %54, label %55, label %76

55:                                               ; preds = %53
  %56 = load %struct.cphy*, %struct.cphy** %4, align 8
  %57 = load %struct.cphy*, %struct.cphy** %4, align 8
  %58 = getelementptr inbounds %struct.cphy, %struct.cphy* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cphy*, %struct.cphy** %4, align 8
  %65 = getelementptr inbounds %struct.cphy, %struct.cphy* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @t3_mdio_write(%struct.cphy* %56, i32 128, i32 %63, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %55
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %6, align 4
  br label %42

76:                                               ; preds = %53
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %76
  %80 = load i64, i64* @edc_twinax, align 8
  %81 = load %struct.cphy*, %struct.cphy** %4, align 8
  %82 = getelementptr inbounds %struct.cphy, %struct.cphy* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %39, %22
  %86 = load i32, i32* %3, align 4
  ret i32 %86
}

declare dso_local i32 @set_phy_regs(%struct.cphy*, %struct.reg_val*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @t3_get_edc_fw(%struct.cphy*, i32, i32) #1

declare dso_local i32 @t3_mdio_write(%struct.cphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

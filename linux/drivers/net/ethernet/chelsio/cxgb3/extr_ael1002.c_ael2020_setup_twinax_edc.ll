; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2020_setup_twinax_edc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_ael1002.c_ael2020_setup_twinax_edc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reg_val = type { i32, i32, i32, i32 }
%struct.cphy = type { i64, i32* }

@ael2020_setup_twinax_edc.uCclock40MHz = internal constant [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 65320, i32 65535, i32 16385 }, %struct.reg_val { i32 128, i32 65322, i32 65535, i32 2 }, %struct.reg_val zeroinitializer], align 16
@ael2020_setup_twinax_edc.uCclockActivate = internal constant [2 x %struct.reg_val] [%struct.reg_val { i32 128, i32 53248, i32 65535, i32 20992 }, %struct.reg_val zeroinitializer], align 16
@ael2020_setup_twinax_edc.uCactivate = internal constant [3 x %struct.reg_val] [%struct.reg_val { i32 128, i32 53376, i32 65535, i32 256 }, %struct.reg_val { i32 128, i32 53394, i32 65535, i32 0 }, %struct.reg_val zeroinitializer], align 16
@edc_twinax = common dso_local global i64 0, align 8
@EDC_TWX_AEL2020 = common dso_local global i32 0, align 4
@EDC_TWX_AEL2020_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*, i32)* @ael2020_setup_twinax_edc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ael2020_setup_twinax_edc(%struct.cphy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cphy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.cphy*, %struct.cphy** %4, align 8
  %9 = call i32 @set_phy_regs(%struct.cphy* %8, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2020_setup_twinax_edc.uCclock40MHz, i64 0, i64 0))
  store i32 %9, i32* %7, align 4
  %10 = call i32 @msleep(i32 500)
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %85

15:                                               ; preds = %2
  %16 = load %struct.cphy*, %struct.cphy** %4, align 8
  %17 = call i32 @set_phy_regs(%struct.cphy* %16, %struct.reg_val* getelementptr inbounds ([2 x %struct.reg_val], [2 x %struct.reg_val]* @ael2020_setup_twinax_edc.uCclockActivate, i64 0, i64 0))
  store i32 %17, i32* %7, align 4
  %18 = call i32 @msleep(i32 500)
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %85

23:                                               ; preds = %15
  %24 = load %struct.cphy*, %struct.cphy** %4, align 8
  %25 = getelementptr inbounds %struct.cphy, %struct.cphy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @edc_twinax, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.cphy*, %struct.cphy** %4, align 8
  %31 = load i32, i32* @EDC_TWX_AEL2020, align 4
  %32 = load i32, i32* @EDC_TWX_AEL2020_SIZE, align 4
  %33 = call i32 @t3_get_edc_fw(%struct.cphy* %30, i32 %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %29, %23
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %3, align 4
  br label %85

39:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %71, %39
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = load i32, i32* @EDC_TWX_AEL2020_SIZE, align 4
  %44 = sext i32 %43 to i64
  %45 = udiv i64 %44, 4
  %46 = icmp ult i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi i1 [ false, %40 ], [ %50, %47 ]
  br i1 %52, label %53, label %74

53:                                               ; preds = %51
  %54 = load %struct.cphy*, %struct.cphy** %4, align 8
  %55 = load %struct.cphy*, %struct.cphy** %4, align 8
  %56 = getelementptr inbounds %struct.cphy, %struct.cphy* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.cphy*, %struct.cphy** %4, align 8
  %63 = getelementptr inbounds %struct.cphy, %struct.cphy* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @t3_mdio_write(%struct.cphy* %54, i32 128, i32 %61, i32 %69)
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %53
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 2
  store i32 %73, i32* %6, align 4
  br label %40

74:                                               ; preds = %51
  %75 = load %struct.cphy*, %struct.cphy** %4, align 8
  %76 = call i32 @set_phy_regs(%struct.cphy* %75, %struct.reg_val* getelementptr inbounds ([3 x %struct.reg_val], [3 x %struct.reg_val]* @ael2020_setup_twinax_edc.uCactivate, i64 0, i64 0))
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %83, label %79

79:                                               ; preds = %74
  %80 = load i64, i64* @edc_twinax, align 8
  %81 = load %struct.cphy*, %struct.cphy** %4, align 8
  %82 = getelementptr inbounds %struct.cphy, %struct.cphy* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %3, align 4
  br label %85

85:                                               ; preds = %83, %37, %21, %13
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

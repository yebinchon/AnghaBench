; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_mmc_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_menelaus.c_menelaus_set_mmc_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@the_menelaus = common dso_local global %struct.TYPE_2__* null, align 8
@MENELAUS_MCT_CTRL2 = common dso_local global i32 0, align 4
@MCT_CTRL2_S1CD_BUFEN = common dso_local global i32 0, align 4
@MCT_CTRL2_S1CD_DBEN = common dso_local global i32 0, align 4
@MCT_CTRL2_S2CD_BUFEN = common dso_local global i32 0, align 4
@MCT_CTRL2_S2CD_BEN = common dso_local global i32 0, align 4
@MENELAUS_MCT_CTRL3 = common dso_local global i32 0, align 4
@MCT_CTRL3_SLOT1_EN = common dso_local global i32 0, align 4
@MCT_CTRL3_SLOT2_EN = common dso_local global i32 0, align 4
@MCT_CTRL2_VS2_SEL_D0 = common dso_local global i32 0, align 4
@MCT_CTRL2_VS2_SEL_D1 = common dso_local global i32 0, align 4
@MCT_CTRL3_S1_AUTO_EN = common dso_local global i32 0, align 4
@MCT_CTRL3_S2_AUTO_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @menelaus_set_mmc_slot(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 1
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 2
  br i1 %17, label %18, label %21

18:                                               ; preds = %15
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %150

21:                                               ; preds = %15, %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp sge i32 %22, 3
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %150

27:                                               ; preds = %21
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %32 = call i32 @menelaus_read_reg(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %145

36:                                               ; preds = %27
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* @MCT_CTRL2_S1CD_BUFEN, align 4
  %45 = load i32, i32* @MCT_CTRL2_S1CD_DBEN, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %56

49:                                               ; preds = %40
  %50 = load i32, i32* @MCT_CTRL2_S1CD_BUFEN, align 4
  %51 = load i32, i32* @MCT_CTRL2_S1CD_DBEN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %49, %43
  br label %74

57:                                               ; preds = %36
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32, i32* @MCT_CTRL2_S2CD_BUFEN, align 4
  %62 = load i32, i32* @MCT_CTRL2_S2CD_BEN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %11, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %73

66:                                               ; preds = %57
  %67 = load i32, i32* @MCT_CTRL2_S2CD_BUFEN, align 4
  %68 = load i32, i32* @MCT_CTRL2_S2CD_BEN, align 4
  %69 = or i32 %67, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %11, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %60
  br label %74

74:                                               ; preds = %73, %56
  %75 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @menelaus_write_reg(i32 %75, i32 %76)
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %145

81:                                               ; preds = %74
  %82 = load i32, i32* @MENELAUS_MCT_CTRL3, align 4
  %83 = call i32 @menelaus_read_reg(i32 %82)
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %145

87:                                               ; preds = %81
  %88 = load i32, i32* %10, align 4
  store i32 %88, i32* %11, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 1
  br i1 %90, label %91, label %104

91:                                               ; preds = %87
  %92 = load i32, i32* %7, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @MCT_CTRL3_SLOT1_EN, align 4
  %96 = load i32, i32* %11, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %103

98:                                               ; preds = %91
  %99 = load i32, i32* @MCT_CTRL3_SLOT1_EN, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %11, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %98, %94
  br label %135

104:                                              ; preds = %87
  %105 = load i32, i32* %7, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %104
  %108 = load i32, i32* @MCT_CTRL3_SLOT2_EN, align 4
  %109 = load i32, i32* %11, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %11, align 4
  br label %116

111:                                              ; preds = %104
  %112 = load i32, i32* @MCT_CTRL3_SLOT2_EN, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %11, align 4
  br label %116

116:                                              ; preds = %111, %107
  %117 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %118 = call i32 @menelaus_read_reg(i32 %117)
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* @MCT_CTRL2_VS2_SEL_D0, align 4
  %120 = load i32, i32* @MCT_CTRL2_VS2_SEL_D1, align 4
  %121 = or i32 %119, %120
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %12, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* %12, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* @MENELAUS_MCT_CTRL2, align 4
  %129 = load i32, i32* %12, align 4
  %130 = call i32 @menelaus_write_reg(i32 %128, i32 %129)
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %116
  br label %145

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %103
  %136 = load i32, i32* @MCT_CTRL3_S1_AUTO_EN, align 4
  %137 = load i32, i32* @MCT_CTRL3_S2_AUTO_EN, align 4
  %138 = or i32 %136, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %11, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %11, align 4
  %142 = load i32, i32* @MENELAUS_MCT_CTRL3, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i32 @menelaus_write_reg(i32 %142, i32 %143)
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %135, %133, %86, %80, %35
  %146 = load %struct.TYPE_2__*, %struct.TYPE_2__** @the_menelaus, align 8
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = call i32 @mutex_unlock(i32* %147)
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %145, %24, %18
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @menelaus_read_reg(i32) #1

declare dso_local i32 @menelaus_write_reg(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

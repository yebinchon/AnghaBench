; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@MMC_CAP_ERASE = common dso_local global i32 0, align 4
@CCC_ERASE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@SD_ERASE_ARG = common dso_local global i32 0, align 4
@SD_DISCARD_ARG = common dso_local global i32 0, align 4
@MMC_SECURE_ARGS = common dso_local global i32 0, align 4
@EXT_CSD_SEC_ER_EN = common dso_local global i32 0, align 4
@MMC_TRIM_ARGS = common dso_local global i32 0, align 4
@EXT_CSD_SEC_GB_CL_EN = common dso_local global i32 0, align 4
@MMC_SECURE_ERASE_ARG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC_ERASE_ARG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_erase(%struct.mmc_card* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_card*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %8, align 4
  %15 = add i32 %13, %14
  store i32 %15, i32* %11, align 4
  %16 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MMC_CAP_ERASE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %4
  %25 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CCC_ERASE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %24, %4
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %191

35:                                               ; preds = %24
  %36 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %37 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @EOPNOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %191

43:                                               ; preds = %35
  %44 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %45 = call i64 @mmc_card_sd(%struct.mmc_card* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @SD_ERASE_ARG, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @SD_DISCARD_ARG, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EOPNOTSUPP, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %191

58:                                               ; preds = %51, %47, %43
  %59 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %60 = call i64 @mmc_card_mmc(%struct.mmc_card* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %58
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @MMC_SECURE_ARGS, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %62
  %68 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %69 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @EXT_CSD_SEC_ER_EN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %67
  %76 = load i32, i32* @EOPNOTSUPP, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %5, align 4
  br label %191

78:                                               ; preds = %67, %62, %58
  %79 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %80 = call i64 @mmc_card_mmc(%struct.mmc_card* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @MMC_TRIM_ARGS, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %89 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @EXT_CSD_SEC_GB_CL_EN, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %87
  %96 = load i32, i32* @EOPNOTSUPP, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %5, align 4
  br label %191

98:                                               ; preds = %87, %82, %78
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @MMC_SECURE_ERASE_ARG, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %98
  %103 = load i32, i32* %7, align 4
  %104 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %105 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = urem i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %112 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = urem i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %109, %102
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %5, align 4
  br label %191

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %98
  %121 = load i32, i32* %9, align 4
  %122 = load i32, i32* @MMC_ERASE_ARG, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @mmc_align_erase_size(%struct.mmc_card* %125, i32* %7, i32* %11, i32 %126)
  store i32 %127, i32* %8, align 4
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i32, i32* %8, align 4
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %128
  store i32 0, i32* %5, align 4
  br label %191

132:                                              ; preds = %128
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* %7, align 4
  %135 = icmp ule i32 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %132
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %5, align 4
  br label %191

139:                                              ; preds = %132
  %140 = load i32, i32* %11, align 4
  %141 = sub i32 %140, 1
  store i32 %141, i32* %11, align 4
  %142 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %143 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %147 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = urem i32 %145, %148
  %150 = sub i32 %144, %149
  store i32 %150, i32* %10, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* @MMC_TRIM_ARGS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %185

155:                                              ; preds = %139
  %156 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %157 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %10, align 4
  %163 = icmp ugt i32 %161, %162
  br i1 %163, label %164, label %185

164:                                              ; preds = %160
  %165 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* %10, align 4
  %169 = add i32 %167, %168
  %170 = sub i32 %169, 1
  %171 = load i32, i32* %9, align 4
  %172 = call i32 @mmc_do_erase(%struct.mmc_card* %165, i32 %166, i32 %170, i32 %171)
  store i32 %172, i32* %12, align 4
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* %7, align 4
  %175 = add i32 %174, %173
  store i32 %175, i32* %7, align 4
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %164
  %179 = load i32, i32* %11, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ule i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178, %164
  %183 = load i32, i32* %12, align 4
  store i32 %183, i32* %5, align 4
  br label %191

184:                                              ; preds = %178
  br label %185

185:                                              ; preds = %184, %160, %155, %139
  %186 = load %struct.mmc_card*, %struct.mmc_card** %6, align 8
  %187 = load i32, i32* %7, align 4
  %188 = load i32, i32* %11, align 4
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @mmc_do_erase(%struct.mmc_card* %186, i32 %187, i32 %188, i32 %189)
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %185, %182, %136, %131, %116, %95, %75, %55, %40, %32
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i64 @mmc_card_mmc(%struct.mmc_card*) #1

declare dso_local i32 @mmc_align_erase_size(%struct.mmc_card*, i32*, i32*, i32) #1

declare dso_local i32 @mmc_do_erase(%struct.mmc_card*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

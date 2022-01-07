; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_do_calc_max_discard.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_do_calc_max_discard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32, i32, i32, %struct.mmc_host* }
%struct.mmc_host = type { i32 }

@MMC_ERASE_TIMEOUT_MS = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_card*, i32)* @mmc_do_calc_max_discard to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_do_calc_max_discard(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_host*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %16, i32 0, i32 4
  %18 = load %struct.mmc_host*, %struct.mmc_host** %17, align 8
  store %struct.mmc_host* %18, %struct.mmc_host** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %19 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.mmc_host*, %struct.mmc_host** %6, align 8
  %25 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  br label %29

27:                                               ; preds = %2
  %28 = load i32, i32* @MMC_ERASE_TIMEOUT_MS, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi i32 [ %26, %23 ], [ %28, %27 ]
  store i32 %30, i32* %15, align 4
  %31 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %32 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load i32, i32* @UINT_MAX, align 4
  %37 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = lshr i32 %36, %39
  store i32 %40, i32* %11, align 4
  %41 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = lshr i32 %43, %46
  store i32 %47, i32* %12, align 4
  br label %71

48:                                               ; preds = %29
  %49 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %50 = call i64 @mmc_card_sd(%struct.mmc_card* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load i32, i32* @UINT_MAX, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %12, align 4
  br label %70

57:                                               ; preds = %48
  %58 = load i32, i32* @UINT_MAX, align 4
  %59 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %60 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = udiv i32 %58, %61
  store i32 %62, i32* %11, align 4
  %63 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %64 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %67 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = udiv i32 %65, %68
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %57, %52
  br label %71

71:                                               ; preds = %70, %35
  br label %72

72:                                               ; preds = %120, %71
  store i32 0, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %73

73:                                               ; preds = %113, %72
  %74 = load i32, i32* %8, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ule i32 %77, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %8, align 4
  %83 = sub i32 %81, %82
  %84 = load i32, i32* %10, align 4
  %85 = icmp uge i32 %83, %84
  br label %86

86:                                               ; preds = %80, %76, %73
  %87 = phi i1 [ false, %76 ], [ false, %73 ], [ %85, %80 ]
  br i1 %87, label %88, label %116

88:                                               ; preds = %86
  %89 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %91, %92
  %94 = call i32 @mmc_erase_timeout(%struct.mmc_card* %89, i32 %90, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %8, align 4
  %97 = add i32 %95, %96
  %98 = load i32, i32* %12, align 4
  %99 = icmp ugt i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %88
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %116

105:                                              ; preds = %100, %88
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %105
  br label %116

110:                                              ; preds = %105
  %111 = load i32, i32* %13, align 4
  store i32 %111, i32* %14, align 4
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %8, align 4
  %115 = shl i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %73

116:                                              ; preds = %109, %104, %86
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %10, align 4
  %119 = add i32 %118, %117
  store i32 %119, i32* %10, align 4
  br label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %9, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %72, label %123

123:                                              ; preds = %120
  %124 = load i32, i32* %10, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %123
  store i32 0, i32* %3, align 4
  br label %163

127:                                              ; preds = %123
  %128 = load i32, i32* %10, align 4
  %129 = icmp eq i32 %128, 1
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %132 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %131, i32 0, i32 3
  store i32 1, i32* %132, align 4
  br label %136

133:                                              ; preds = %127
  %134 = load i32, i32* %10, align 4
  %135 = add i32 %134, -1
  store i32 %135, i32* %10, align 4
  br label %136

136:                                              ; preds = %133, %130
  %137 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %138 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %147

141:                                              ; preds = %136
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %144 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = shl i32 %142, %145
  store i32 %146, i32* %7, align 4
  br label %161

147:                                              ; preds = %136
  %148 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %149 = call i64 @mmc_card_sd(%struct.mmc_card* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %147
  %152 = load i32, i32* %10, align 4
  %153 = add i32 %152, 1
  store i32 %153, i32* %7, align 4
  br label %160

154:                                              ; preds = %147
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %157 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = mul i32 %155, %158
  store i32 %159, i32* %7, align 4
  br label %160

160:                                              ; preds = %154, %151
  br label %161

161:                                              ; preds = %160, %141
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %161, %126
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i64 @mmc_card_sd(%struct.mmc_card*) #1

declare dso_local i32 @mmc_erase_timeout(%struct.mmc_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

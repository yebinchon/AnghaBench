; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_ffdc_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_utils.c_genwqe_read_ffdc_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genwqe_dev = type { i32 }
%struct.genwqe_reg = type { i32, i32 }

@IO_SLC_CFGREG_GFIR = common dso_local global i32 0, align 4
@IO_SLU_UNITCFG = common dso_local global i32 0, align 4
@IO_APP_UNITCFG = common dso_local global i32 0, align 4
@GENWQE_MAX_UNITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genwqe_read_ffdc_regs(%struct.genwqe_dev* %0, %struct.genwqe_reg* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.genwqe_dev*, align 8
  %6 = alloca %struct.genwqe_reg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store %struct.genwqe_dev* %0, %struct.genwqe_dev** %5, align 8
  store %struct.genwqe_reg* %1, %struct.genwqe_reg** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %24 = load i32, i32* @IO_SLC_CFGREG_GFIR, align 4
  %25 = call i64 @__genwqe_readq(%struct.genwqe_dev* %23, i32 %24)
  store i64 %25, i64* %16, align 8
  %26 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %27 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @IO_SLC_CFGREG_GFIR, align 4
  %30 = load i64, i64* %16, align 8
  %31 = call i32 @set_reg(%struct.genwqe_dev* %26, %struct.genwqe_reg* %27, i32* %11, i32 %28, i32 %29, i64 %30)
  %32 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %33 = load i32, i32* @IO_SLU_UNITCFG, align 4
  %34 = call i64 @__genwqe_readq(%struct.genwqe_dev* %32, i32 %33)
  store i64 %34, i64* %17, align 8
  %35 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %36 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IO_SLU_UNITCFG, align 4
  %39 = load i64, i64* %17, align 8
  %40 = call i32 @set_reg(%struct.genwqe_dev* %35, %struct.genwqe_reg* %36, i32* %11, i32 %37, i32 %38, i64 %39)
  %41 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %42 = load i32, i32* @IO_APP_UNITCFG, align 4
  %43 = call i64 @__genwqe_readq(%struct.genwqe_dev* %41, i32 %42)
  store i64 %43, i64* %18, align 8
  %44 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %45 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IO_APP_UNITCFG, align 4
  %48 = load i64, i64* %18, align 8
  %49 = call i32 @set_reg(%struct.genwqe_dev* %44, %struct.genwqe_reg* %45, i32* %11, i32 %46, i32 %47, i64 %48)
  store i32 0, i32* %9, align 4
  br label %50

50:                                               ; preds = %128, %4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @GENWQE_MAX_UNITS, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %131

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %55, 24
  %57 = or i32 %56, 8
  store i32 %57, i32* %12, align 4
  %58 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %59 = load i32, i32* %12, align 4
  %60 = call i64 @__genwqe_readq(%struct.genwqe_dev* %58, i32 %59)
  store i64 %60, i64* %19, align 8
  %61 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %62 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i64, i64* %19, align 8
  %66 = call i32 @set_reg(%struct.genwqe_dev* %61, %struct.genwqe_reg* %62, i32* %11, i32 %63, i32 %64, i64 %65)
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 24
  %69 = or i32 %68, 24
  store i32 %69, i32* %13, align 4
  %70 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i64 @__genwqe_readq(%struct.genwqe_dev* %70, i32 %71)
  store i64 %72, i64* %20, align 8
  %73 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %74 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %20, align 8
  %78 = call i32 @set_reg(%struct.genwqe_dev* %73, %struct.genwqe_reg* %74, i32* %11, i32 %75, i32 %76, i64 %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %124, %54
  %80 = load i32, i32* %10, align 4
  %81 = icmp ult i32 %80, 64
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* %19, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = shl i64 1, %88
  %90 = and i64 %86, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %85
  br label %124

93:                                               ; preds = %85, %82
  %94 = load i32, i32* %9, align 4
  %95 = shl i32 %94, 24
  %96 = load i32, i32* %10, align 4
  %97 = mul i32 8, %96
  %98 = add i32 256, %97
  %99 = or i32 %95, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @__genwqe_readq(%struct.genwqe_dev* %100, i32 %101)
  store i64 %102, i64* %21, align 8
  %103 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %104 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %14, align 4
  %107 = load i64, i64* %21, align 8
  %108 = call i32 @set_reg(%struct.genwqe_dev* %103, %struct.genwqe_reg* %104, i32* %11, i32 %105, i32 %106, i64 %107)
  %109 = load i32, i32* %9, align 4
  %110 = shl i32 %109, 24
  %111 = load i32, i32* %10, align 4
  %112 = mul i32 8, %111
  %113 = add i32 768, %112
  %114 = or i32 %110, %113
  store i32 %114, i32* %15, align 4
  %115 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i64 @__genwqe_readq(%struct.genwqe_dev* %115, i32 %116)
  store i64 %117, i64* %22, align 8
  %118 = load %struct.genwqe_dev*, %struct.genwqe_dev** %5, align 8
  %119 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %15, align 4
  %122 = load i64, i64* %22, align 8
  %123 = call i32 @set_reg(%struct.genwqe_dev* %118, %struct.genwqe_reg* %119, i32* %11, i32 %120, i32 %121, i64 %122)
  br label %124

124:                                              ; preds = %93, %92
  %125 = load i32, i32* %10, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %10, align 4
  br label %79

127:                                              ; preds = %79
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %9, align 4
  %130 = add i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %50

131:                                              ; preds = %50
  %132 = load i32, i32* %11, align 4
  store i32 %132, i32* %9, align 4
  br label %133

133:                                              ; preds = %148, %131
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %7, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %133
  %138 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %139 = load i32, i32* %9, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %138, i64 %140
  %142 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %141, i32 0, i32 0
  store i32 -1, i32* %142, align 4
  %143 = load %struct.genwqe_reg*, %struct.genwqe_reg** %6, align 8
  %144 = load i32, i32* %9, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %143, i64 %145
  %147 = getelementptr inbounds %struct.genwqe_reg, %struct.genwqe_reg* %146, i32 0, i32 1
  store i32 -1, i32* %147, align 4
  br label %148

148:                                              ; preds = %137
  %149 = load i32, i32* %9, align 4
  %150 = add i32 %149, 1
  store i32 %150, i32* %9, align 4
  br label %133

151:                                              ; preds = %133
  %152 = load i32, i32* %11, align 4
  ret i32 %152
}

declare dso_local i64 @__genwqe_readq(%struct.genwqe_dev*, i32) #1

declare dso_local i32 @set_reg(%struct.genwqe_dev*, %struct.genwqe_reg*, i32*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_set_symbolrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_tda10021.c_tda10021_set_symbolrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tda10021_state = type { i32 }

@XIN = common dso_local global i32 0, align 4
@FIN = common dso_local global i32 0, align 4
@tda10021_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tda10021_state*, i32)* @tda10021_set_symbolrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10021_set_symbolrate(%struct.tda10021_state* %0, i32 %1) #0 {
  %3 = alloca %struct.tda10021_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.tda10021_state* %0, %struct.tda10021_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @XIN, align 4
  %13 = sdiv i32 %12, 2
  %14 = icmp sgt i32 %11, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @XIN, align 4
  %17 = sdiv i32 %16, 2
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %2
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 500000
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  store i32 500000, i32* %4, align 4
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @XIN, align 4
  %25 = sdiv i32 %24, 16
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %27, %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @XIN, align 4
  %31 = sdiv i32 %30, 32
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 2, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @XIN, align 4
  %37 = sdiv i32 %36, 64
  %38 = icmp slt i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 3, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %34
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @XIN, align 4
  %43 = sitofp i32 %42 to double
  %44 = fdiv double %43, 1.230000e+01
  %45 = fptosi double %44 to i32
  %46 = icmp slt i32 %41, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @XIN, align 4
  %51 = sdiv i32 %50, 16
  %52 = icmp slt i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @XIN, align 4
  %57 = sitofp i32 %56 to double
  %58 = fdiv double %57, 2.460000e+01
  %59 = fptosi double %58 to i32
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 1, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %54
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @XIN, align 4
  %65 = sdiv i32 %64, 32
  %66 = icmp slt i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %62
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @XIN, align 4
  %71 = sitofp i32 %70 to double
  %72 = fdiv double %71, 4.920000e+01
  %73 = fptosi double %72 to i32
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @XIN, align 4
  %79 = sdiv i32 %78, 64
  %80 = icmp slt i32 %77, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %81, %76
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @XIN, align 4
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %85, 9.840000e+01
  %87 = fptosi double %86 to i32
  %88 = icmp slt i32 %83, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %82
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %4, align 4
  %93 = shl i32 %92, %91
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* %4, align 4
  %95 = shl i32 %94, 4
  %96 = load i32, i32* @FIN, align 4
  %97 = sdiv i32 %95, %96
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %4, align 4
  %99 = shl i32 %98, 4
  %100 = load i32, i32* @FIN, align 4
  %101 = srem i32 %99, %100
  %102 = shl i32 %101, 8
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %10, align 4
  %104 = shl i32 %103, 8
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @FIN, align 4
  %107 = sdiv i32 %105, %106
  %108 = add nsw i32 %104, %107
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @FIN, align 4
  %111 = srem i32 %109, %110
  %112 = shl i32 %111, 8
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = shl i32 %113, 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @FIN, align 4
  %117 = call i32 @DIV_ROUND_CLOSEST(i32 %115, i32 %116)
  %118 = add nsw i32 %114, %117
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %5, align 4
  %120 = load i32, i32* @XIN, align 4
  %121 = shl i32 %120, 5
  %122 = load i32, i32* %4, align 4
  %123 = sdiv i32 %121, %122
  %124 = add nsw i32 %123, 1
  %125 = sdiv i32 %124, 2
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp sgt i32 %126, 255
  br i1 %127, label %128, label %129

128:                                              ; preds = %90
  store i32 255, i32* %6, align 4
  br label %129

129:                                              ; preds = %128, %90
  %130 = load i32, i32* %7, align 4
  %131 = shl i32 %130, 4
  %132 = load i32*, i32** @tda10021_inittab, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 14
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %131, %134
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %8, align 4
  %137 = shl i32 %136, 6
  %138 = load i32*, i32** @tda10021_inittab, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 3
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %137, %140
  store i32 %141, i32* %8, align 4
  %142 = load %struct.tda10021_state*, %struct.tda10021_state** %3, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @_tda10021_writereg(%struct.tda10021_state* %142, i32 3, i32 %143)
  %145 = load %struct.tda10021_state*, %struct.tda10021_state** %3, align 8
  %146 = load i32, i32* %5, align 4
  %147 = and i32 %146, 255
  %148 = call i32 @_tda10021_writereg(%struct.tda10021_state* %145, i32 10, i32 %147)
  %149 = load %struct.tda10021_state*, %struct.tda10021_state** %3, align 8
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 8
  %152 = and i32 %151, 255
  %153 = call i32 @_tda10021_writereg(%struct.tda10021_state* %149, i32 11, i32 %152)
  %154 = load %struct.tda10021_state*, %struct.tda10021_state** %3, align 8
  %155 = load i32, i32* %5, align 4
  %156 = ashr i32 %155, 16
  %157 = and i32 %156, 63
  %158 = call i32 @_tda10021_writereg(%struct.tda10021_state* %154, i32 12, i32 %157)
  %159 = load %struct.tda10021_state*, %struct.tda10021_state** %3, align 8
  %160 = load i32, i32* %6, align 4
  %161 = call i32 @_tda10021_writereg(%struct.tda10021_state* %159, i32 13, i32 %160)
  %162 = load %struct.tda10021_state*, %struct.tda10021_state** %3, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @_tda10021_writereg(%struct.tda10021_state* %162, i32 14, i32 %163)
  ret i32 0
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @_tda10021_writereg(%struct.tda10021_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

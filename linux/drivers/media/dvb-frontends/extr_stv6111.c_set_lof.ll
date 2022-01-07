; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_set_lof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_set_lof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stv*, i32, i32)* @set_lof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_lof(%struct.stv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = add nsw i32 %16, 999999
  %18 = sdiv i32 %17, 1000000
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %19, 500
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %8, align 4
  store i32 1, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 6, i32* %7, align 4
  br label %25

25:                                               ; preds = %24, %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp sgt i32 %26, 50
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  store i32 50, i32* %7, align 4
  br label %29

29:                                               ; preds = %28, %25
  %30 = load i32, i32* %8, align 4
  %31 = icmp sle i32 %30, 1300000
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 4, i32* %9, align 4
  store i32 1, i32* %10, align 4
  br label %34

33:                                               ; preds = %29
  store i32 2, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.stv*, %struct.stv** %4, align 8
  %40 = getelementptr inbounds %struct.stv, %struct.stv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 %38, %41
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.stv*, %struct.stv** %4, align 8
  %45 = getelementptr inbounds %struct.stv, %struct.stv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = srem i32 %43, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = load %struct.stv*, %struct.stv** %4, align 8
  %50 = getelementptr inbounds %struct.stv, %struct.stv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @muldiv32(i32 %48, i32 262144, i32 %51)
  store i32 %52, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 2700000
  br i1 %54, label %55, label %56

55:                                               ; preds = %34
  store i32 0, i32* %14, align 4
  br label %82

56:                                               ; preds = %34
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 2950000
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 1, i32* %14, align 4
  br label %81

60:                                               ; preds = %56
  %61 = load i32, i32* %11, align 4
  %62 = icmp slt i32 %61, 3300000
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i32 2, i32* %14, align 4
  br label %80

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 3700000
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 3, i32* %14, align 4
  br label %79

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 4200000
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 5, i32* %14, align 4
  br label %78

72:                                               ; preds = %68
  %73 = load i32, i32* %11, align 4
  %74 = icmp slt i32 %73, 4800000
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 6, i32* %14, align 4
  br label %77

76:                                               ; preds = %72
  store i32 7, i32* %14, align 4
  br label %77

77:                                               ; preds = %76, %75
  br label %78

78:                                               ; preds = %77, %71
  br label %79

79:                                               ; preds = %78, %67
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %59
  br label %82

82:                                               ; preds = %81, %55
  %83 = load %struct.stv*, %struct.stv** %4, align 8
  %84 = getelementptr inbounds %struct.stv, %struct.stv* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 2
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 128
  store i32 %88, i32* %86, align 4
  %89 = load %struct.stv*, %struct.stv** %4, align 8
  %90 = getelementptr inbounds %struct.stv, %struct.stv* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -129
  %95 = load i32, i32* %10, align 4
  %96 = shl i32 %95, 7
  %97 = or i32 %94, %96
  %98 = load %struct.stv*, %struct.stv** %4, align 8
  %99 = getelementptr inbounds %struct.stv, %struct.stv* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 3
  store i32 %97, i32* %101, align 4
  %102 = load i32, i32* %12, align 4
  %103 = and i32 %102, 255
  %104 = load %struct.stv*, %struct.stv** %4, align 8
  %105 = getelementptr inbounds %struct.stv, %struct.stv* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  store i32 %103, i32* %107, align 4
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, 8
  %110 = and i32 %109, 1
  %111 = load i32, i32* %13, align 4
  %112 = and i32 %111, 127
  %113 = shl i32 %112, 1
  %114 = or i32 %110, %113
  %115 = and i32 %114, 255
  %116 = load %struct.stv*, %struct.stv** %4, align 8
  %117 = getelementptr inbounds %struct.stv, %struct.stv* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 5
  store i32 %115, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = ashr i32 %120, 7
  %122 = and i32 %121, 255
  %123 = load %struct.stv*, %struct.stv** %4, align 8
  %124 = getelementptr inbounds %struct.stv, %struct.stv* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 6
  store i32 %122, i32* %126, align 4
  %127 = load %struct.stv*, %struct.stv** %4, align 8
  %128 = getelementptr inbounds %struct.stv, %struct.stv* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, -8
  %133 = load i32, i32* %13, align 4
  %134 = ashr i32 %133, 15
  %135 = and i32 %134, 7
  %136 = or i32 %132, %135
  %137 = load %struct.stv*, %struct.stv** %4, align 8
  %138 = getelementptr inbounds %struct.stv, %struct.stv* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 7
  store i32 %136, i32* %140, align 4
  %141 = load %struct.stv*, %struct.stv** %4, align 8
  %142 = getelementptr inbounds %struct.stv, %struct.stv* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, -225
  %147 = load i32, i32* %14, align 4
  %148 = shl i32 %147, 5
  %149 = or i32 %146, %148
  %150 = load %struct.stv*, %struct.stv** %4, align 8
  %151 = getelementptr inbounds %struct.stv, %struct.stv* %150, i32 0, i32 1
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 7
  store i32 %149, i32* %153, align 4
  %154 = load %struct.stv*, %struct.stv** %4, align 8
  %155 = getelementptr inbounds %struct.stv, %struct.stv* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 8
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, -253
  %160 = load i32, i32* %7, align 4
  %161 = sub nsw i32 %160, 6
  %162 = shl i32 %161, 2
  %163 = or i32 %159, %162
  %164 = load %struct.stv*, %struct.stv** %4, align 8
  %165 = getelementptr inbounds %struct.stv, %struct.stv* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 8
  store i32 %163, i32* %167, align 4
  %168 = load %struct.stv*, %struct.stv** %4, align 8
  %169 = getelementptr inbounds %struct.stv, %struct.stv* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 9
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, -13
  %174 = or i32 %173, 12
  %175 = load %struct.stv*, %struct.stv** %4, align 8
  %176 = getelementptr inbounds %struct.stv, %struct.stv* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 9
  store i32 %174, i32* %178, align 4
  %179 = load %struct.stv*, %struct.stv** %4, align 8
  %180 = call i32 @write_regs(%struct.stv* %179, i32 2, i32 8)
  %181 = load %struct.stv*, %struct.stv** %4, align 8
  %182 = call i32 @wait_for_call_done(%struct.stv* %181, i32 12)
  %183 = call i32 @usleep_range(i32 10000, i32 12000)
  %184 = load %struct.stv*, %struct.stv** %4, align 8
  %185 = call i32 @read_reg(%struct.stv* %184, i32 3, i32* %15)
  %186 = load i32, i32* %15, align 4
  %187 = and i32 %186, 16
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %82
  %190 = load %struct.stv*, %struct.stv** %4, align 8
  %191 = getelementptr inbounds %struct.stv, %struct.stv* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 2
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, -129
  store i32 %195, i32* %193, align 4
  %196 = load %struct.stv*, %struct.stv** %4, align 8
  %197 = call i32 @write_regs(%struct.stv* %196, i32 2, i32 1)
  br label %198

198:                                              ; preds = %189, %82
  %199 = load %struct.stv*, %struct.stv** %4, align 8
  %200 = call i32 @read_reg(%struct.stv* %199, i32 8, i32* %15)
  %201 = load i32, i32* %8, align 4
  %202 = load %struct.stv*, %struct.stv** %4, align 8
  %203 = getelementptr inbounds %struct.stv, %struct.stv* %202, i32 0, i32 2
  store i32 %201, i32* %203, align 8
  ret i32 0
}

declare dso_local i32 @muldiv32(i32, i32, i32) #1

declare dso_local i32 @write_regs(%struct.stv*, i32, i32) #1

declare dso_local i32 @wait_for_call_done(%struct.stv*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @read_reg(%struct.stv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

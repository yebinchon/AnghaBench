; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/dvb-frontends/extr_stv6111.c_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stv = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stv*)* @init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_state(%struct.stv* %0) #0 {
  %2 = alloca %struct.stv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.stv* %0, %struct.stv** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 2, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  store i32 -1, i32* %7, align 4
  %8 = load %struct.stv*, %struct.stv** %2, align 8
  %9 = getelementptr inbounds %struct.stv, %struct.stv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  store i32 8, i32* %11, align 4
  %12 = load %struct.stv*, %struct.stv** %2, align 8
  %13 = getelementptr inbounds %struct.stv, %struct.stv* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 65, i32* %15, align 4
  %16 = load %struct.stv*, %struct.stv** %2, align 8
  %17 = getelementptr inbounds %struct.stv, %struct.stv* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  store i32 143, i32* %19, align 4
  %20 = load %struct.stv*, %struct.stv** %2, align 8
  %21 = getelementptr inbounds %struct.stv, %struct.stv* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 3
  store i32 0, i32* %23, align 4
  %24 = load %struct.stv*, %struct.stv** %2, align 8
  %25 = getelementptr inbounds %struct.stv, %struct.stv* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 4
  store i32 206, i32* %27, align 4
  %28 = load %struct.stv*, %struct.stv** %2, align 8
  %29 = getelementptr inbounds %struct.stv, %struct.stv* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 5
  store i32 84, i32* %31, align 4
  %32 = load %struct.stv*, %struct.stv** %2, align 8
  %33 = getelementptr inbounds %struct.stv, %struct.stv* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  store i32 85, i32* %35, align 4
  %36 = load %struct.stv*, %struct.stv** %2, align 8
  %37 = getelementptr inbounds %struct.stv, %struct.stv* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 7
  store i32 69, i32* %39, align 4
  %40 = load %struct.stv*, %struct.stv** %2, align 8
  %41 = getelementptr inbounds %struct.stv, %struct.stv* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 8
  store i32 70, i32* %43, align 4
  %44 = load %struct.stv*, %struct.stv** %2, align 8
  %45 = getelementptr inbounds %struct.stv, %struct.stv* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 9
  store i32 189, i32* %47, align 4
  %48 = load %struct.stv*, %struct.stv** %2, align 8
  %49 = getelementptr inbounds %struct.stv, %struct.stv* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 10
  store i32 17, i32* %51, align 4
  %52 = load %struct.stv*, %struct.stv** %2, align 8
  %53 = getelementptr inbounds %struct.stv, %struct.stv* %52, i32 0, i32 1
  store i32 16000, i32* %53, align 8
  %54 = load i32, i32* %3, align 4
  %55 = icmp sle i32 %54, 3
  br i1 %55, label %56, label %65

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 3
  %59 = load %struct.stv*, %struct.stv** %2, align 8
  %60 = getelementptr inbounds %struct.stv, %struct.stv* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %58
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %56, %1
  %66 = load i32, i32* %4, align 4
  %67 = icmp sle i32 %66, 3
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = shl i32 %69, 5
  %71 = load %struct.stv*, %struct.stv** %2, align 8
  %72 = getelementptr inbounds %struct.stv, %struct.stv* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 3
  %75 = load i32, i32* %74, align 4
  %76 = or i32 %75, %70
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %86

79:                                               ; preds = %68
  %80 = load %struct.stv*, %struct.stv** %2, align 8
  %81 = getelementptr inbounds %struct.stv, %struct.stv* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, 48
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %68
  br label %87

87:                                               ; preds = %86, %65
  %88 = load i32, i32* %7, align 4
  %89 = icmp sle i32 %88, 3
  br i1 %89, label %90, label %104

90:                                               ; preds = %87
  %91 = load %struct.stv*, %struct.stv** %2, align 8
  %92 = getelementptr inbounds %struct.stv, %struct.stv* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -49
  %97 = load i32, i32* %7, align 4
  %98 = shl i32 %97, 4
  %99 = or i32 %96, %98
  %100 = load %struct.stv*, %struct.stv** %2, align 8
  %101 = getelementptr inbounds %struct.stv, %struct.stv* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %90, %87
  %105 = load i32, i32* %5, align 4
  %106 = icmp sle i32 %105, 7
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.stv*, %struct.stv** %2, align 8
  %110 = getelementptr inbounds %struct.stv, %struct.stv* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 3
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %108
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %107, %104
  %116 = load i32, i32* %6, align 4
  %117 = icmp sle i32 %116, 31
  br i1 %117, label %118, label %132

118:                                              ; preds = %115
  %119 = load %struct.stv*, %struct.stv** %2, align 8
  %120 = getelementptr inbounds %struct.stv, %struct.stv* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, -32
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %124, %125
  %127 = or i32 %126, 64
  %128 = load %struct.stv*, %struct.stv** %2, align 8
  %129 = getelementptr inbounds %struct.stv, %struct.stv* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 2
  store i32 %127, i32* %131, align 4
  br label %132

132:                                              ; preds = %118, %115
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}

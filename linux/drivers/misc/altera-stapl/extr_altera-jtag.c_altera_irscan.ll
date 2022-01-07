; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_irscan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_irscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i32, i32, i32, i32, i32, i32*, i32, i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_irscan(%struct.altera_state* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.altera_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.altera_jtag*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.altera_state* %0, %struct.altera_state** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.altera_state*, %struct.altera_state** %5, align 8
  %16 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %15, i32 0, i32 0
  store %struct.altera_jtag* %16, %struct.altera_jtag** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %17 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %18 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %23 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 136, i32* %14, align 4
  %26 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %27 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %32 [
    i32 136, label %29
    i32 128, label %29
    i32 137, label %29
    i32 140, label %30
    i32 144, label %30
    i32 139, label %30
    i32 143, label %30
    i32 141, label %30
    i32 142, label %30
    i32 138, label %30
    i32 131, label %31
    i32 135, label %31
    i32 130, label %31
    i32 134, label %31
    i32 132, label %31
    i32 133, label %31
    i32 129, label %31
  ]

29:                                               ; preds = %4, %4, %4
  store i32 0, i32* %10, align 4
  store i32 137, i32* %14, align 4
  br label %35

30:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  store i32 1, i32* %10, align 4
  store i32 141, i32* %14, align 4
  br label %35

31:                                               ; preds = %4, %4, %4, %4, %4, %4, %4
  store i32 2, i32* %10, align 4
  store i32 132, i32* %14, align 4
  br label %35

32:                                               ; preds = %4
  %33 = load i32, i32* @EREMOTEIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %31, %30, %29
  %36 = load i32, i32* %13, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %40 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load %struct.altera_state*, %struct.altera_state** %5, align 8
  %46 = load i32, i32* %14, align 4
  %47 = call i32 @altera_goto_jstate(%struct.altera_state* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  br label %48

48:                                               ; preds = %44, %38
  br label %49

49:                                               ; preds = %48, %35
  %50 = load i32, i32* %13, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %85

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %55 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, 7
  %61 = ashr i32 %60, 3
  store i32 %61, i32* %11, align 4
  %62 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %63 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %62, i32 0, i32 5
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @alt_malloc(i32 %66)
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %70 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  %71 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %72 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %71, i32 0, i32 5
  %73 = load i32*, i32** %72, align 8
  %74 = icmp eq i32* %73, null
  br i1 %74, label %75, label %78

75:                                               ; preds = %58
  %76 = load i32, i32* @ENOMEM, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %13, align 4
  br label %83

78:                                               ; preds = %58
  %79 = load i32, i32* %11, align 4
  %80 = mul nsw i32 %79, 8
  %81 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %82 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83, %52
  br label %85

85:                                               ; preds = %84, %49
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %117

88:                                               ; preds = %85
  %89 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %90 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %93 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %92, i32 0, i32 7
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %96 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %102 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %105 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @altera_concatenate_data(i32* %91, i32 %94, i32 %97, i32* %98, i32 %99, i32 %100, i32 %103, i32 %106)
  %108 = load %struct.altera_state*, %struct.altera_state** %5, align 8
  %109 = load i32, i32* %10, align 4
  %110 = load i32, i32* %12, align 4
  %111 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %112 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %111, i32 0, i32 5
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @alt_jtag_irscan(%struct.altera_state* %108, i32 %109, i32 %110, i32* %113, i32* null)
  %115 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %116 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %115, i32 0, i32 2
  store i32 132, i32* %116, align 8
  br label %117

117:                                              ; preds = %88, %85
  %118 = load i32, i32* %13, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %117
  %121 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %122 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 132
  br i1 %124, label %125, label %131

125:                                              ; preds = %120
  %126 = load %struct.altera_state*, %struct.altera_state** %5, align 8
  %127 = load %struct.altera_jtag*, %struct.altera_jtag** %9, align 8
  %128 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @altera_goto_jstate(%struct.altera_state* %126, i32 %129)
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %125, %120
  br label %132

132:                                              ; preds = %131, %117
  %133 = load i32, i32* %13, align 4
  ret i32 %133
}

declare dso_local i32 @altera_goto_jstate(%struct.altera_state*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i64 @alt_malloc(i32) #1

declare dso_local i32 @altera_concatenate_data(i32*, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @alt_jtag_irscan(%struct.altera_state*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
